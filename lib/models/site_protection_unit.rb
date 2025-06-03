require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SiteProtectionUnit < MicrosoftGraph::Models::ProtectionUnitBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier of the SharePoint site.
            @site_id
            ## 
            # Name of the SharePoint site.
            @site_name
            ## 
            # The web URL of the SharePoint site.
            @site_web_url
            ## 
            ## Instantiates a new SiteProtectionUnit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.siteProtectionUnit"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site_protection_unit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SiteProtectionUnit.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "siteId" => lambda {|n| @site_id = n.get_string_value() },
                    "siteName" => lambda {|n| @site_name = n.get_string_value() },
                    "siteWebUrl" => lambda {|n| @site_web_url = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("siteId", @site_id)
            end
            ## 
            ## Gets the siteId property value. Unique identifier of the SharePoint site.
            ## @return a string
            ## 
            def site_id
                return @site_id
            end
            ## 
            ## Sets the siteId property value. Unique identifier of the SharePoint site.
            ## @param value Value to set for the siteId property.
            ## @return a void
            ## 
            def site_id=(value)
                @site_id = value
            end
            ## 
            ## Gets the siteName property value. Name of the SharePoint site.
            ## @return a string
            ## 
            def site_name
                return @site_name
            end
            ## 
            ## Sets the siteName property value. Name of the SharePoint site.
            ## @param value Value to set for the siteName property.
            ## @return a void
            ## 
            def site_name=(value)
                @site_name = value
            end
            ## 
            ## Gets the siteWebUrl property value. The web URL of the SharePoint site.
            ## @return a string
            ## 
            def site_web_url
                return @site_web_url
            end
            ## 
            ## Sets the siteWebUrl property value. The web URL of the SharePoint site.
            ## @param value Value to set for the siteWebUrl property.
            ## @return a void
            ## 
            def site_web_url=(value)
                @site_web_url = value
            end
        end
    end
end
