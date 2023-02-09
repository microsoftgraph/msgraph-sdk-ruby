require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AgreementAcceptance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the agreement file accepted by the user.
            @agreement_file_id
            ## 
            # The identifier of the agreement.
            @agreement_id
            ## 
            # The display name of the device used for accepting the agreement.
            @device_display_name
            ## 
            # The unique identifier of the device used for accepting the agreement. Supports $filter (eq) and eq for null values.
            @device_id
            ## 
            # The operating system used to accept the agreement.
            @device_o_s_type
            ## 
            # The operating system version of the device used to accept the agreement.
            @device_o_s_version
            ## 
            # The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $filter (eq, ge, le) and eq for null values.
            @expiration_date_time
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @recorded_date_time
            ## 
            # The state of the agreement acceptance. Possible values are: accepted, declined. Supports $filter (eq).
            @state
            ## 
            # Display name of the user when the acceptance was recorded.
            @user_display_name
            ## 
            # Email of the user when the acceptance was recorded.
            @user_email
            ## 
            # The identifier of the user who accepted the agreement. Supports $filter (eq).
            @user_id
            ## 
            # UPN of the user when the acceptance was recorded.
            @user_principal_name
            ## 
            ## Gets the agreementFileId property value. The identifier of the agreement file accepted by the user.
            ## @return a string
            ## 
            def agreement_file_id
                return @agreement_file_id
            end
            ## 
            ## Sets the agreementFileId property value. The identifier of the agreement file accepted by the user.
            ## @param value Value to set for the agreement_file_id property.
            ## @return a void
            ## 
            def agreement_file_id=(value)
                @agreement_file_id = value
            end
            ## 
            ## Gets the agreementId property value. The identifier of the agreement.
            ## @return a string
            ## 
            def agreement_id
                return @agreement_id
            end
            ## 
            ## Sets the agreementId property value. The identifier of the agreement.
            ## @param value Value to set for the agreement_id property.
            ## @return a void
            ## 
            def agreement_id=(value)
                @agreement_id = value
            end
            ## 
            ## Instantiates a new agreementAcceptance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a agreement_acceptance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AgreementAcceptance.new
            end
            ## 
            ## Gets the deviceDisplayName property value. The display name of the device used for accepting the agreement.
            ## @return a string
            ## 
            def device_display_name
                return @device_display_name
            end
            ## 
            ## Sets the deviceDisplayName property value. The display name of the device used for accepting the agreement.
            ## @param value Value to set for the device_display_name property.
            ## @return a void
            ## 
            def device_display_name=(value)
                @device_display_name = value
            end
            ## 
            ## Gets the deviceId property value. The unique identifier of the device used for accepting the agreement. Supports $filter (eq) and eq for null values.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The unique identifier of the device used for accepting the agreement. Supports $filter (eq) and eq for null values.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceOSType property value. The operating system used to accept the agreement.
            ## @return a string
            ## 
            def device_o_s_type
                return @device_o_s_type
            end
            ## 
            ## Sets the deviceOSType property value. The operating system used to accept the agreement.
            ## @param value Value to set for the device_o_s_type property.
            ## @return a void
            ## 
            def device_o_s_type=(value)
                @device_o_s_type = value
            end
            ## 
            ## Gets the deviceOSVersion property value. The operating system version of the device used to accept the agreement.
            ## @return a string
            ## 
            def device_o_s_version
                return @device_o_s_version
            end
            ## 
            ## Sets the deviceOSVersion property value. The operating system version of the device used to accept the agreement.
            ## @param value Value to set for the device_o_s_version property.
            ## @return a void
            ## 
            def device_o_s_version=(value)
                @device_o_s_version = value
            end
            ## 
            ## Gets the expirationDateTime property value. The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $filter (eq, ge, le) and eq for null values.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expiration date time of the acceptance. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $filter (eq, ge, le) and eq for null values.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "agreementFileId" => lambda {|n| @agreement_file_id = n.get_string_value() },
                    "agreementId" => lambda {|n| @agreement_id = n.get_string_value() },
                    "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceOSType" => lambda {|n| @device_o_s_type = n.get_string_value() },
                    "deviceOSVersion" => lambda {|n| @device_o_s_version = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "recordedDateTime" => lambda {|n| @recorded_date_time = n.get_date_time_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AgreementAcceptanceState) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userEmail" => lambda {|n| @user_email = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the recordedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def recorded_date_time
                return @recorded_date_time
            end
            ## 
            ## Sets the recordedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the recorded_date_time property.
            ## @return a void
            ## 
            def recorded_date_time=(value)
                @recorded_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("agreementFileId", @agreement_file_id)
                writer.write_string_value("agreementId", @agreement_id)
                writer.write_string_value("deviceDisplayName", @device_display_name)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceOSType", @device_o_s_type)
                writer.write_string_value("deviceOSVersion", @device_o_s_version)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("recordedDateTime", @recorded_date_time)
                writer.write_enum_value("state", @state)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userEmail", @user_email)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the state property value. The state of the agreement acceptance. Possible values are: accepted, declined. Supports $filter (eq).
            ## @return a agreement_acceptance_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state of the agreement acceptance. Possible values are: accepted, declined. Supports $filter (eq).
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the userDisplayName property value. Display name of the user when the acceptance was recorded.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. Display name of the user when the acceptance was recorded.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userEmail property value. Email of the user when the acceptance was recorded.
            ## @return a string
            ## 
            def user_email
                return @user_email
            end
            ## 
            ## Sets the userEmail property value. Email of the user when the acceptance was recorded.
            ## @param value Value to set for the user_email property.
            ## @return a void
            ## 
            def user_email=(value)
                @user_email = value
            end
            ## 
            ## Gets the userId property value. The identifier of the user who accepted the agreement. Supports $filter (eq).
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The identifier of the user who accepted the agreement. Supports $filter (eq).
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. UPN of the user when the acceptance was recorded.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. UPN of the user when the acceptance was recorded.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
