require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RedirectUriSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The index property
            @index
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The uri property
            @uri
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
            ## Instantiates a new redirectUriSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a redirect_uri_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RedirectUriSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "index" => lambda {|n| @index = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "uri" => lambda {|n| @uri = n.get_string_value() },
                }
            end
            ## 
            ## Gets the index property value. The index property
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. The index property
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("index", @index)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("uri", @uri)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the uri property value. The uri property
            ## @return a string
            ## 
            def uri
                return @uri
            end
            ## 
            ## Sets the uri property value. The uri property
            ## @param value Value to set for the uri property.
            ## @return a void
            ## 
            def uri=(value)
                @uri = value
            end
        end
    end
end
