require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ClassificationInnerError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activity ID associated with the request that generated the error.
            @activity_id
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The client request ID, if provided by the caller.
            @client_request_id
            ## 
            # A more specific, potentially internal, error code string.
            @code
            ## 
            # The date and time the inner error occurred.
            @error_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the activityId property value. The activity ID associated with the request that generated the error.
            ## @return a string
            ## 
            def activity_id
                return @activity_id
            end
            ## 
            ## Sets the activityId property value. The activity ID associated with the request that generated the error.
            ## @param value Value to set for the activityId property.
            ## @return a void
            ## 
            def activity_id=(value)
                @activity_id = value
            end
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
            ## Gets the clientRequestId property value. The client request ID, if provided by the caller.
            ## @return a string
            ## 
            def client_request_id
                return @client_request_id
            end
            ## 
            ## Sets the clientRequestId property value. The client request ID, if provided by the caller.
            ## @param value Value to set for the clientRequestId property.
            ## @return a void
            ## 
            def client_request_id=(value)
                @client_request_id = value
            end
            ## 
            ## Gets the code property value. A more specific, potentially internal, error code string.
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. A more specific, potentially internal, error code string.
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new ClassificationInnerError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a classification_inner_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ClassificationInnerError.new
            end
            ## 
            ## Gets the errorDateTime property value. The date and time the inner error occurred.
            ## @return a date_time
            ## 
            def error_date_time
                return @error_date_time
            end
            ## 
            ## Sets the errorDateTime property value. The date and time the inner error occurred.
            ## @param value Value to set for the errorDateTime property.
            ## @return a void
            ## 
            def error_date_time=(value)
                @error_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "activityId" => lambda {|n| @activity_id = n.get_string_value() },
                    "clientRequestId" => lambda {|n| @client_request_id = n.get_string_value() },
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "errorDateTime" => lambda {|n| @error_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("activityId", @activity_id)
                writer.write_string_value("clientRequestId", @client_request_id)
                writer.write_string_value("code", @code)
                writer.write_date_time_value("errorDateTime", @error_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
