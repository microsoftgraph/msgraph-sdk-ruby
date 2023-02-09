require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SignInStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Provides additional details on the sign-in activity
            @additional_details
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Provides the 5-6 digit error code that's generated during a sign-in failure. Check out the list of error codes and messages.
            @error_code
            ## 
            # Provides the error message or the reason for failure for the corresponding sign-in activity. Check out the list of error codes and messages.
            @failure_reason
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the additionalDetails property value. Provides additional details on the sign-in activity
            ## @return a string
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. Provides additional details on the sign-in activity
            ## @param value Value to set for the additional_details property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Instantiates a new signInStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sign_in_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignInStatus.new
            end
            ## 
            ## Gets the errorCode property value. Provides the 5-6 digit error code that's generated during a sign-in failure. Check out the list of error codes and messages.
            ## @return a integer
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. Provides the 5-6 digit error code that's generated during a sign-in failure. Check out the list of error codes and messages.
            ## @param value Value to set for the error_code property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## Gets the failureReason property value. Provides the error message or the reason for failure for the corresponding sign-in activity. Check out the list of error codes and messages.
            ## @return a string
            ## 
            def failure_reason
                return @failure_reason
            end
            ## 
            ## Sets the failureReason property value. Provides the error message or the reason for failure for the corresponding sign-in activity. Check out the list of error codes and messages.
            ## @param value Value to set for the failure_reason property.
            ## @return a void
            ## 
            def failure_reason=(value)
                @failure_reason = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalDetails" => lambda {|n| @additional_details = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                    "failureReason" => lambda {|n| @failure_reason = n.get_string_value() },
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
                writer.write_string_value("additionalDetails", @additional_details)
                writer.write_number_value("errorCode", @error_code)
                writer.write_string_value("failureReason", @failure_reason)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
