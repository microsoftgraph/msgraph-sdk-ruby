require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class NetworkInfo
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
                @bandwidth_low_event_ratio
                ## 
                # The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
                @basic_service_set_identifier
                ## 
                # The connectionType property
                @connection_type
                ## 
                # Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
                @delay_event_ratio
                ## 
                # DNS suffix associated with the network adapter of the media endpoint.
                @dns_suffix
                ## 
                # IP address of the media endpoint.
                @ip_address
                ## 
                # Link speed in bits per second reported by the network adapter used by the media endpoint.
                @link_speed
                ## 
                # The media access control (MAC) address of the media endpoint's network device.
                @mac_address
                ## 
                # The networkTransportProtocol property
                @network_transport_protocol
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Network port number used by media endpoint.
                @port
                ## 
                # Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
                @received_quality_event_ratio
                ## 
                # IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
                @reflexive_i_p_address
                ## 
                # IP address of the media relay server allocated by the media endpoint.
                @relay_i_p_address
                ## 
                # Network port number allocated on the media relay server by the media endpoint.
                @relay_port
                ## 
                # Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
                @sent_quality_event_ratio
                ## 
                # Subnet used for media stream by the media endpoint.
                @subnet
                ## 
                # List of network trace route hops collected for this media stream.*
                @trace_route_hops
                ## 
                # The wifiBand property
                @wifi_band
                ## 
                # Estimated remaining battery charge in percentage reported by the media endpoint.
                @wifi_battery_charge
                ## 
                # WiFi channel used by the media endpoint.
                @wifi_channel
                ## 
                # Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
                @wifi_microsoft_driver
                ## 
                # Version of the Microsoft WiFi driver used by the media endpoint.
                @wifi_microsoft_driver_version
                ## 
                # The wifiRadioType property
                @wifi_radio_type
                ## 
                # WiFi signal strength in percentage reported by the media endpoint.
                @wifi_signal_strength
                ## 
                # Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
                @wifi_vendor_driver
                ## 
                # Version of the WiFi driver used by the media endpoint.
                @wifi_vendor_driver_version
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
                ## Gets the bandwidthLowEventRatio property value. Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
                ## @return a float
                ## 
                def bandwidth_low_event_ratio
                    return @bandwidth_low_event_ratio
                end
                ## 
                ## Sets the bandwidthLowEventRatio property value. Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.
                ## @param value Value to set for the bandwidth_low_event_ratio property.
                ## @return a void
                ## 
                def bandwidth_low_event_ratio=(value)
                    @bandwidth_low_event_ratio = value
                end
                ## 
                ## Gets the basicServiceSetIdentifier property value. The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
                ## @return a string
                ## 
                def basic_service_set_identifier
                    return @basic_service_set_identifier
                end
                ## 
                ## Sets the basicServiceSetIdentifier property value. The wireless LAN basic service set identifier of the media endpoint used to connect to the network.
                ## @param value Value to set for the basic_service_set_identifier property.
                ## @return a void
                ## 
                def basic_service_set_identifier=(value)
                    @basic_service_set_identifier = value
                end
                ## 
                ## Gets the connectionType property value. The connectionType property
                ## @return a network_connection_type
                ## 
                def connection_type
                    return @connection_type
                end
                ## 
                ## Sets the connectionType property value. The connectionType property
                ## @param value Value to set for the connection_type property.
                ## @return a void
                ## 
                def connection_type=(value)
                    @connection_type = value
                end
                ## 
                ## Instantiates a new networkInfo and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a network_info
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return NetworkInfo.new
                end
                ## 
                ## Gets the delayEventRatio property value. Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
                ## @return a float
                ## 
                def delay_event_ratio
                    return @delay_event_ratio
                end
                ## 
                ## Sets the delayEventRatio property value. Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.
                ## @param value Value to set for the delay_event_ratio property.
                ## @return a void
                ## 
                def delay_event_ratio=(value)
                    @delay_event_ratio = value
                end
                ## 
                ## Gets the dnsSuffix property value. DNS suffix associated with the network adapter of the media endpoint.
                ## @return a string
                ## 
                def dns_suffix
                    return @dns_suffix
                end
                ## 
                ## Sets the dnsSuffix property value. DNS suffix associated with the network adapter of the media endpoint.
                ## @param value Value to set for the dns_suffix property.
                ## @return a void
                ## 
                def dns_suffix=(value)
                    @dns_suffix = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "bandwidthLowEventRatio" => lambda {|n| @bandwidth_low_event_ratio = n.get_float_value() },
                        "basicServiceSetIdentifier" => lambda {|n| @basic_service_set_identifier = n.get_string_value() },
                        "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraph::Models::CallRecords::NetworkConnectionType) },
                        "delayEventRatio" => lambda {|n| @delay_event_ratio = n.get_float_value() },
                        "dnsSuffix" => lambda {|n| @dns_suffix = n.get_string_value() },
                        "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                        "linkSpeed" => lambda {|n| @link_speed = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "macAddress" => lambda {|n| @mac_address = n.get_string_value() },
                        "networkTransportProtocol" => lambda {|n| @network_transport_protocol = n.get_enum_value(MicrosoftGraph::Models::CallRecords::NetworkTransportProtocol) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "port" => lambda {|n| @port = n.get_number_value() },
                        "receivedQualityEventRatio" => lambda {|n| @received_quality_event_ratio = n.get_float_value() },
                        "reflexiveIPAddress" => lambda {|n| @reflexive_i_p_address = n.get_string_value() },
                        "relayIPAddress" => lambda {|n| @relay_i_p_address = n.get_string_value() },
                        "relayPort" => lambda {|n| @relay_port = n.get_number_value() },
                        "sentQualityEventRatio" => lambda {|n| @sent_quality_event_ratio = n.get_float_value() },
                        "subnet" => lambda {|n| @subnet = n.get_string_value() },
                        "traceRouteHops" => lambda {|n| @trace_route_hops = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecords::TraceRouteHop.create_from_discriminator_value(pn) }) },
                        "wifiBand" => lambda {|n| @wifi_band = n.get_enum_value(MicrosoftGraph::Models::CallRecords::WifiBand) },
                        "wifiBatteryCharge" => lambda {|n| @wifi_battery_charge = n.get_number_value() },
                        "wifiChannel" => lambda {|n| @wifi_channel = n.get_number_value() },
                        "wifiMicrosoftDriver" => lambda {|n| @wifi_microsoft_driver = n.get_string_value() },
                        "wifiMicrosoftDriverVersion" => lambda {|n| @wifi_microsoft_driver_version = n.get_string_value() },
                        "wifiRadioType" => lambda {|n| @wifi_radio_type = n.get_enum_value(MicrosoftGraph::Models::CallRecords::WifiRadioType) },
                        "wifiSignalStrength" => lambda {|n| @wifi_signal_strength = n.get_number_value() },
                        "wifiVendorDriver" => lambda {|n| @wifi_vendor_driver = n.get_string_value() },
                        "wifiVendorDriverVersion" => lambda {|n| @wifi_vendor_driver_version = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ipAddress property value. IP address of the media endpoint.
                ## @return a string
                ## 
                def ip_address
                    return @ip_address
                end
                ## 
                ## Sets the ipAddress property value. IP address of the media endpoint.
                ## @param value Value to set for the ip_address property.
                ## @return a void
                ## 
                def ip_address=(value)
                    @ip_address = value
                end
                ## 
                ## Gets the linkSpeed property value. Link speed in bits per second reported by the network adapter used by the media endpoint.
                ## @return a int64
                ## 
                def link_speed
                    return @link_speed
                end
                ## 
                ## Sets the linkSpeed property value. Link speed in bits per second reported by the network adapter used by the media endpoint.
                ## @param value Value to set for the link_speed property.
                ## @return a void
                ## 
                def link_speed=(value)
                    @link_speed = value
                end
                ## 
                ## Gets the macAddress property value. The media access control (MAC) address of the media endpoint's network device.
                ## @return a string
                ## 
                def mac_address
                    return @mac_address
                end
                ## 
                ## Sets the macAddress property value. The media access control (MAC) address of the media endpoint's network device.
                ## @param value Value to set for the mac_address property.
                ## @return a void
                ## 
                def mac_address=(value)
                    @mac_address = value
                end
                ## 
                ## Gets the networkTransportProtocol property value. The networkTransportProtocol property
                ## @return a network_transport_protocol
                ## 
                def network_transport_protocol
                    return @network_transport_protocol
                end
                ## 
                ## Sets the networkTransportProtocol property value. The networkTransportProtocol property
                ## @param value Value to set for the network_transport_protocol property.
                ## @return a void
                ## 
                def network_transport_protocol=(value)
                    @network_transport_protocol = value
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
                ## Gets the port property value. Network port number used by media endpoint.
                ## @return a integer
                ## 
                def port
                    return @port
                end
                ## 
                ## Sets the port property value. Network port number used by media endpoint.
                ## @param value Value to set for the port property.
                ## @return a void
                ## 
                def port=(value)
                    @port = value
                end
                ## 
                ## Gets the receivedQualityEventRatio property value. Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
                ## @return a float
                ## 
                def received_quality_event_ratio
                    return @received_quality_event_ratio
                end
                ## 
                ## Sets the receivedQualityEventRatio property value. Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.
                ## @param value Value to set for the received_quality_event_ratio property.
                ## @return a void
                ## 
                def received_quality_event_ratio=(value)
                    @received_quality_event_ratio = value
                end
                ## 
                ## Gets the reflexiveIPAddress property value. IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
                ## @return a string
                ## 
                def reflexive_i_p_address
                    return @reflexive_i_p_address
                end
                ## 
                ## Sets the reflexiveIPAddress property value. IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.
                ## @param value Value to set for the reflexive_i_p_address property.
                ## @return a void
                ## 
                def reflexive_i_p_address=(value)
                    @reflexive_i_p_address = value
                end
                ## 
                ## Gets the relayIPAddress property value. IP address of the media relay server allocated by the media endpoint.
                ## @return a string
                ## 
                def relay_i_p_address
                    return @relay_i_p_address
                end
                ## 
                ## Sets the relayIPAddress property value. IP address of the media relay server allocated by the media endpoint.
                ## @param value Value to set for the relay_i_p_address property.
                ## @return a void
                ## 
                def relay_i_p_address=(value)
                    @relay_i_p_address = value
                end
                ## 
                ## Gets the relayPort property value. Network port number allocated on the media relay server by the media endpoint.
                ## @return a integer
                ## 
                def relay_port
                    return @relay_port
                end
                ## 
                ## Sets the relayPort property value. Network port number allocated on the media relay server by the media endpoint.
                ## @param value Value to set for the relay_port property.
                ## @return a void
                ## 
                def relay_port=(value)
                    @relay_port = value
                end
                ## 
                ## Gets the sentQualityEventRatio property value. Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
                ## @return a float
                ## 
                def sent_quality_event_ratio
                    return @sent_quality_event_ratio
                end
                ## 
                ## Sets the sentQualityEventRatio property value. Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.
                ## @param value Value to set for the sent_quality_event_ratio property.
                ## @return a void
                ## 
                def sent_quality_event_ratio=(value)
                    @sent_quality_event_ratio = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("bandwidthLowEventRatio", @bandwidth_low_event_ratio)
                    writer.write_string_value("basicServiceSetIdentifier", @basic_service_set_identifier)
                    writer.write_enum_value("connectionType", @connection_type)
                    writer.write_float_value("delayEventRatio", @delay_event_ratio)
                    writer.write_string_value("dnsSuffix", @dns_suffix)
                    writer.write_string_value("ipAddress", @ip_address)
                    writer.write_object_value("linkSpeed", @link_speed)
                    writer.write_string_value("macAddress", @mac_address)
                    writer.write_enum_value("networkTransportProtocol", @network_transport_protocol)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("port", @port)
                    writer.write_float_value("receivedQualityEventRatio", @received_quality_event_ratio)
                    writer.write_string_value("reflexiveIPAddress", @reflexive_i_p_address)
                    writer.write_string_value("relayIPAddress", @relay_i_p_address)
                    writer.write_number_value("relayPort", @relay_port)
                    writer.write_float_value("sentQualityEventRatio", @sent_quality_event_ratio)
                    writer.write_string_value("subnet", @subnet)
                    writer.write_collection_of_object_values("traceRouteHops", @trace_route_hops)
                    writer.write_enum_value("wifiBand", @wifi_band)
                    writer.write_number_value("wifiBatteryCharge", @wifi_battery_charge)
                    writer.write_number_value("wifiChannel", @wifi_channel)
                    writer.write_string_value("wifiMicrosoftDriver", @wifi_microsoft_driver)
                    writer.write_string_value("wifiMicrosoftDriverVersion", @wifi_microsoft_driver_version)
                    writer.write_enum_value("wifiRadioType", @wifi_radio_type)
                    writer.write_number_value("wifiSignalStrength", @wifi_signal_strength)
                    writer.write_string_value("wifiVendorDriver", @wifi_vendor_driver)
                    writer.write_string_value("wifiVendorDriverVersion", @wifi_vendor_driver_version)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the subnet property value. Subnet used for media stream by the media endpoint.
                ## @return a string
                ## 
                def subnet
                    return @subnet
                end
                ## 
                ## Sets the subnet property value. Subnet used for media stream by the media endpoint.
                ## @param value Value to set for the subnet property.
                ## @return a void
                ## 
                def subnet=(value)
                    @subnet = value
                end
                ## 
                ## Gets the traceRouteHops property value. List of network trace route hops collected for this media stream.*
                ## @return a trace_route_hop
                ## 
                def trace_route_hops
                    return @trace_route_hops
                end
                ## 
                ## Sets the traceRouteHops property value. List of network trace route hops collected for this media stream.*
                ## @param value Value to set for the trace_route_hops property.
                ## @return a void
                ## 
                def trace_route_hops=(value)
                    @trace_route_hops = value
                end
                ## 
                ## Gets the wifiBand property value. The wifiBand property
                ## @return a wifi_band
                ## 
                def wifi_band
                    return @wifi_band
                end
                ## 
                ## Sets the wifiBand property value. The wifiBand property
                ## @param value Value to set for the wifi_band property.
                ## @return a void
                ## 
                def wifi_band=(value)
                    @wifi_band = value
                end
                ## 
                ## Gets the wifiBatteryCharge property value. Estimated remaining battery charge in percentage reported by the media endpoint.
                ## @return a integer
                ## 
                def wifi_battery_charge
                    return @wifi_battery_charge
                end
                ## 
                ## Sets the wifiBatteryCharge property value. Estimated remaining battery charge in percentage reported by the media endpoint.
                ## @param value Value to set for the wifi_battery_charge property.
                ## @return a void
                ## 
                def wifi_battery_charge=(value)
                    @wifi_battery_charge = value
                end
                ## 
                ## Gets the wifiChannel property value. WiFi channel used by the media endpoint.
                ## @return a integer
                ## 
                def wifi_channel
                    return @wifi_channel
                end
                ## 
                ## Sets the wifiChannel property value. WiFi channel used by the media endpoint.
                ## @param value Value to set for the wifi_channel property.
                ## @return a void
                ## 
                def wifi_channel=(value)
                    @wifi_channel = value
                end
                ## 
                ## Gets the wifiMicrosoftDriver property value. Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
                ## @return a string
                ## 
                def wifi_microsoft_driver
                    return @wifi_microsoft_driver
                end
                ## 
                ## Sets the wifiMicrosoftDriver property value. Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
                ## @param value Value to set for the wifi_microsoft_driver property.
                ## @return a void
                ## 
                def wifi_microsoft_driver=(value)
                    @wifi_microsoft_driver = value
                end
                ## 
                ## Gets the wifiMicrosoftDriverVersion property value. Version of the Microsoft WiFi driver used by the media endpoint.
                ## @return a string
                ## 
                def wifi_microsoft_driver_version
                    return @wifi_microsoft_driver_version
                end
                ## 
                ## Sets the wifiMicrosoftDriverVersion property value. Version of the Microsoft WiFi driver used by the media endpoint.
                ## @param value Value to set for the wifi_microsoft_driver_version property.
                ## @return a void
                ## 
                def wifi_microsoft_driver_version=(value)
                    @wifi_microsoft_driver_version = value
                end
                ## 
                ## Gets the wifiRadioType property value. The wifiRadioType property
                ## @return a wifi_radio_type
                ## 
                def wifi_radio_type
                    return @wifi_radio_type
                end
                ## 
                ## Sets the wifiRadioType property value. The wifiRadioType property
                ## @param value Value to set for the wifi_radio_type property.
                ## @return a void
                ## 
                def wifi_radio_type=(value)
                    @wifi_radio_type = value
                end
                ## 
                ## Gets the wifiSignalStrength property value. WiFi signal strength in percentage reported by the media endpoint.
                ## @return a integer
                ## 
                def wifi_signal_strength
                    return @wifi_signal_strength
                end
                ## 
                ## Sets the wifiSignalStrength property value. WiFi signal strength in percentage reported by the media endpoint.
                ## @param value Value to set for the wifi_signal_strength property.
                ## @return a void
                ## 
                def wifi_signal_strength=(value)
                    @wifi_signal_strength = value
                end
                ## 
                ## Gets the wifiVendorDriver property value. Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
                ## @return a string
                ## 
                def wifi_vendor_driver
                    return @wifi_vendor_driver
                end
                ## 
                ## Sets the wifiVendorDriver property value. Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.
                ## @param value Value to set for the wifi_vendor_driver property.
                ## @return a void
                ## 
                def wifi_vendor_driver=(value)
                    @wifi_vendor_driver = value
                end
                ## 
                ## Gets the wifiVendorDriverVersion property value. Version of the WiFi driver used by the media endpoint.
                ## @return a string
                ## 
                def wifi_vendor_driver_version
                    return @wifi_vendor_driver_version
                end
                ## 
                ## Sets the wifiVendorDriverVersion property value. Version of the WiFi driver used by the media endpoint.
                ## @param value Value to set for the wifi_vendor_driver_version property.
                ## @return a void
                ## 
                def wifi_vendor_driver_version=(value)
                    @wifi_vendor_driver_version = value
                end
            end
        end
    end
end
