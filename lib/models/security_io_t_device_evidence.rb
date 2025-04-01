require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityIoTDeviceEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The device ID.
            @device_id
            ## 
            # The friendly name of the device.
            @device_name
            ## 
            # The URL to the device page in the IoT Defender portal.
            @device_page_link
            ## 
            # The device subtype.
            @device_sub_type
            ## 
            # The type of the device. For example, 'temperature sensor,' 'freezer,' 'wind turbine,' and so on.
            @device_type
            ## 
            # The importance level for the IoT device. Possible values are low, normal, high, and unknownFutureValue.
            @importance
            ## 
            # The azureResourceEvidence entity that represents the IoT Hub that the device belongs to.
            @io_t_hub
            ## 
            # The ID of the Azure Security Center for the IoT agent that is running on the device.
            @io_t_security_agent_id
            ## 
            # The current IP address of the device.
            @ip_address
            ## 
            # Indicates whether the device classified as an authorized device.
            @is_authorized
            ## 
            # Indicates whether the device classified as a programming device.
            @is_programming
            ## 
            # Indicates whether the device classified as a scanner.
            @is_scanner
            ## 
            # The MAC address of the device.
            @mac_address
            ## 
            # The manufacturer of the device.
            @manufacturer
            ## 
            # The model of the device.
            @model
            ## 
            # The current network interface controllers on the device.
            @nics
            ## 
            # The operating system the device is running.
            @operating_system
            ## 
            # The owners for the device.
            @owners
            ## 
            # The list of protocols that the device supports.
            @protocols
            ## 
            # The Purdue Layer of the device.
            @purdue_layer
            ## 
            # The sensor that monitors the device.
            @sensor
            ## 
            # The serial number of the device.
            @serial_number
            ## 
            # The site location of the device.
            @site
            ## 
            # The source (microsoft/vendor) of the device entity.
            @source
            ## 
            # A URL reference to the source item where the device is managed.
            @source_ref
            ## 
            # The zone location of the device within a site.
            @zone
            ## 
            ## Instantiates a new SecurityIoTDeviceEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.ioTDeviceEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_io_t_device_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityIoTDeviceEvidence.new
            end
            ## 
            ## Gets the deviceId property value. The device ID.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The device ID.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The friendly name of the device.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The friendly name of the device.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the devicePageLink property value. The URL to the device page in the IoT Defender portal.
            ## @return a string
            ## 
            def device_page_link
                return @device_page_link
            end
            ## 
            ## Sets the devicePageLink property value. The URL to the device page in the IoT Defender portal.
            ## @param value Value to set for the devicePageLink property.
            ## @return a void
            ## 
            def device_page_link=(value)
                @device_page_link = value
            end
            ## 
            ## Gets the deviceSubType property value. The device subtype.
            ## @return a string
            ## 
            def device_sub_type
                return @device_sub_type
            end
            ## 
            ## Sets the deviceSubType property value. The device subtype.
            ## @param value Value to set for the deviceSubType property.
            ## @return a void
            ## 
            def device_sub_type=(value)
                @device_sub_type = value
            end
            ## 
            ## Gets the deviceType property value. The type of the device. For example, 'temperature sensor,' 'freezer,' 'wind turbine,' and so on.
            ## @return a string
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. The type of the device. For example, 'temperature sensor,' 'freezer,' 'wind turbine,' and so on.
            ## @param value Value to set for the deviceType property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "devicePageLink" => lambda {|n| @device_page_link = n.get_string_value() },
                    "deviceSubType" => lambda {|n| @device_sub_type = n.get_string_value() },
                    "deviceType" => lambda {|n| @device_type = n.get_string_value() },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraph::Models::SecurityIoTDeviceImportanceType) },
                    "ioTHub" => lambda {|n| @io_t_hub = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityAzureResourceEvidence.create_from_discriminator_value(pn) }) },
                    "ioTSecurityAgentId" => lambda {|n| @io_t_security_agent_id = n.get_string_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                    "isAuthorized" => lambda {|n| @is_authorized = n.get_boolean_value() },
                    "isProgramming" => lambda {|n| @is_programming = n.get_boolean_value() },
                    "isScanner" => lambda {|n| @is_scanner = n.get_boolean_value() },
                    "macAddress" => lambda {|n| @mac_address = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "nics" => lambda {|n| @nics = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityNicEvidence.create_from_discriminator_value(pn) }) },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "owners" => lambda {|n| @owners = n.get_collection_of_primitive_values(String) },
                    "protocols" => lambda {|n| @protocols = n.get_collection_of_primitive_values(String) },
                    "purdueLayer" => lambda {|n| @purdue_layer = n.get_string_value() },
                    "sensor" => lambda {|n| @sensor = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "site" => lambda {|n| @site = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_string_value() },
                    "sourceRef" => lambda {|n| @source_ref = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityUrlEvidence.create_from_discriminator_value(pn) }) },
                    "zone" => lambda {|n| @zone = n.get_string_value() },
                })
            end
            ## 
            ## Gets the importance property value. The importance level for the IoT device. Possible values are low, normal, high, and unknownFutureValue.
            ## @return a security_io_t_device_importance_type
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance level for the IoT device. Possible values are low, normal, high, and unknownFutureValue.
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the ioTHub property value. The azureResourceEvidence entity that represents the IoT Hub that the device belongs to.
            ## @return a security_azure_resource_evidence
            ## 
            def io_t_hub
                return @io_t_hub
            end
            ## 
            ## Sets the ioTHub property value. The azureResourceEvidence entity that represents the IoT Hub that the device belongs to.
            ## @param value Value to set for the ioTHub property.
            ## @return a void
            ## 
            def io_t_hub=(value)
                @io_t_hub = value
            end
            ## 
            ## Gets the ioTSecurityAgentId property value. The ID of the Azure Security Center for the IoT agent that is running on the device.
            ## @return a string
            ## 
            def io_t_security_agent_id
                return @io_t_security_agent_id
            end
            ## 
            ## Sets the ioTSecurityAgentId property value. The ID of the Azure Security Center for the IoT agent that is running on the device.
            ## @param value Value to set for the ioTSecurityAgentId property.
            ## @return a void
            ## 
            def io_t_security_agent_id=(value)
                @io_t_security_agent_id = value
            end
            ## 
            ## Gets the ipAddress property value. The current IP address of the device.
            ## @return a security_ip_evidence
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The current IP address of the device.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the isAuthorized property value. Indicates whether the device classified as an authorized device.
            ## @return a boolean
            ## 
            def is_authorized
                return @is_authorized
            end
            ## 
            ## Sets the isAuthorized property value. Indicates whether the device classified as an authorized device.
            ## @param value Value to set for the isAuthorized property.
            ## @return a void
            ## 
            def is_authorized=(value)
                @is_authorized = value
            end
            ## 
            ## Gets the isProgramming property value. Indicates whether the device classified as a programming device.
            ## @return a boolean
            ## 
            def is_programming
                return @is_programming
            end
            ## 
            ## Sets the isProgramming property value. Indicates whether the device classified as a programming device.
            ## @param value Value to set for the isProgramming property.
            ## @return a void
            ## 
            def is_programming=(value)
                @is_programming = value
            end
            ## 
            ## Gets the isScanner property value. Indicates whether the device classified as a scanner.
            ## @return a boolean
            ## 
            def is_scanner
                return @is_scanner
            end
            ## 
            ## Sets the isScanner property value. Indicates whether the device classified as a scanner.
            ## @param value Value to set for the isScanner property.
            ## @return a void
            ## 
            def is_scanner=(value)
                @is_scanner = value
            end
            ## 
            ## Gets the macAddress property value. The MAC address of the device.
            ## @return a string
            ## 
            def mac_address
                return @mac_address
            end
            ## 
            ## Sets the macAddress property value. The MAC address of the device.
            ## @param value Value to set for the macAddress property.
            ## @return a void
            ## 
            def mac_address=(value)
                @mac_address = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer of the device.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer of the device.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model of the device.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model of the device.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the nics property value. The current network interface controllers on the device.
            ## @return a security_nic_evidence
            ## 
            def nics
                return @nics
            end
            ## 
            ## Sets the nics property value. The current network interface controllers on the device.
            ## @param value Value to set for the nics property.
            ## @return a void
            ## 
            def nics=(value)
                @nics = value
            end
            ## 
            ## Gets the operatingSystem property value. The operating system the device is running.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operating system the device is running.
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the owners property value. The owners for the device.
            ## @return a string
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The owners for the device.
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the protocols property value. The list of protocols that the device supports.
            ## @return a string
            ## 
            def protocols
                return @protocols
            end
            ## 
            ## Sets the protocols property value. The list of protocols that the device supports.
            ## @param value Value to set for the protocols property.
            ## @return a void
            ## 
            def protocols=(value)
                @protocols = value
            end
            ## 
            ## Gets the purdueLayer property value. The Purdue Layer of the device.
            ## @return a string
            ## 
            def purdue_layer
                return @purdue_layer
            end
            ## 
            ## Sets the purdueLayer property value. The Purdue Layer of the device.
            ## @param value Value to set for the purdueLayer property.
            ## @return a void
            ## 
            def purdue_layer=(value)
                @purdue_layer = value
            end
            ## 
            ## Gets the sensor property value. The sensor that monitors the device.
            ## @return a string
            ## 
            def sensor
                return @sensor
            end
            ## 
            ## Sets the sensor property value. The sensor that monitors the device.
            ## @param value Value to set for the sensor property.
            ## @return a void
            ## 
            def sensor=(value)
                @sensor = value
            end
            ## 
            ## Gets the serialNumber property value. The serial number of the device.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The serial number of the device.
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
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("devicePageLink", @device_page_link)
                writer.write_string_value("deviceSubType", @device_sub_type)
                writer.write_string_value("deviceType", @device_type)
                writer.write_enum_value("importance", @importance)
                writer.write_object_value("ioTHub", @io_t_hub)
                writer.write_string_value("ioTSecurityAgentId", @io_t_security_agent_id)
                writer.write_object_value("ipAddress", @ip_address)
                writer.write_boolean_value("isAuthorized", @is_authorized)
                writer.write_boolean_value("isProgramming", @is_programming)
                writer.write_boolean_value("isScanner", @is_scanner)
                writer.write_string_value("macAddress", @mac_address)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_collection_of_object_values("nics", @nics)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_collection_of_primitive_values("owners", @owners)
                writer.write_collection_of_primitive_values("protocols", @protocols)
                writer.write_string_value("purdueLayer", @purdue_layer)
                writer.write_string_value("sensor", @sensor)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("site", @site)
                writer.write_string_value("source", @source)
                writer.write_object_value("sourceRef", @source_ref)
                writer.write_string_value("zone", @zone)
            end
            ## 
            ## Gets the site property value. The site location of the device.
            ## @return a string
            ## 
            def site
                return @site
            end
            ## 
            ## Sets the site property value. The site location of the device.
            ## @param value Value to set for the site property.
            ## @return a void
            ## 
            def site=(value)
                @site = value
            end
            ## 
            ## Gets the source property value. The source (microsoft/vendor) of the device entity.
            ## @return a string
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source (microsoft/vendor) of the device entity.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the sourceRef property value. A URL reference to the source item where the device is managed.
            ## @return a security_url_evidence
            ## 
            def source_ref
                return @source_ref
            end
            ## 
            ## Sets the sourceRef property value. A URL reference to the source item where the device is managed.
            ## @param value Value to set for the sourceRef property.
            ## @return a void
            ## 
            def source_ref=(value)
                @source_ref = value
            end
            ## 
            ## Gets the zone property value. The zone location of the device within a site.
            ## @return a string
            ## 
            def zone
                return @zone
            end
            ## 
            ## Sets the zone property value. The zone location of the device within a site.
            ## @param value Value to set for the zone property.
            ## @return a void
            ## 
            def zone=(value)
                @zone = value
            end
        end
    end
end
