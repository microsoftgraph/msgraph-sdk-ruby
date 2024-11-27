require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityDeviceEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A unique identifier assigned to a device by Microsoft Entra ID when device is Microsoft Entra joined.
            @azure_ad_device_id
            ## 
            # State of the Defender AntiMalware engine. The possible values are: notReporting, disabled, notUpdated, updated, unknown, notSupported, unknownFutureValue.
            @defender_av_status
            ## 
            # The fully qualified domain name (FQDN) for the device.
            @device_dns_name
            ## 
            # The DNS domain that this computer belongs to. A sequence of labels separated by dots.
            @dns_domain
            ## 
            # The date and time when the device was first seen.
            @first_seen_date_time
            ## 
            # The health state of the device. The possible values are: active, inactive, impairedCommunication, noSensorData, noSensorDataImpairedCommunication, unknown, unknownFutureValue.
            @health_status
            ## 
            # The hostname without the domain suffix.
            @host_name
            ## 
            # Ip interfaces of the device during the time of the alert.
            @ip_interfaces
            ## 
            # The lastExternalIpAddress property
            @last_external_ip_address
            ## 
            # The lastIpAddress property
            @last_ip_address
            ## 
            # Users that were logged on the machine during the time of the alert.
            @logged_on_users
            ## 
            # A unique identifier assigned to a device by Microsoft Defender for Endpoint.
            @mde_device_id
            ## 
            # A logical grouping of computers within a Microsoft Windows network.
            @nt_domain
            ## 
            # The status of the machine onboarding to Microsoft Defender for Endpoint. The possible values are: insufficientInfo, onboarded, canBeOnboarded, unsupported, unknownFutureValue.
            @onboarding_status
            ## 
            # The build version for the operating system the device is running.
            @os_build
            ## 
            # The operating system platform the device is running.
            @os_platform
            ## 
            # The ID of the role-based access control (RBAC) device group.
            @rbac_group_id
            ## 
            # The name of the RBAC device group.
            @rbac_group_name
            ## 
            # Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: none, informational, low, medium, high, unknownFutureValue.
            @risk_score
            ## 
            # The version of the operating system platform.
            @version
            ## 
            # Metadata of the virtual machine (VM) on which Microsoft Defender for Endpoint is running.
            @vm_metadata
            ## 
            ## Gets the azureAdDeviceId property value. A unique identifier assigned to a device by Microsoft Entra ID when device is Microsoft Entra joined.
            ## @return a string
            ## 
            def azure_ad_device_id
                return @azure_ad_device_id
            end
            ## 
            ## Sets the azureAdDeviceId property value. A unique identifier assigned to a device by Microsoft Entra ID when device is Microsoft Entra joined.
            ## @param value Value to set for the azureAdDeviceId property.
            ## @return a void
            ## 
            def azure_ad_device_id=(value)
                @azure_ad_device_id = value
            end
            ## 
            ## Instantiates a new SecurityDeviceEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.deviceEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_device_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDeviceEvidence.new
            end
            ## 
            ## Gets the defenderAvStatus property value. State of the Defender AntiMalware engine. The possible values are: notReporting, disabled, notUpdated, updated, unknown, notSupported, unknownFutureValue.
            ## @return a security_defender_av_status
            ## 
            def defender_av_status
                return @defender_av_status
            end
            ## 
            ## Sets the defenderAvStatus property value. State of the Defender AntiMalware engine. The possible values are: notReporting, disabled, notUpdated, updated, unknown, notSupported, unknownFutureValue.
            ## @param value Value to set for the defenderAvStatus property.
            ## @return a void
            ## 
            def defender_av_status=(value)
                @defender_av_status = value
            end
            ## 
            ## Gets the deviceDnsName property value. The fully qualified domain name (FQDN) for the device.
            ## @return a string
            ## 
            def device_dns_name
                return @device_dns_name
            end
            ## 
            ## Sets the deviceDnsName property value. The fully qualified domain name (FQDN) for the device.
            ## @param value Value to set for the deviceDnsName property.
            ## @return a void
            ## 
            def device_dns_name=(value)
                @device_dns_name = value
            end
            ## 
            ## Gets the dnsDomain property value. The DNS domain that this computer belongs to. A sequence of labels separated by dots.
            ## @return a string
            ## 
            def dns_domain
                return @dns_domain
            end
            ## 
            ## Sets the dnsDomain property value. The DNS domain that this computer belongs to. A sequence of labels separated by dots.
            ## @param value Value to set for the dnsDomain property.
            ## @return a void
            ## 
            def dns_domain=(value)
                @dns_domain = value
            end
            ## 
            ## Gets the firstSeenDateTime property value. The date and time when the device was first seen.
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The date and time when the device was first seen.
            ## @param value Value to set for the firstSeenDateTime property.
            ## @return a void
            ## 
            def first_seen_date_time=(value)
                @first_seen_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureAdDeviceId" => lambda {|n| @azure_ad_device_id = n.get_string_value() },
                    "defenderAvStatus" => lambda {|n| @defender_av_status = n.get_enum_value(MicrosoftGraph::Models::SecurityDefenderAvStatus) },
                    "deviceDnsName" => lambda {|n| @device_dns_name = n.get_string_value() },
                    "dnsDomain" => lambda {|n| @dns_domain = n.get_string_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::SecurityDeviceHealthStatus) },
                    "hostName" => lambda {|n| @host_name = n.get_string_value() },
                    "ipInterfaces" => lambda {|n| @ip_interfaces = n.get_collection_of_primitive_values(String) },
                    "lastExternalIpAddress" => lambda {|n| @last_external_ip_address = n.get_string_value() },
                    "lastIpAddress" => lambda {|n| @last_ip_address = n.get_string_value() },
                    "loggedOnUsers" => lambda {|n| @logged_on_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityLoggedOnUser.create_from_discriminator_value(pn) }) },
                    "mdeDeviceId" => lambda {|n| @mde_device_id = n.get_string_value() },
                    "ntDomain" => lambda {|n| @nt_domain = n.get_string_value() },
                    "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraph::Models::SecurityOnboardingStatus) },
                    "osBuild" => lambda {|n| @os_build = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "osPlatform" => lambda {|n| @os_platform = n.get_string_value() },
                    "rbacGroupId" => lambda {|n| @rbac_group_id = n.get_number_value() },
                    "rbacGroupName" => lambda {|n| @rbac_group_name = n.get_string_value() },
                    "riskScore" => lambda {|n| @risk_score = n.get_enum_value(MicrosoftGraph::Models::SecurityDeviceRiskScore) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                    "vmMetadata" => lambda {|n| @vm_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityVmMetadata.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthStatus property value. The health state of the device. The possible values are: active, inactive, impairedCommunication, noSensorData, noSensorDataImpairedCommunication, unknown, unknownFutureValue.
            ## @return a security_device_health_status
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The health state of the device. The possible values are: active, inactive, impairedCommunication, noSensorData, noSensorDataImpairedCommunication, unknown, unknownFutureValue.
            ## @param value Value to set for the healthStatus property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the hostName property value. The hostname without the domain suffix.
            ## @return a string
            ## 
            def host_name
                return @host_name
            end
            ## 
            ## Sets the hostName property value. The hostname without the domain suffix.
            ## @param value Value to set for the hostName property.
            ## @return a void
            ## 
            def host_name=(value)
                @host_name = value
            end
            ## 
            ## Gets the ipInterfaces property value. Ip interfaces of the device during the time of the alert.
            ## @return a string
            ## 
            def ip_interfaces
                return @ip_interfaces
            end
            ## 
            ## Sets the ipInterfaces property value. Ip interfaces of the device during the time of the alert.
            ## @param value Value to set for the ipInterfaces property.
            ## @return a void
            ## 
            def ip_interfaces=(value)
                @ip_interfaces = value
            end
            ## 
            ## Gets the lastExternalIpAddress property value. The lastExternalIpAddress property
            ## @return a string
            ## 
            def last_external_ip_address
                return @last_external_ip_address
            end
            ## 
            ## Sets the lastExternalIpAddress property value. The lastExternalIpAddress property
            ## @param value Value to set for the lastExternalIpAddress property.
            ## @return a void
            ## 
            def last_external_ip_address=(value)
                @last_external_ip_address = value
            end
            ## 
            ## Gets the lastIpAddress property value. The lastIpAddress property
            ## @return a string
            ## 
            def last_ip_address
                return @last_ip_address
            end
            ## 
            ## Sets the lastIpAddress property value. The lastIpAddress property
            ## @param value Value to set for the lastIpAddress property.
            ## @return a void
            ## 
            def last_ip_address=(value)
                @last_ip_address = value
            end
            ## 
            ## Gets the loggedOnUsers property value. Users that were logged on the machine during the time of the alert.
            ## @return a security_logged_on_user
            ## 
            def logged_on_users
                return @logged_on_users
            end
            ## 
            ## Sets the loggedOnUsers property value. Users that were logged on the machine during the time of the alert.
            ## @param value Value to set for the loggedOnUsers property.
            ## @return a void
            ## 
            def logged_on_users=(value)
                @logged_on_users = value
            end
            ## 
            ## Gets the mdeDeviceId property value. A unique identifier assigned to a device by Microsoft Defender for Endpoint.
            ## @return a string
            ## 
            def mde_device_id
                return @mde_device_id
            end
            ## 
            ## Sets the mdeDeviceId property value. A unique identifier assigned to a device by Microsoft Defender for Endpoint.
            ## @param value Value to set for the mdeDeviceId property.
            ## @return a void
            ## 
            def mde_device_id=(value)
                @mde_device_id = value
            end
            ## 
            ## Gets the ntDomain property value. A logical grouping of computers within a Microsoft Windows network.
            ## @return a string
            ## 
            def nt_domain
                return @nt_domain
            end
            ## 
            ## Sets the ntDomain property value. A logical grouping of computers within a Microsoft Windows network.
            ## @param value Value to set for the ntDomain property.
            ## @return a void
            ## 
            def nt_domain=(value)
                @nt_domain = value
            end
            ## 
            ## Gets the onboardingStatus property value. The status of the machine onboarding to Microsoft Defender for Endpoint. The possible values are: insufficientInfo, onboarded, canBeOnboarded, unsupported, unknownFutureValue.
            ## @return a security_onboarding_status
            ## 
            def onboarding_status
                return @onboarding_status
            end
            ## 
            ## Sets the onboardingStatus property value. The status of the machine onboarding to Microsoft Defender for Endpoint. The possible values are: insufficientInfo, onboarded, canBeOnboarded, unsupported, unknownFutureValue.
            ## @param value Value to set for the onboardingStatus property.
            ## @return a void
            ## 
            def onboarding_status=(value)
                @onboarding_status = value
            end
            ## 
            ## Gets the osBuild property value. The build version for the operating system the device is running.
            ## @return a int64
            ## 
            def os_build
                return @os_build
            end
            ## 
            ## Sets the osBuild property value. The build version for the operating system the device is running.
            ## @param value Value to set for the osBuild property.
            ## @return a void
            ## 
            def os_build=(value)
                @os_build = value
            end
            ## 
            ## Gets the osPlatform property value. The operating system platform the device is running.
            ## @return a string
            ## 
            def os_platform
                return @os_platform
            end
            ## 
            ## Sets the osPlatform property value. The operating system platform the device is running.
            ## @param value Value to set for the osPlatform property.
            ## @return a void
            ## 
            def os_platform=(value)
                @os_platform = value
            end
            ## 
            ## Gets the rbacGroupId property value. The ID of the role-based access control (RBAC) device group.
            ## @return a integer
            ## 
            def rbac_group_id
                return @rbac_group_id
            end
            ## 
            ## Sets the rbacGroupId property value. The ID of the role-based access control (RBAC) device group.
            ## @param value Value to set for the rbacGroupId property.
            ## @return a void
            ## 
            def rbac_group_id=(value)
                @rbac_group_id = value
            end
            ## 
            ## Gets the rbacGroupName property value. The name of the RBAC device group.
            ## @return a string
            ## 
            def rbac_group_name
                return @rbac_group_name
            end
            ## 
            ## Sets the rbacGroupName property value. The name of the RBAC device group.
            ## @param value Value to set for the rbacGroupName property.
            ## @return a void
            ## 
            def rbac_group_name=(value)
                @rbac_group_name = value
            end
            ## 
            ## Gets the riskScore property value. Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: none, informational, low, medium, high, unknownFutureValue.
            ## @return a security_device_risk_score
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: none, informational, low, medium, high, unknownFutureValue.
            ## @param value Value to set for the riskScore property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("azureAdDeviceId", @azure_ad_device_id)
                writer.write_enum_value("defenderAvStatus", @defender_av_status)
                writer.write_string_value("deviceDnsName", @device_dns_name)
                writer.write_string_value("dnsDomain", @dns_domain)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_string_value("hostName", @host_name)
                writer.write_collection_of_primitive_values("ipInterfaces", @ip_interfaces)
                writer.write_string_value("lastExternalIpAddress", @last_external_ip_address)
                writer.write_string_value("lastIpAddress", @last_ip_address)
                writer.write_collection_of_object_values("loggedOnUsers", @logged_on_users)
                writer.write_string_value("mdeDeviceId", @mde_device_id)
                writer.write_string_value("ntDomain", @nt_domain)
                writer.write_enum_value("onboardingStatus", @onboarding_status)
                writer.write_object_value("osBuild", @os_build)
                writer.write_string_value("osPlatform", @os_platform)
                writer.write_number_value("rbacGroupId", @rbac_group_id)
                writer.write_string_value("rbacGroupName", @rbac_group_name)
                writer.write_enum_value("riskScore", @risk_score)
                writer.write_string_value("version", @version)
                writer.write_object_value("vmMetadata", @vm_metadata)
            end
            ## 
            ## Gets the version property value. The version of the operating system platform.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the operating system platform.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
            ## 
            ## Gets the vmMetadata property value. Metadata of the virtual machine (VM) on which Microsoft Defender for Endpoint is running.
            ## @return a security_vm_metadata
            ## 
            def vm_metadata
                return @vm_metadata
            end
            ## 
            ## Sets the vmMetadata property value. Metadata of the virtual machine (VM) on which Microsoft Defender for Endpoint is running.
            ## @param value Value to set for the vmMetadata property.
            ## @return a void
            ## 
            def vm_metadata=(value)
                @vm_metadata = value
            end
        end
    end
end
