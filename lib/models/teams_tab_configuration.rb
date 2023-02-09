require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsTabConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Url used for rendering tab contents in Teams. Required.
            @content_url
            ## 
            # Identifier for the entity hosted by the tab provider.
            @entity_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Url called by Teams client when a Tab is removed using the Teams Client.
            @remove_url
            ## 
            # Url for showing tab contents outside of Teams.
            @website_url
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new teamsTabConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentUrl property value. Url used for rendering tab contents in Teams. Required.
            ## @return a string
            ## 
            def content_url
                return @content_url
            end
            ## 
            ## Sets the contentUrl property value. Url used for rendering tab contents in Teams. Required.
            ## @param value Value to set for the content_url property.
            ## @return a void
            ## 
            def content_url=(value)
                @content_url = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_tab_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsTabConfiguration.new
            end
            ## 
            ## Gets the entityId property value. Identifier for the entity hosted by the tab provider.
            ## @return a string
            ## 
            def entity_id
                return @entity_id
            end
            ## 
            ## Sets the entityId property value. Identifier for the entity hosted by the tab provider.
            ## @param value Value to set for the entity_id property.
            ## @return a void
            ## 
            def entity_id=(value)
                @entity_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contentUrl" => lambda {|n| @content_url = n.get_string_value() },
                    "entityId" => lambda {|n| @entity_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "removeUrl" => lambda {|n| @remove_url = n.get_string_value() },
                    "websiteUrl" => lambda {|n| @website_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the removeUrl property value. Url called by Teams client when a Tab is removed using the Teams Client.
            ## @return a string
            ## 
            def remove_url
                return @remove_url
            end
            ## 
            ## Sets the removeUrl property value. Url called by Teams client when a Tab is removed using the Teams Client.
            ## @param value Value to set for the remove_url property.
            ## @return a void
            ## 
            def remove_url=(value)
                @remove_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("contentUrl", @content_url)
                writer.write_string_value("entityId", @entity_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("removeUrl", @remove_url)
                writer.write_string_value("websiteUrl", @website_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the websiteUrl property value. Url for showing tab contents outside of Teams.
            ## @return a string
            ## 
            def website_url
                return @website_url
            end
            ## 
            ## Sets the websiteUrl property value. Url for showing tab contents outside of Teams.
            ## @param value Value to set for the website_url property.
            ## @return a void
            ## 
            def website_url=(value)
                @website_url = value
            end
        end
    end
end
