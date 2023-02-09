require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties for the installation state for a device.
        class DeviceInstallState < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device Id.
            @device_id
            ## 
            # Device name.
            @device_name
            ## 
            # The error code for install failures.
            @error_code
            ## 
            # Possible values for install state.
            @install_state
            ## 
            # Last sync date and time.
            @last_sync_date_time
            ## 
            # OS Description.
            @os_description
            ## 
            # OS Version.
            @os_version
            ## 
            # Device User Name.
            @user_name
            ## 
            ## Instantiates a new deviceInstallState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_install_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceInstallState.new
            end
            ## 
            ## Gets the deviceId property value. Device Id.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. Device Id.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. Device name.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Device name.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the errorCode property value. The error code for install failures.
            ## @return a string
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The error code for install failures.
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
                return super.merge({
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                    "installState" => lambda {|n| @install_state = n.get_enum_value(MicrosoftGraph::Models::InstallState) },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "osDescription" => lambda {|n| @os_description = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installState property value. Possible values for install state.
            ## @return a install_state
            ## 
            def install_state
                return @install_state
            end
            ## 
            ## Sets the installState property value. Possible values for install state.
            ## @param value Value to set for the install_state property.
            ## @return a void
            ## 
            def install_state=(value)
                @install_state = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. Last sync date and time.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. Last sync date and time.
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the osDescription property value. OS Description.
            ## @return a string
            ## 
            def os_description
                return @os_description
            end
            ## 
            ## Sets the osDescription property value. OS Description.
            ## @param value Value to set for the os_description property.
            ## @return a void
            ## 
            def os_description=(value)
                @os_description = value
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
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("errorCode", @error_code)
                writer.write_enum_value("installState", @install_state)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_string_value("osDescription", @os_description)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the userName property value. Device User Name.
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. Device User Name.
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
