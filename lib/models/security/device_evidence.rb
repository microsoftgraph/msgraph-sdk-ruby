require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class DeviceEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # A unique identifier assigned to a device by Azure Active Directory (Azure AD) when device is Azure AD-joined.
                @azure_ad_device_id
                ## 
                # State of the Defender AntiMalware engine. The possible values are: notReporting, disabled, notUpdated, updated, unknown, notSupported, unknownFutureValue.
                @defender_av_status
                ## 
                # The fully qualified domain name (FQDN) for the device.
                @device_dns_name
                ## 
                # The date and time when the device was first seen.
                @first_seen_date_time
                ## 
                # The health state of the device.The possible values are: active, inactive, impairedCommunication, noSensorData, noSensorDataImpairedCommunication, unknown, unknownFutureValue.
                @health_status
                ## 
                # Users that were logged on the machine during the time of the alert.
                @logged_on_users
                ## 
                # A unique identifier assigned to a device by Microsoft Defender for Endpoint.
                @mde_device_id
                ## 
                # The status of the machine onboarding to Microsoft Defender for Endpoint.The possible values are: insufficientInfo, onboarded, canBeOnboarded, unsupported, unknownFutureValue.
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
                ## Gets the azureAdDeviceId property value. A unique identifier assigned to a device by Azure Active Directory (Azure AD) when device is Azure AD-joined.
                ## @return a string
                ## 
                def azure_ad_device_id
                    return @azure_ad_device_id
                end
                ## 
                ## Sets the azureAdDeviceId property value. A unique identifier assigned to a device by Azure Active Directory (Azure AD) when device is Azure AD-joined.
                ## @param value Value to set for the azure_ad_device_id property.
                ## @return a void
                ## 
                def azure_ad_device_id=(value)
                    @azure_ad_device_id = value
                end
                ## 
                ## Instantiates a new DeviceEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a device_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DeviceEvidence.new
                end
                ## 
                ## Gets the defenderAvStatus property value. State of the Defender AntiMalware engine. The possible values are: notReporting, disabled, notUpdated, updated, unknown, notSupported, unknownFutureValue.
                ## @return a defender_av_status
                ## 
                def defender_av_status
                    return @defender_av_status
                end
                ## 
                ## Sets the defenderAvStatus property value. State of the Defender AntiMalware engine. The possible values are: notReporting, disabled, notUpdated, updated, unknown, notSupported, unknownFutureValue.
                ## @param value Value to set for the defender_av_status property.
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
                ## @param value Value to set for the device_dns_name property.
                ## @return a void
                ## 
                def device_dns_name=(value)
                    @device_dns_name = value
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
                ## @param value Value to set for the first_seen_date_time property.
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
                        "defenderAvStatus" => lambda {|n| @defender_av_status = n.get_enum_value(MicrosoftGraph::Models::Security::DefenderAvStatus) },
                        "deviceDnsName" => lambda {|n| @device_dns_name = n.get_string_value() },
                        "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                        "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraph::Models::Security::DeviceHealthStatus) },
                        "loggedOnUsers" => lambda {|n| @logged_on_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::LoggedOnUser.create_from_discriminator_value(pn) }) },
                        "mdeDeviceId" => lambda {|n| @mde_device_id = n.get_string_value() },
                        "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraph::Models::Security::OnboardingStatus) },
                        "osBuild" => lambda {|n| @os_build = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "osPlatform" => lambda {|n| @os_platform = n.get_string_value() },
                        "rbacGroupId" => lambda {|n| @rbac_group_id = n.get_number_value() },
                        "rbacGroupName" => lambda {|n| @rbac_group_name = n.get_string_value() },
                        "riskScore" => lambda {|n| @risk_score = n.get_enum_value(MicrosoftGraph::Models::Security::DeviceRiskScore) },
                        "version" => lambda {|n| @version = n.get_string_value() },
                        "vmMetadata" => lambda {|n| @vm_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::VmMetadata.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the healthStatus property value. The health state of the device.The possible values are: active, inactive, impairedCommunication, noSensorData, noSensorDataImpairedCommunication, unknown, unknownFutureValue.
                ## @return a device_health_status
                ## 
                def health_status
                    return @health_status
                end
                ## 
                ## Sets the healthStatus property value. The health state of the device.The possible values are: active, inactive, impairedCommunication, noSensorData, noSensorDataImpairedCommunication, unknown, unknownFutureValue.
                ## @param value Value to set for the health_status property.
                ## @return a void
                ## 
                def health_status=(value)
                    @health_status = value
                end
                ## 
                ## Gets the loggedOnUsers property value. Users that were logged on the machine during the time of the alert.
                ## @return a logged_on_user
                ## 
                def logged_on_users
                    return @logged_on_users
                end
                ## 
                ## Sets the loggedOnUsers property value. Users that were logged on the machine during the time of the alert.
                ## @param value Value to set for the logged_on_users property.
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
                ## @param value Value to set for the mde_device_id property.
                ## @return a void
                ## 
                def mde_device_id=(value)
                    @mde_device_id = value
                end
                ## 
                ## Gets the onboardingStatus property value. The status of the machine onboarding to Microsoft Defender for Endpoint.The possible values are: insufficientInfo, onboarded, canBeOnboarded, unsupported, unknownFutureValue.
                ## @return a onboarding_status
                ## 
                def onboarding_status
                    return @onboarding_status
                end
                ## 
                ## Sets the onboardingStatus property value. The status of the machine onboarding to Microsoft Defender for Endpoint.The possible values are: insufficientInfo, onboarded, canBeOnboarded, unsupported, unknownFutureValue.
                ## @param value Value to set for the onboarding_status property.
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
                ## @param value Value to set for the os_build property.
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
                ## @param value Value to set for the os_platform property.
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
                ## @param value Value to set for the rbac_group_id property.
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
                ## @param value Value to set for the rbac_group_name property.
                ## @return a void
                ## 
                def rbac_group_name=(value)
                    @rbac_group_name = value
                end
                ## 
                ## Gets the riskScore property value. Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: none, informational, low, medium, high, unknownFutureValue.
                ## @return a device_risk_score
                ## 
                def risk_score
                    return @risk_score
                end
                ## 
                ## Sets the riskScore property value. Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: none, informational, low, medium, high, unknownFutureValue.
                ## @param value Value to set for the risk_score property.
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
                    writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                    writer.write_enum_value("healthStatus", @health_status)
                    writer.write_collection_of_object_values("loggedOnUsers", @logged_on_users)
                    writer.write_string_value("mdeDeviceId", @mde_device_id)
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
                ## @return a vm_metadata
                ## 
                def vm_metadata
                    return @vm_metadata
                end
                ## 
                ## Sets the vmMetadata property value. Metadata of the virtual machine (VM) on which Microsoft Defender for Endpoint is running.
                ## @param value Value to set for the vm_metadata property.
                ## @return a void
                ## 
                def vm_metadata=(value)
                    @vm_metadata = value
                end
            end
        end
    end
end
