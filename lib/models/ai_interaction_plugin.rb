require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiInteractionPlugin
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier of the plugin.
            @identifier
            ## 
            # The display name of the plugin.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The version of the plugin used.
            @version
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AiInteractionPlugin and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_interaction_plugin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiInteractionPlugin.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "identifier" => lambda {|n| @identifier = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                }
            end
            ## 
            ## Gets the identifier property value. The unique identifier of the plugin.
            ## @return a string
            ## 
            def identifier
                return @identifier
            end
            ## 
            ## Sets the identifier property value. The unique identifier of the plugin.
            ## @param value Value to set for the identifier property.
            ## @return a void
            ## 
            def identifier=(value)
                @identifier = value
            end
            ## 
            ## Gets the name property value. The display name of the plugin.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The display name of the plugin.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("identifier", @identifier)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("version", @version)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the version property value. The version of the plugin used.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the plugin used.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
