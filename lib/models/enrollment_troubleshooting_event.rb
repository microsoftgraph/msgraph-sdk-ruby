require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EnrollmentTroubleshootingEvent < MicrosoftGraph::Models::DeviceManagementTroubleshootingEvent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Azure AD device identifier.
            @device_id
            ## 
            # Possible ways of adding a mobile device to management.
            @enrollment_type
            ## 
            # Top level failure categories for enrollment.
            @failure_category
            ## 
            # Detailed failure reason.
            @failure_reason
            ## 
            # Device identifier created or collected by Intune.
            @managed_device_identifier
            ## 
            # Operating System.
            @operating_system
            ## 
            # OS Version.
            @os_version
            ## 
            # Identifier for the user that tried to enroll the device.
            @user_id
            ## 
            ## Instantiates a new EnrollmentTroubleshootingEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a enrollment_troubleshooting_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnrollmentTroubleshootingEvent.new
            end
            ## 
            ## Gets the deviceId property value. Azure AD device identifier.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. Azure AD device identifier.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the enrollmentType property value. Possible ways of adding a mobile device to management.
            ## @return a device_enrollment_type
            ## 
            def enrollment_type
                return @enrollment_type
            end
            ## 
            ## Sets the enrollmentType property value. Possible ways of adding a mobile device to management.
            ## @param value Value to set for the enrollment_type property.
            ## @return a void
            ## 
            def enrollment_type=(value)
                @enrollment_type = value
            end
            ## 
            ## Gets the failureCategory property value. Top level failure categories for enrollment.
            ## @return a device_enrollment_failure_reason
            ## 
            def failure_category
                return @failure_category
            end
            ## 
            ## Sets the failureCategory property value. Top level failure categories for enrollment.
            ## @param value Value to set for the failure_category property.
            ## @return a void
            ## 
            def failure_category=(value)
                @failure_category = value
            end
            ## 
            ## Gets the failureReason property value. Detailed failure reason.
            ## @return a string
            ## 
            def failure_reason
                return @failure_reason
            end
            ## 
            ## Sets the failureReason property value. Detailed failure reason.
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
                return super.merge({
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "enrollmentType" => lambda {|n| @enrollment_type = n.get_enum_value(MicrosoftGraph::Models::DeviceEnrollmentType) },
                    "failureCategory" => lambda {|n| @failure_category = n.get_enum_value(MicrosoftGraph::Models::DeviceEnrollmentFailureReason) },
                    "failureReason" => lambda {|n| @failure_reason = n.get_string_value() },
                    "managedDeviceIdentifier" => lambda {|n| @managed_device_identifier = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedDeviceIdentifier property value. Device identifier created or collected by Intune.
            ## @return a string
            ## 
            def managed_device_identifier
                return @managed_device_identifier
            end
            ## 
            ## Sets the managedDeviceIdentifier property value. Device identifier created or collected by Intune.
            ## @param value Value to set for the managed_device_identifier property.
            ## @return a void
            ## 
            def managed_device_identifier=(value)
                @managed_device_identifier = value
            end
            ## 
            ## Gets the operatingSystem property value. Operating System.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. Operating System.
            ## @param value Value to set for the operating_system property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the osVersion property value. OS Version.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. OS Version.
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceId", @device_id)
                writer.write_enum_value("enrollmentType", @enrollment_type)
                writer.write_enum_value("failureCategory", @failure_category)
                writer.write_string_value("failureReason", @failure_reason)
                writer.write_string_value("managedDeviceIdentifier", @managed_device_identifier)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. Identifier for the user that tried to enroll the device.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. Identifier for the user that tried to enroll the device.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
