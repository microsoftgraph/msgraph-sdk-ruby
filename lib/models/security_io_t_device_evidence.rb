require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityIoTDeviceEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deviceId property
            @device_id
            ## 
            # The deviceName property
            @device_name
            ## 
            # The devicePageLink property
            @device_page_link
            ## 
            # The deviceSubType property
            @device_sub_type
            ## 
            # The deviceType property
            @device_type
            ## 
            # The importance property
            @importance
            ## 
            # The ioTHub property
            @io_t_hub
            ## 
            # The ioTSecurityAgentId property
            @io_t_security_agent_id
            ## 
            # The ipAddress property
            @ip_address
            ## 
            # The isAuthorized property
            @is_authorized
            ## 
            # The isProgramming property
            @is_programming
            ## 
            # The isScanner property
            @is_scanner
            ## 
            # The macAddress property
            @mac_address
            ## 
            # The manufacturer property
            @manufacturer
            ## 
            # The model property
            @model
            ## 
            # The nics property
            @nics
            ## 
            # The operatingSystem property
            @operating_system
            ## 
            # The owners property
            @owners
            ## 
            # The protocols property
            @protocols
            ## 
            # The purdueLayer property
            @purdue_layer
            ## 
            # The sensor property
            @sensor
            ## 
            # The serialNumber property
            @serial_number
            ## 
            # The site property
            @site
            ## 
            # The source property
            @source
            ## 
            # The sourceRef property
            @source_ref
            ## 
            # The zone property
            @zone
            ## 
            ## Instantiates a new securityIoTDeviceEvidence and sets the default values.
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
            ## Gets the deviceId property value. The deviceId property
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The deviceId property
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The deviceName property
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The deviceName property
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the devicePageLink property value. The devicePageLink property
            ## @return a string
            ## 
            def device_page_link
                return @device_page_link
            end
            ## 
            ## Sets the devicePageLink property value. The devicePageLink property
            ## @param value Value to set for the devicePageLink property.
            ## @return a void
            ## 
            def device_page_link=(value)
                @device_page_link = value
            end
            ## 
            ## Gets the deviceSubType property value. The deviceSubType property
            ## @return a string
            ## 
            def device_sub_type
                return @device_sub_type
            end
            ## 
            ## Sets the deviceSubType property value. The deviceSubType property
            ## @param value Value to set for the deviceSubType property.
            ## @return a void
            ## 
            def device_sub_type=(value)
                @device_sub_type = value
            end
            ## 
            ## Gets the deviceType property value. The deviceType property
            ## @return a string
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. The deviceType property
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
                    "nics" => lambda {|n| @nics = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityNicEvidence.create_from_discriminator_value(pn) }) },
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
            ## Gets the importance property value. The importance property
            ## @return a security_io_t_device_importance_type
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance property
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the ioTHub property value. The ioTHub property
            ## @return a security_azure_resource_evidence
            ## 
            def io_t_hub
                return @io_t_hub
            end
            ## 
            ## Sets the ioTHub property value. The ioTHub property
            ## @param value Value to set for the ioTHub property.
            ## @return a void
            ## 
            def io_t_hub=(value)
                @io_t_hub = value
            end
            ## 
            ## Gets the ioTSecurityAgentId property value. The ioTSecurityAgentId property
            ## @return a string
            ## 
            def io_t_security_agent_id
                return @io_t_security_agent_id
            end
            ## 
            ## Sets the ioTSecurityAgentId property value. The ioTSecurityAgentId property
            ## @param value Value to set for the ioTSecurityAgentId property.
            ## @return a void
            ## 
            def io_t_security_agent_id=(value)
                @io_t_security_agent_id = value
            end
            ## 
            ## Gets the ipAddress property value. The ipAddress property
            ## @return a security_ip_evidence
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The ipAddress property
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the isAuthorized property value. The isAuthorized property
            ## @return a boolean
            ## 
            def is_authorized
                return @is_authorized
            end
            ## 
            ## Sets the isAuthorized property value. The isAuthorized property
            ## @param value Value to set for the isAuthorized property.
            ## @return a void
            ## 
            def is_authorized=(value)
                @is_authorized = value
            end
            ## 
            ## Gets the isProgramming property value. The isProgramming property
            ## @return a boolean
            ## 
            def is_programming
                return @is_programming
            end
            ## 
            ## Sets the isProgramming property value. The isProgramming property
            ## @param value Value to set for the isProgramming property.
            ## @return a void
            ## 
            def is_programming=(value)
                @is_programming = value
            end
            ## 
            ## Gets the isScanner property value. The isScanner property
            ## @return a boolean
            ## 
            def is_scanner
                return @is_scanner
            end
            ## 
            ## Sets the isScanner property value. The isScanner property
            ## @param value Value to set for the isScanner property.
            ## @return a void
            ## 
            def is_scanner=(value)
                @is_scanner = value
            end
            ## 
            ## Gets the macAddress property value. The macAddress property
            ## @return a string
            ## 
            def mac_address
                return @mac_address
            end
            ## 
            ## Sets the macAddress property value. The macAddress property
            ## @param value Value to set for the macAddress property.
            ## @return a void
            ## 
            def mac_address=(value)
                @mac_address = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer property
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer property
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model property
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model property
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the nics property value. The nics property
            ## @return a security_nic_evidence
            ## 
            def nics
                return @nics
            end
            ## 
            ## Sets the nics property value. The nics property
            ## @param value Value to set for the nics property.
            ## @return a void
            ## 
            def nics=(value)
                @nics = value
            end
            ## 
            ## Gets the operatingSystem property value. The operatingSystem property
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operatingSystem property
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the owners property value. The owners property
            ## @return a string
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The owners property
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the protocols property value. The protocols property
            ## @return a string
            ## 
            def protocols
                return @protocols
            end
            ## 
            ## Sets the protocols property value. The protocols property
            ## @param value Value to set for the protocols property.
            ## @return a void
            ## 
            def protocols=(value)
                @protocols = value
            end
            ## 
            ## Gets the purdueLayer property value. The purdueLayer property
            ## @return a string
            ## 
            def purdue_layer
                return @purdue_layer
            end
            ## 
            ## Sets the purdueLayer property value. The purdueLayer property
            ## @param value Value to set for the purdueLayer property.
            ## @return a void
            ## 
            def purdue_layer=(value)
                @purdue_layer = value
            end
            ## 
            ## Gets the sensor property value. The sensor property
            ## @return a string
            ## 
            def sensor
                return @sensor
            end
            ## 
            ## Sets the sensor property value. The sensor property
            ## @param value Value to set for the sensor property.
            ## @return a void
            ## 
            def sensor=(value)
                @sensor = value
            end
            ## 
            ## Gets the serialNumber property value. The serialNumber property
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The serialNumber property
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
                writer.write_object_value("nics", @nics)
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
            ## Gets the site property value. The site property
            ## @return a string
            ## 
            def site
                return @site
            end
            ## 
            ## Sets the site property value. The site property
            ## @param value Value to set for the site property.
            ## @return a void
            ## 
            def site=(value)
                @site = value
            end
            ## 
            ## Gets the source property value. The source property
            ## @return a string
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the sourceRef property value. The sourceRef property
            ## @return a security_url_evidence
            ## 
            def source_ref
                return @source_ref
            end
            ## 
            ## Sets the sourceRef property value. The sourceRef property
            ## @param value Value to set for the sourceRef property.
            ## @return a void
            ## 
            def source_ref=(value)
                @source_ref = value
            end
            ## 
            ## Gets the zone property value. The zone property
            ## @return a string
            ## 
            def zone
                return @zone
            end
            ## 
            ## Sets the zone property value. The zone property
            ## @param value Value to set for the zone property.
            ## @return a void
            ## 
            def zone=(value)
                @zone = value
            end
        end
    end
end
