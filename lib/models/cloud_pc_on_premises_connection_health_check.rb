require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcOnPremisesConnectionHealthCheck
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional details about the health check or the recommended action. For exmaple, the string value can be download.microsoft.com:443;software-download.microsoft.com:443; Read-only.
            @additional_detail
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier of the health check item-related activities. This identifier can be useful in troubleshooting.
            @correlation_id
            ## 
            # The display name for this health check item.
            @display_name
            ## 
            # The value cannot be modified and is automatically populated when the health check ends. The Timestamp type represents date and time information using ISO 8601 format and is in Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.
            @end_date_time
            ## 
            # The type of error that occurred during this health check. Possible values are: endpointConnectivityCheckCloudPcUrlNotAllowListed, endpointConnectivityCheckWVDUrlNotAllowListed, etc. (The all possible values can refer to cloudPcOnPremisesConnectionHealthCheckErrorType) Read-Only.
            @error_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recommended action to fix the corresponding error. For example, The Active Directory domain join check failed because the password of the domain join user has expired. Read-Only.
            @recommended_action
            ## 
            # The value cannot be modified and is automatically populated when the health check starts. The Timestamp type represents date and time information using ISO 8601 format and is in  Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.
            @start_date_time
            ## 
            # The status property
            @status
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
            ## Gets the additionalDetail property value. Additional details about the health check or the recommended action. For exmaple, the string value can be download.microsoft.com:443;software-download.microsoft.com:443; Read-only.
            ## @return a string
            ## 
            def additional_detail
                return @additional_detail
            end
            ## 
            ## Sets the additionalDetail property value. Additional details about the health check or the recommended action. For exmaple, the string value can be download.microsoft.com:443;software-download.microsoft.com:443; Read-only.
            ## @param value Value to set for the additionalDetail property.
            ## @return a void
            ## 
            def additional_detail=(value)
                @additional_detail = value
            end
            ## 
            ## Instantiates a new CloudPcOnPremisesConnectionHealthCheck and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the correlationId property value. The unique identifier of the health check item-related activities. This identifier can be useful in troubleshooting.
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The unique identifier of the health check item-related activities. This identifier can be useful in troubleshooting.
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_on_premises_connection_health_check
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcOnPremisesConnectionHealthCheck.new
            end
            ## 
            ## Gets the displayName property value. The display name for this health check item.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for this health check item.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDateTime property value. The value cannot be modified and is automatically populated when the health check ends. The Timestamp type represents date and time information using ISO 8601 format and is in Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The value cannot be modified and is automatically populated when the health check ends. The Timestamp type represents date and time information using ISO 8601 format and is in Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the errorType property value. The type of error that occurred during this health check. Possible values are: endpointConnectivityCheckCloudPcUrlNotAllowListed, endpointConnectivityCheckWVDUrlNotAllowListed, etc. (The all possible values can refer to cloudPcOnPremisesConnectionHealthCheckErrorType) Read-Only.
            ## @return a cloud_pc_on_premises_connection_health_check_error_type
            ## 
            def error_type
                return @error_type
            end
            ## 
            ## Sets the errorType property value. The type of error that occurred during this health check. Possible values are: endpointConnectivityCheckCloudPcUrlNotAllowListed, endpointConnectivityCheckWVDUrlNotAllowListed, etc. (The all possible values can refer to cloudPcOnPremisesConnectionHealthCheckErrorType) Read-Only.
            ## @param value Value to set for the errorType property.
            ## @return a void
            ## 
            def error_type=(value)
                @error_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalDetail" => lambda {|n| @additional_detail = n.get_string_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "errorType" => lambda {|n| @error_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcOnPremisesConnectionHealthCheckErrorType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendedAction" => lambda {|n| @recommended_action = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::CloudPcOnPremisesConnectionStatus) },
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
            ## Gets the recommendedAction property value. The recommended action to fix the corresponding error. For example, The Active Directory domain join check failed because the password of the domain join user has expired. Read-Only.
            ## @return a string
            ## 
            def recommended_action
                return @recommended_action
            end
            ## 
            ## Sets the recommendedAction property value. The recommended action to fix the corresponding error. For example, The Active Directory domain join check failed because the password of the domain join user has expired. Read-Only.
            ## @param value Value to set for the recommendedAction property.
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
                writer.write_string_value("additionalDetail", @additional_detail)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_enum_value("errorType", @error_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("recommendedAction", @recommended_action)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. The value cannot be modified and is automatically populated when the health check starts. The Timestamp type represents date and time information using ISO 8601 format and is in  Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The value cannot be modified and is automatically populated when the health check starts. The Timestamp type represents date and time information using ISO 8601 format and is in  Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a cloud_pc_on_premises_connection_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
