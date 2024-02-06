require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
        class WindowsAutopilotDeviceIdentity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Addressable user name.
            @addressable_user_name
            ## 
            # AAD Device ID - to be deprecated
            @azure_active_directory_device_id
            ## 
            # Display Name
            @display_name
            ## 
            # The enrollmentState property
            @enrollment_state
            ## 
            # Group Tag of the Windows autopilot device.
            @group_tag
            ## 
            # Intune Last Contacted Date Time of the Windows autopilot device.
            @last_contacted_date_time
            ## 
            # Managed Device ID
            @managed_device_id
            ## 
            # Oem manufacturer of the Windows autopilot device.
            @manufacturer
            ## 
            # Model name of the Windows autopilot device.
            @model
            ## 
            # Product Key of the Windows autopilot device.
            @product_key
            ## 
            # Purchase Order Identifier of the Windows autopilot device.
            @purchase_order_identifier
            ## 
            # Resource Name.
            @resource_name
            ## 
            # Serial number of the Windows autopilot device.
            @serial_number
            ## 
            # SKU Number
            @sku_number
            ## 
            # System Family
            @system_family
            ## 
            # User Principal Name.
            @user_principal_name
            ## 
            ## Gets the addressableUserName property value. Addressable user name.
            ## @return a string
            ## 
            def addressable_user_name
                return @addressable_user_name
            end
            ## 
            ## Sets the addressableUserName property value. Addressable user name.
            ## @param value Value to set for the addressableUserName property.
            ## @return a void
            ## 
            def addressable_user_name=(value)
                @addressable_user_name = value
            end
            ## 
            ## Gets the azureActiveDirectoryDeviceId property value. AAD Device ID - to be deprecated
            ## @return a string
            ## 
            def azure_active_directory_device_id
                return @azure_active_directory_device_id
            end
            ## 
            ## Sets the azureActiveDirectoryDeviceId property value. AAD Device ID - to be deprecated
            ## @param value Value to set for the azureActiveDirectoryDeviceId property.
            ## @return a void
            ## 
            def azure_active_directory_device_id=(value)
                @azure_active_directory_device_id = value
            end
            ## 
            ## Instantiates a new windowsAutopilotDeviceIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_autopilot_device_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAutopilotDeviceIdentity.new
            end
            ## 
            ## Gets the displayName property value. Display Name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display Name
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enrollmentState property value. The enrollmentState property
            ## @return a enrollment_state
            ## 
            def enrollment_state
                return @enrollment_state
            end
            ## 
            ## Sets the enrollmentState property value. The enrollmentState property
            ## @param value Value to set for the enrollmentState property.
            ## @return a void
            ## 
            def enrollment_state=(value)
                @enrollment_state = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addressableUserName" => lambda {|n| @addressable_user_name = n.get_string_value() },
                    "azureActiveDirectoryDeviceId" => lambda {|n| @azure_active_directory_device_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrollmentState" => lambda {|n| @enrollment_state = n.get_enum_value(MicrosoftGraph::Models::EnrollmentState) },
                    "groupTag" => lambda {|n| @group_tag = n.get_string_value() },
                    "lastContactedDateTime" => lambda {|n| @last_contacted_date_time = n.get_date_time_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "productKey" => lambda {|n| @product_key = n.get_string_value() },
                    "purchaseOrderIdentifier" => lambda {|n| @purchase_order_identifier = n.get_string_value() },
                    "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "skuNumber" => lambda {|n| @sku_number = n.get_string_value() },
                    "systemFamily" => lambda {|n| @system_family = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupTag property value. Group Tag of the Windows autopilot device.
            ## @return a string
            ## 
            def group_tag
                return @group_tag
            end
            ## 
            ## Sets the groupTag property value. Group Tag of the Windows autopilot device.
            ## @param value Value to set for the groupTag property.
            ## @return a void
            ## 
            def group_tag=(value)
                @group_tag = value
            end
            ## 
            ## Gets the lastContactedDateTime property value. Intune Last Contacted Date Time of the Windows autopilot device.
            ## @return a date_time
            ## 
            def last_contacted_date_time
                return @last_contacted_date_time
            end
            ## 
            ## Sets the lastContactedDateTime property value. Intune Last Contacted Date Time of the Windows autopilot device.
            ## @param value Value to set for the lastContactedDateTime property.
            ## @return a void
            ## 
            def last_contacted_date_time=(value)
                @last_contacted_date_time = value
            end
            ## 
            ## Gets the managedDeviceId property value. Managed Device ID
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. Managed Device ID
            ## @param value Value to set for the managedDeviceId property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the manufacturer property value. Oem manufacturer of the Windows autopilot device.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Oem manufacturer of the Windows autopilot device.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. Model name of the Windows autopilot device.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Model name of the Windows autopilot device.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the productKey property value. Product Key of the Windows autopilot device.
            ## @return a string
            ## 
            def product_key
                return @product_key
            end
            ## 
            ## Sets the productKey property value. Product Key of the Windows autopilot device.
            ## @param value Value to set for the productKey property.
            ## @return a void
            ## 
            def product_key=(value)
                @product_key = value
            end
            ## 
            ## Gets the purchaseOrderIdentifier property value. Purchase Order Identifier of the Windows autopilot device.
            ## @return a string
            ## 
            def purchase_order_identifier
                return @purchase_order_identifier
            end
            ## 
            ## Sets the purchaseOrderIdentifier property value. Purchase Order Identifier of the Windows autopilot device.
            ## @param value Value to set for the purchaseOrderIdentifier property.
            ## @return a void
            ## 
            def purchase_order_identifier=(value)
                @purchase_order_identifier = value
            end
            ## 
            ## Gets the resourceName property value. Resource Name.
            ## @return a string
            ## 
            def resource_name
                return @resource_name
            end
            ## 
            ## Sets the resourceName property value. Resource Name.
            ## @param value Value to set for the resourceName property.
            ## @return a void
            ## 
            def resource_name=(value)
                @resource_name = value
            end
            ## 
            ## Gets the serialNumber property value. Serial number of the Windows autopilot device.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Serial number of the Windows autopilot device.
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("addressableUserName", @addressable_user_name) unless @addressable_user_name.nil?
                writer.write_string_value("azureActiveDirectoryDeviceId", @azure_active_directory_device_id) unless @azure_active_directory_device_id.nil?
                writer.write_string_value("displayName", @display_name) unless @display_name.nil?
                writer.write_enum_value("enrollmentState", @enrollment_state) unless @enrollment_state.nil?
                writer.write_string_value("groupTag", @group_tag) unless @group_tag.nil?
                writer.write_date_time_value("lastContactedDateTime", @last_contacted_date_time) unless @last_contacted_date_time.nil?
                writer.write_string_value("managedDeviceId", @managed_device_id) unless @managed_device_id.nil?
                writer.write_string_value("manufacturer", @manufacturer) unless @manufacturer.nil?
                writer.write_string_value("model", @model) unless @model.nil?
                writer.write_string_value("productKey", @product_key) unless @product_key.nil?
                writer.write_string_value("purchaseOrderIdentifier", @purchase_order_identifier) unless @purchase_order_identifier.nil?
                writer.write_string_value("resourceName", @resource_name) unless @resource_name.nil?
                writer.write_string_value("serialNumber", @serial_number) unless @serial_number.nil?
                writer.write_string_value("skuNumber", @sku_number) unless @sku_number.nil?
                writer.write_string_value("systemFamily", @system_family) unless @system_family.nil?
                writer.write_string_value("userPrincipalName", @user_principal_name) unless @user_principal_name.nil?
            end
            ## 
            ## Gets the skuNumber property value. SKU Number
            ## @return a string
            ## 
            def sku_number
                return @sku_number
            end
            ## 
            ## Sets the skuNumber property value. SKU Number
            ## @param value Value to set for the skuNumber property.
            ## @return a void
            ## 
            def sku_number=(value)
                @sku_number = value
            end
            ## 
            ## Gets the systemFamily property value. System Family
            ## @return a string
            ## 
            def system_family
                return @system_family
            end
            ## 
            ## Sets the systemFamily property value. System Family
            ## @param value Value to set for the systemFamily property.
            ## @return a void
            ## 
            def system_family=(value)
                @system_family = value
            end
            ## 
            ## Gets the userPrincipalName property value. User Principal Name.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User Principal Name.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
