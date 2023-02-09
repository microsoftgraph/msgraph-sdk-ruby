require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Platform specific enrollment restrictions
        class DeviceEnrollmentPlatformRestriction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Max OS version supported
            @os_maximum_version
            ## 
            # Min OS version supported
            @os_minimum_version
            ## 
            # Block personally owned devices from enrolling
            @personal_device_enrollment_blocked
            ## 
            # Block the platform from enrolling
            @platform_blocked
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
            ## Instantiates a new deviceEnrollmentPlatformRestriction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_enrollment_platform_restriction
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceEnrollmentPlatformRestriction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                    "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                    "personalDeviceEnrollmentBlocked" => lambda {|n| @personal_device_enrollment_blocked = n.get_boolean_value() },
                    "platformBlocked" => lambda {|n| @platform_blocked = n.get_boolean_value() },
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
            ## Gets the osMaximumVersion property value. Max OS version supported
            ## @return a string
            ## 
            def os_maximum_version
                return @os_maximum_version
            end
            ## 
            ## Sets the osMaximumVersion property value. Max OS version supported
            ## @param value Value to set for the os_maximum_version property.
            ## @return a void
            ## 
            def os_maximum_version=(value)
                @os_maximum_version = value
            end
            ## 
            ## Gets the osMinimumVersion property value. Min OS version supported
            ## @return a string
            ## 
            def os_minimum_version
                return @os_minimum_version
            end
            ## 
            ## Sets the osMinimumVersion property value. Min OS version supported
            ## @param value Value to set for the os_minimum_version property.
            ## @return a void
            ## 
            def os_minimum_version=(value)
                @os_minimum_version = value
            end
            ## 
            ## Gets the personalDeviceEnrollmentBlocked property value. Block personally owned devices from enrolling
            ## @return a boolean
            ## 
            def personal_device_enrollment_blocked
                return @personal_device_enrollment_blocked
            end
            ## 
            ## Sets the personalDeviceEnrollmentBlocked property value. Block personally owned devices from enrolling
            ## @param value Value to set for the personal_device_enrollment_blocked property.
            ## @return a void
            ## 
            def personal_device_enrollment_blocked=(value)
                @personal_device_enrollment_blocked = value
            end
            ## 
            ## Gets the platformBlocked property value. Block the platform from enrolling
            ## @return a boolean
            ## 
            def platform_blocked
                return @platform_blocked
            end
            ## 
            ## Sets the platformBlocked property value. Block the platform from enrolling
            ## @param value Value to set for the platform_blocked property.
            ## @return a void
            ## 
            def platform_blocked=(value)
                @platform_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("osMaximumVersion", @os_maximum_version)
                writer.write_string_value("osMinimumVersion", @os_minimum_version)
                writer.write_boolean_value("personalDeviceEnrollmentBlocked", @personal_device_enrollment_blocked)
                writer.write_boolean_value("platformBlocked", @platform_blocked)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
