require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties for the installation state summary for a user.
        class UserInstallStateSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The install state of the eBook.
            @device_states
            ## 
            # Failed Device Count.
            @failed_device_count
            ## 
            # Installed Device Count.
            @installed_device_count
            ## 
            # Not installed device count.
            @not_installed_device_count
            ## 
            # User name.
            @user_name
            ## 
            ## Instantiates a new userInstallStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_install_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserInstallStateSummary.new
            end
            ## 
            ## Gets the deviceStates property value. The install state of the eBook.
            ## @return a device_install_state
            ## 
            def device_states
                return @device_states
            end
            ## 
            ## Sets the deviceStates property value. The install state of the eBook.
            ## @param value Value to set for the device_states property.
            ## @return a void
            ## 
            def device_states=(value)
                @device_states = value
            end
            ## 
            ## Gets the failedDeviceCount property value. Failed Device Count.
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. Failed Device Count.
            ## @param value Value to set for the failed_device_count property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceStates" => lambda {|n| @device_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceInstallState.create_from_discriminator_value(pn) }) },
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                    "installedDeviceCount" => lambda {|n| @installed_device_count = n.get_number_value() },
                    "notInstalledDeviceCount" => lambda {|n| @not_installed_device_count = n.get_number_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installedDeviceCount property value. Installed Device Count.
            ## @return a integer
            ## 
            def installed_device_count
                return @installed_device_count
            end
            ## 
            ## Sets the installedDeviceCount property value. Installed Device Count.
            ## @param value Value to set for the installed_device_count property.
            ## @return a void
            ## 
            def installed_device_count=(value)
                @installed_device_count = value
            end
            ## 
            ## Gets the notInstalledDeviceCount property value. Not installed device count.
            ## @return a integer
            ## 
            def not_installed_device_count
                return @not_installed_device_count
            end
            ## 
            ## Sets the notInstalledDeviceCount property value. Not installed device count.
            ## @param value Value to set for the not_installed_device_count property.
            ## @return a void
            ## 
            def not_installed_device_count=(value)
                @not_installed_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("deviceStates", @device_states)
                writer.write_number_value("failedDeviceCount", @failed_device_count)
                writer.write_number_value("installedDeviceCount", @installed_device_count)
                writer.write_number_value("notInstalledDeviceCount", @not_installed_device_count)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the userName property value. User name.
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. User name.
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
