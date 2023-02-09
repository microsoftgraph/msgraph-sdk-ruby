require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FreeBusyError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Describes the error.
            @message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The response code from querying for the availability of the user, distribution list, or resource.
            @response_code
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
            ## Instantiates a new freeBusyError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a free_busy_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FreeBusyError.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "responseCode" => lambda {|n| @response_code = n.get_string_value() },
                }
            end
            ## 
            ## Gets the message property value. Describes the error.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. Describes the error.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
            ## Gets the responseCode property value. The response code from querying for the availability of the user, distribution list, or resource.
            ## @return a string
            ## 
            def response_code
                return @response_code
            end
            ## 
            ## Sets the responseCode property value. The response code from querying for the availability of the user, distribution list, or resource.
            ## @param value Value to set for the response_code property.
            ## @return a void
            ## 
            def response_code=(value)
                @response_code = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("responseCode", @response_code)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
