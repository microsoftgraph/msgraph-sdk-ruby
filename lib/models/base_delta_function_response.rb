require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BaseDeltaFunctionResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataDeltaLink property
            @odata_delta_link
            ## 
            # The OdataNextLink property
            @odata_next_link
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
            ## Instantiates a new BaseDeltaFunctionResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a base_delta_function_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BaseDeltaFunctionResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.deltaLink" => lambda {|n| @odata_delta_link = n.get_string_value() },
                    "@odata.nextLink" => lambda {|n| @odata_next_link = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.deltaLink property value. The OdataDeltaLink property
            ## @return a string
            ## 
            def odata_delta_link
                return @odata_delta_link
            end
            ## 
            ## Sets the @odata.deltaLink property value. The OdataDeltaLink property
            ## @param value Value to set for the odata_delta_link property.
            ## @return a void
            ## 
            def odata_delta_link=(value)
                @odata_delta_link = value
            end
            ## 
            ## Gets the @odata.nextLink property value. The OdataNextLink property
            ## @return a string
            ## 
            def odata_next_link
                return @odata_next_link
            end
            ## 
            ## Sets the @odata.nextLink property value. The OdataNextLink property
            ## @param value Value to set for the odata_next_link property.
            ## @return a void
            ## 
            def odata_next_link=(value)
                @odata_next_link = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.deltaLink", @odata_delta_link)
                writer.write_string_value("@odata.nextLink", @odata_next_link)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
