require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProvisioningErrorInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional details in case of error.
            @additional_details
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Categorizes the error code. Possible values are failure, nonServiceFailure, success, unknownFutureValue
            @error_category
            ## 
            # Unique error code if any occurred. Learn more
            @error_code
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Summarizes the status and describes why the status happened.
            @reason
            ## 
            # Provides the resolution for the corresponding error.
            @recommended_action
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
            ## Gets the additionalDetails property value. Additional details in case of error.
            ## @return a string
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. Additional details in case of error.
            ## @param value Value to set for the additional_details property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Instantiates a new provisioningErrorInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a provisioning_error_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProvisioningErrorInfo.new
            end
            ## 
            ## Gets the errorCategory property value. Categorizes the error code. Possible values are failure, nonServiceFailure, success, unknownFutureValue
            ## @return a provisioning_status_error_category
            ## 
            def error_category
                return @error_category
            end
            ## 
            ## Sets the errorCategory property value. Categorizes the error code. Possible values are failure, nonServiceFailure, success, unknownFutureValue
            ## @param value Value to set for the error_category property.
            ## @return a void
            ## 
            def error_category=(value)
                @error_category = value
            end
            ## 
            ## Gets the errorCode property value. Unique error code if any occurred. Learn more
            ## @return a string
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. Unique error code if any occurred. Learn more
            ## @param value Value to set for the error_code property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalDetails" => lambda {|n| @additional_details = n.get_string_value() },
                    "errorCategory" => lambda {|n| @error_category = n.get_enum_value(MicrosoftGraph::Models::ProvisioningStatusErrorCategory) },
                    "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reason" => lambda {|n| @reason = n.get_string_value() },
                    "recommendedAction" => lambda {|n| @recommended_action = n.get_string_value() },
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
            ## Gets the reason property value. Summarizes the status and describes why the status happened.
            ## @return a string
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. Summarizes the status and describes why the status happened.
            ## @param value Value to set for the reason property.
            ## @return a void
            ## 
            def reason=(value)
                @reason = value
            end
            ## 
            ## Gets the recommendedAction property value. Provides the resolution for the corresponding error.
            ## @return a string
            ## 
            def recommended_action
                return @recommended_action
            end
            ## 
            ## Sets the recommendedAction property value. Provides the resolution for the corresponding error.
            ## @param value Value to set for the recommended_action property.
            ## @return a void
            ## 
            def recommended_action=(value)
                @recommended_action = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("additionalDetails", @additional_details)
                writer.write_enum_value("errorCategory", @error_category)
                writer.write_string_value("errorCode", @error_code)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("reason", @reason)
                writer.write_string_value("recommendedAction", @recommended_action)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
