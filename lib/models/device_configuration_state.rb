require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device Configuration State for a given device.
        class DeviceConfigurationState < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the policy for this policyBase
            @display_name
            ## 
            # Supported platform types for policies.
            @platform_type
            ## 
            # Count of how many setting a policy holds
            @setting_count
            ## 
            # The settingStates property
            @setting_states
            ## 
            # The state property
            @state
            ## 
            # The version of the policy
            @version
            ## 
            ## Instantiates a new deviceConfigurationState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_configuration_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceConfigurationState.new
            end
            ## 
            ## Gets the displayName property value. The name of the policy for this policyBase
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the policy for this policyBase
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraph::Models::PolicyPlatformType) },
                    "settingCount" => lambda {|n| @setting_count = n.get_number_value() },
                    "settingStates" => lambda {|n| @setting_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceConfigurationSettingState.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ComplianceStatus) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the platformType property value. Supported platform types for policies.
            ## @return a policy_platform_type
            ## 
            def platform_type
                return @platform_type
            end
            ## 
            ## Sets the platformType property value. Supported platform types for policies.
            ## @param value Value to set for the platform_type property.
            ## @return a void
            ## 
            def platform_type=(value)
                @platform_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("platformType", @platform_type)
                writer.write_number_value("settingCount", @setting_count)
                writer.write_collection_of_object_values("settingStates", @setting_states)
                writer.write_enum_value("state", @state)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the settingCount property value. Count of how many setting a policy holds
            ## @return a integer
            ## 
            def setting_count
                return @setting_count
            end
            ## 
            ## Sets the settingCount property value. Count of how many setting a policy holds
            ## @param value Value to set for the setting_count property.
            ## @return a void
            ## 
            def setting_count=(value)
                @setting_count = value
            end
            ## 
            ## Gets the settingStates property value. The settingStates property
            ## @return a device_configuration_setting_state
            ## 
            def setting_states
                return @setting_states
            end
            ## 
            ## Sets the settingStates property value. The settingStates property
            ## @param value Value to set for the setting_states property.
            ## @return a void
            ## 
            def setting_states=(value)
                @setting_states = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a compliance_status
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the version property value. The version of the policy
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the policy
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
