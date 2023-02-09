require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharePointIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The sign in name of the SharePoint identity.
            @login_name
            ## 
            ## Instantiates a new SharePointIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sharePointIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a share_point_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharePointIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "loginName" => lambda {|n| @login_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the loginName property value. The sign in name of the SharePoint identity.
            ## @return a string
            ## 
            def login_name
                return @login_name
            end
            ## 
            ## Sets the loginName property value. The sign in name of the SharePoint identity.
            ## @param value Value to set for the login_name property.
            ## @return a void
            ## 
            def login_name=(value)
                @login_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("loginName", @login_name)
            end
        end
    end
end
