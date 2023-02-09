require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties, inherited properties and actions for an MDM mobile app configuration status for a user.
        class ManagedDeviceMobileAppConfigurationUserStatus < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Devices count for that user.
            @devices_count
            ## 
            # Last modified date time of the policy report.
            @last_reported_date_time
            ## 
            # The status property
            @status
            ## 
            # User name of the DevicePolicyStatus.
            @user_display_name
            ## 
            # UserPrincipalName.
            @user_principal_name
            ## 
            ## Instantiates a new managedDeviceMobileAppConfigurationUserStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_mobile_app_configuration_user_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceMobileAppConfigurationUserStatus.new
            end
            ## 
            ## Gets the devicesCount property value. Devices count for that user.
            ## @return a integer
            ## 
            def devices_count
                return @devices_count
            end
            ## 
            ## Sets the devicesCount property value. Devices count for that user.
            ## @param value Value to set for the devices_count property.
            ## @return a void
            ## 
            def devices_count=(value)
                @devices_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "devicesCount" => lambda {|n| @devices_count = n.get_number_value() },
                    "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ComplianceStatus) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastReportedDateTime property value. Last modified date time of the policy report.
            ## @return a date_time
            ## 
            def last_reported_date_time
                return @last_reported_date_time
            end
            ## 
            ## Sets the lastReportedDateTime property value. Last modified date time of the policy report.
            ## @param value Value to set for the last_reported_date_time property.
            ## @return a void
            ## 
            def last_reported_date_time=(value)
                @last_reported_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("devicesCount", @devices_count)
                writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a compliance_status
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
            ## 
            ## Gets the userDisplayName property value. User name of the DevicePolicyStatus.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. User name of the DevicePolicyStatus.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. UserPrincipalName.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. UserPrincipalName.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
