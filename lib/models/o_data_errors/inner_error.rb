require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './o_data_errors'

module MicrosoftGraph
    module Models
        module ODataErrors
            class InnerError
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Client request Id as sent by the client application.
                @client_request_id
                ## 
                # Date when the error occured.
                @date
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Request Id as tracked internally by the service
                @request_id
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
                ## Gets the client-request-id property value. Client request Id as sent by the client application.
                ## @return a string
                ## 
                def client_request_id
                    return @client_request_id
                end
                ## 
                ## Sets the client-request-id property value. Client request Id as sent by the client application.
                ## @param value Value to set for the client_request_id property.
                ## @return a void
                ## 
                def client_request_id=(value)
                    @client_request_id = value
                end
                ## 
                ## Instantiates a new InnerError and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a inner_error
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return InnerError.new
                end
                ## 
                ## Gets the date property value. Date when the error occured.
                ## @return a date_time
                ## 
                def date
                    return @date
                end
                ## 
                ## Sets the date property value. Date when the error occured.
                ## @param value Value to set for the Date property.
                ## @return a void
                ## 
                def date=(value)
                    @date = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "client-request-id" => lambda {|n| @client_request_id = n.get_string_value() },
                        "Date" => lambda {|n| @date = n.get_date_time_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "request-id" => lambda {|n| @request_id = n.get_string_value() },
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
                ## Gets the request-id property value. Request Id as tracked internally by the service
                ## @return a string
                ## 
                def request_id
                    return @request_id
                end
                ## 
                ## Sets the request-id property value. Request Id as tracked internally by the service
                ## @param value Value to set for the request_id property.
                ## @return a void
                ## 
                def request_id=(value)
                    @request_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("client-request-id", @client_request_id)
                    writer.write_date_time_value("Date", @date)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("request-id", @request_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
