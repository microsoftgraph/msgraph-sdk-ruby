require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharePointIdentitySet < MicrosoftGraph::Models::IdentitySet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The group associated with this action. Optional.
            @group
            ## 
            # The SharePoint group associated with this action. Optional.
            @site_group
            ## 
            # The SharePoint user associated with this action. Optional.
            @site_user
            ## 
            ## Instantiates a new SharePointIdentitySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sharePointIdentitySet"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a share_point_identity_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharePointIdentitySet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "siteGroup" => lambda {|n| @site_group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharePointIdentity.create_from_discriminator_value(pn) }) },
                    "siteUser" => lambda {|n| @site_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharePointIdentity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the group property value. The group associated with this action. Optional.
            ## @return a identity
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The group associated with this action. Optional.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("group", @group)
                writer.write_object_value("siteGroup", @site_group)
                writer.write_object_value("siteUser", @site_user)
            end
            ## 
            ## Gets the siteGroup property value. The SharePoint group associated with this action. Optional.
            ## @return a share_point_identity
            ## 
            def site_group
                return @site_group
            end
            ## 
            ## Sets the siteGroup property value. The SharePoint group associated with this action. Optional.
            ## @param value Value to set for the site_group property.
            ## @return a void
            ## 
            def site_group=(value)
                @site_group = value
            end
            ## 
            ## Gets the siteUser property value. The SharePoint user associated with this action. Optional.
            ## @return a share_point_identity
            ## 
            def site_user
                return @site_user
            end
            ## 
            ## Sets the siteUser property value. The SharePoint user associated with this action. Optional.
            ## @param value Value to set for the site_user property.
            ## @return a void
            ## 
            def site_user=(value)
                @site_user = value
            end
        end
    end
end
