require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceHealthAttestationState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # TWhen an Attestation Identity Key (AIK) is present on a device, it indicates that the device has an endorsement key (EK) certificate.
            @attestation_identity_key
            ## 
            # On or Off of BitLocker Drive Encryption
            @bit_locker_status
            ## 
            # The security version number of the Boot Application
            @boot_app_security_version
            ## 
            # When bootDebugging is enabled, the device is used in development and testing
            @boot_debugging
            ## 
            # The security version number of the Boot Application
            @boot_manager_security_version
            ## 
            # The version of the Boot Manager
            @boot_manager_version
            ## 
            # The Boot Revision List that was loaded during initial boot on the attested device
            @boot_revision_list_info
            ## 
            # When code integrity is enabled, code execution is restricted to integrity verified code
            @code_integrity
            ## 
            # The version of the Boot Manager
            @code_integrity_check_version
            ## 
            # The Code Integrity policy that is controlling the security of the boot environment
            @code_integrity_policy
            ## 
            # The DHA report version. (Namespace version)
            @content_namespace_url
            ## 
            # The HealthAttestation state schema version
            @content_version
            ## 
            # DEP Policy defines a set of hardware and software technologies that perform additional checks on memory
            @data_excution_policy
            ## 
            # The DHA report version. (Namespace version)
            @device_health_attestation_status
            ## 
            # ELAM provides protection for the computers in your network when they start up
            @early_launch_anti_malware_driver_protection
            ## 
            # This attribute indicates if DHA is supported for the device
            @health_attestation_supported_status
            ## 
            # This attribute appears if DHA-Service detects an integrity issue
            @health_status_mismatch_info
            ## 
            # The DateTime when device was evaluated or issued to MDM
            @issued_date_time
            ## 
            # The Timestamp of the last update.
            @last_update_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # When operatingSystemKernelDebugging is enabled, the device is used in development and testing
            @operating_system_kernel_debugging
            ## 
            # The Operating System Revision List that was loaded during initial boot on the attested device
            @operating_system_rev_list_info
            ## 
            # Informational attribute that identifies the HASH algorithm that was used by TPM
            @pcr_hash_algorithm
            ## 
            # The measurement that is captured in PCR[0]
            @pcr0
            ## 
            # The number of times a PC device has hibernated or resumed
            @reset_count
            ## 
            # The number of times a PC device has rebooted
            @restart_count
            ## 
            # Safe mode is a troubleshooting option for Windows that starts your computer in a limited state
            @safe_mode
            ## 
            # When Secure Boot is enabled, the core components must have the correct cryptographic signatures
            @secure_boot
            ## 
            # Fingerprint of the Custom Secure Boot Configuration Policy
            @secure_boot_configuration_policy_finger_print
            ## 
            # When test signing is allowed, the device does not enforce signature validation during boot
            @test_signing
            ## 
            # The security version number of the Boot Application
            @tpm_version
            ## 
            # VSM is a container that protects high value assets from a compromised kernel
            @virtual_secure_mode
            ## 
            # Operating system running with limited services that is used to prepare a computer for Windows
            @windows_p_e
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
            ## Gets the attestationIdentityKey property value. TWhen an Attestation Identity Key (AIK) is present on a device, it indicates that the device has an endorsement key (EK) certificate.
            ## @return a string
            ## 
            def attestation_identity_key
                return @attestation_identity_key
            end
            ## 
            ## Sets the attestationIdentityKey property value. TWhen an Attestation Identity Key (AIK) is present on a device, it indicates that the device has an endorsement key (EK) certificate.
            ## @param value Value to set for the attestation_identity_key property.
            ## @return a void
            ## 
            def attestation_identity_key=(value)
                @attestation_identity_key = value
            end
            ## 
            ## Gets the bitLockerStatus property value. On or Off of BitLocker Drive Encryption
            ## @return a string
            ## 
            def bit_locker_status
                return @bit_locker_status
            end
            ## 
            ## Sets the bitLockerStatus property value. On or Off of BitLocker Drive Encryption
            ## @param value Value to set for the bit_locker_status property.
            ## @return a void
            ## 
            def bit_locker_status=(value)
                @bit_locker_status = value
            end
            ## 
            ## Gets the bootAppSecurityVersion property value. The security version number of the Boot Application
            ## @return a string
            ## 
            def boot_app_security_version
                return @boot_app_security_version
            end
            ## 
            ## Sets the bootAppSecurityVersion property value. The security version number of the Boot Application
            ## @param value Value to set for the boot_app_security_version property.
            ## @return a void
            ## 
            def boot_app_security_version=(value)
                @boot_app_security_version = value
            end
            ## 
            ## Gets the bootDebugging property value. When bootDebugging is enabled, the device is used in development and testing
            ## @return a string
            ## 
            def boot_debugging
                return @boot_debugging
            end
            ## 
            ## Sets the bootDebugging property value. When bootDebugging is enabled, the device is used in development and testing
            ## @param value Value to set for the boot_debugging property.
            ## @return a void
            ## 
            def boot_debugging=(value)
                @boot_debugging = value
            end
            ## 
            ## Gets the bootManagerSecurityVersion property value. The security version number of the Boot Application
            ## @return a string
            ## 
            def boot_manager_security_version
                return @boot_manager_security_version
            end
            ## 
            ## Sets the bootManagerSecurityVersion property value. The security version number of the Boot Application
            ## @param value Value to set for the boot_manager_security_version property.
            ## @return a void
            ## 
            def boot_manager_security_version=(value)
                @boot_manager_security_version = value
            end
            ## 
            ## Gets the bootManagerVersion property value. The version of the Boot Manager
            ## @return a string
            ## 
            def boot_manager_version
                return @boot_manager_version
            end
            ## 
            ## Sets the bootManagerVersion property value. The version of the Boot Manager
            ## @param value Value to set for the boot_manager_version property.
            ## @return a void
            ## 
            def boot_manager_version=(value)
                @boot_manager_version = value
            end
            ## 
            ## Gets the bootRevisionListInfo property value. The Boot Revision List that was loaded during initial boot on the attested device
            ## @return a string
            ## 
            def boot_revision_list_info
                return @boot_revision_list_info
            end
            ## 
            ## Sets the bootRevisionListInfo property value. The Boot Revision List that was loaded during initial boot on the attested device
            ## @param value Value to set for the boot_revision_list_info property.
            ## @return a void
            ## 
            def boot_revision_list_info=(value)
                @boot_revision_list_info = value
            end
            ## 
            ## Gets the codeIntegrity property value. When code integrity is enabled, code execution is restricted to integrity verified code
            ## @return a string
            ## 
            def code_integrity
                return @code_integrity
            end
            ## 
            ## Sets the codeIntegrity property value. When code integrity is enabled, code execution is restricted to integrity verified code
            ## @param value Value to set for the code_integrity property.
            ## @return a void
            ## 
            def code_integrity=(value)
                @code_integrity = value
            end
            ## 
            ## Gets the codeIntegrityCheckVersion property value. The version of the Boot Manager
            ## @return a string
            ## 
            def code_integrity_check_version
                return @code_integrity_check_version
            end
            ## 
            ## Sets the codeIntegrityCheckVersion property value. The version of the Boot Manager
            ## @param value Value to set for the code_integrity_check_version property.
            ## @return a void
            ## 
            def code_integrity_check_version=(value)
                @code_integrity_check_version = value
            end
            ## 
            ## Gets the codeIntegrityPolicy property value. The Code Integrity policy that is controlling the security of the boot environment
            ## @return a string
            ## 
            def code_integrity_policy
                return @code_integrity_policy
            end
            ## 
            ## Sets the codeIntegrityPolicy property value. The Code Integrity policy that is controlling the security of the boot environment
            ## @param value Value to set for the code_integrity_policy property.
            ## @return a void
            ## 
            def code_integrity_policy=(value)
                @code_integrity_policy = value
            end
            ## 
            ## Instantiates a new deviceHealthAttestationState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentNamespaceUrl property value. The DHA report version. (Namespace version)
            ## @return a string
            ## 
            def content_namespace_url
                return @content_namespace_url
            end
            ## 
            ## Sets the contentNamespaceUrl property value. The DHA report version. (Namespace version)
            ## @param value Value to set for the content_namespace_url property.
            ## @return a void
            ## 
            def content_namespace_url=(value)
                @content_namespace_url = value
            end
            ## 
            ## Gets the contentVersion property value. The HealthAttestation state schema version
            ## @return a string
            ## 
            def content_version
                return @content_version
            end
            ## 
            ## Sets the contentVersion property value. The HealthAttestation state schema version
            ## @param value Value to set for the content_version property.
            ## @return a void
            ## 
            def content_version=(value)
                @content_version = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_health_attestation_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceHealthAttestationState.new
            end
            ## 
            ## Gets the dataExcutionPolicy property value. DEP Policy defines a set of hardware and software technologies that perform additional checks on memory
            ## @return a string
            ## 
            def data_excution_policy
                return @data_excution_policy
            end
            ## 
            ## Sets the dataExcutionPolicy property value. DEP Policy defines a set of hardware and software technologies that perform additional checks on memory
            ## @param value Value to set for the data_excution_policy property.
            ## @return a void
            ## 
            def data_excution_policy=(value)
                @data_excution_policy = value
            end
            ## 
            ## Gets the deviceHealthAttestationStatus property value. The DHA report version. (Namespace version)
            ## @return a string
            ## 
            def device_health_attestation_status
                return @device_health_attestation_status
            end
            ## 
            ## Sets the deviceHealthAttestationStatus property value. The DHA report version. (Namespace version)
            ## @param value Value to set for the device_health_attestation_status property.
            ## @return a void
            ## 
            def device_health_attestation_status=(value)
                @device_health_attestation_status = value
            end
            ## 
            ## Gets the earlyLaunchAntiMalwareDriverProtection property value. ELAM provides protection for the computers in your network when they start up
            ## @return a string
            ## 
            def early_launch_anti_malware_driver_protection
                return @early_launch_anti_malware_driver_protection
            end
            ## 
            ## Sets the earlyLaunchAntiMalwareDriverProtection property value. ELAM provides protection for the computers in your network when they start up
            ## @param value Value to set for the early_launch_anti_malware_driver_protection property.
            ## @return a void
            ## 
            def early_launch_anti_malware_driver_protection=(value)
                @early_launch_anti_malware_driver_protection = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attestationIdentityKey" => lambda {|n| @attestation_identity_key = n.get_string_value() },
                    "bitLockerStatus" => lambda {|n| @bit_locker_status = n.get_string_value() },
                    "bootAppSecurityVersion" => lambda {|n| @boot_app_security_version = n.get_string_value() },
                    "bootDebugging" => lambda {|n| @boot_debugging = n.get_string_value() },
                    "bootManagerSecurityVersion" => lambda {|n| @boot_manager_security_version = n.get_string_value() },
                    "bootManagerVersion" => lambda {|n| @boot_manager_version = n.get_string_value() },
                    "bootRevisionListInfo" => lambda {|n| @boot_revision_list_info = n.get_string_value() },
                    "codeIntegrity" => lambda {|n| @code_integrity = n.get_string_value() },
                    "codeIntegrityCheckVersion" => lambda {|n| @code_integrity_check_version = n.get_string_value() },
                    "codeIntegrityPolicy" => lambda {|n| @code_integrity_policy = n.get_string_value() },
                    "contentNamespaceUrl" => lambda {|n| @content_namespace_url = n.get_string_value() },
                    "contentVersion" => lambda {|n| @content_version = n.get_string_value() },
                    "dataExcutionPolicy" => lambda {|n| @data_excution_policy = n.get_string_value() },
                    "deviceHealthAttestationStatus" => lambda {|n| @device_health_attestation_status = n.get_string_value() },
                    "earlyLaunchAntiMalwareDriverProtection" => lambda {|n| @early_launch_anti_malware_driver_protection = n.get_string_value() },
                    "healthAttestationSupportedStatus" => lambda {|n| @health_attestation_supported_status = n.get_string_value() },
                    "healthStatusMismatchInfo" => lambda {|n| @health_status_mismatch_info = n.get_string_value() },
                    "issuedDateTime" => lambda {|n| @issued_date_time = n.get_date_time_value() },
                    "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystemKernelDebugging" => lambda {|n| @operating_system_kernel_debugging = n.get_string_value() },
                    "operatingSystemRevListInfo" => lambda {|n| @operating_system_rev_list_info = n.get_string_value() },
                    "pcrHashAlgorithm" => lambda {|n| @pcr_hash_algorithm = n.get_string_value() },
                    "pcr0" => lambda {|n| @pcr0 = n.get_string_value() },
                    "resetCount" => lambda {|n| @reset_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "restartCount" => lambda {|n| @restart_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "safeMode" => lambda {|n| @safe_mode = n.get_string_value() },
                    "secureBoot" => lambda {|n| @secure_boot = n.get_string_value() },
                    "secureBootConfigurationPolicyFingerPrint" => lambda {|n| @secure_boot_configuration_policy_finger_print = n.get_string_value() },
                    "testSigning" => lambda {|n| @test_signing = n.get_string_value() },
                    "tpmVersion" => lambda {|n| @tpm_version = n.get_string_value() },
                    "virtualSecureMode" => lambda {|n| @virtual_secure_mode = n.get_string_value() },
                    "windowsPE" => lambda {|n| @windows_p_e = n.get_string_value() },
                }
            end
            ## 
            ## Gets the healthAttestationSupportedStatus property value. This attribute indicates if DHA is supported for the device
            ## @return a string
            ## 
            def health_attestation_supported_status
                return @health_attestation_supported_status
            end
            ## 
            ## Sets the healthAttestationSupportedStatus property value. This attribute indicates if DHA is supported for the device
            ## @param value Value to set for the health_attestation_supported_status property.
            ## @return a void
            ## 
            def health_attestation_supported_status=(value)
                @health_attestation_supported_status = value
            end
            ## 
            ## Gets the healthStatusMismatchInfo property value. This attribute appears if DHA-Service detects an integrity issue
            ## @return a string
            ## 
            def health_status_mismatch_info
                return @health_status_mismatch_info
            end
            ## 
            ## Sets the healthStatusMismatchInfo property value. This attribute appears if DHA-Service detects an integrity issue
            ## @param value Value to set for the health_status_mismatch_info property.
            ## @return a void
            ## 
            def health_status_mismatch_info=(value)
                @health_status_mismatch_info = value
            end
            ## 
            ## Gets the issuedDateTime property value. The DateTime when device was evaluated or issued to MDM
            ## @return a date_time
            ## 
            def issued_date_time
                return @issued_date_time
            end
            ## 
            ## Sets the issuedDateTime property value. The DateTime when device was evaluated or issued to MDM
            ## @param value Value to set for the issued_date_time property.
            ## @return a void
            ## 
            def issued_date_time=(value)
                @issued_date_time = value
            end
            ## 
            ## Gets the lastUpdateDateTime property value. The Timestamp of the last update.
            ## @return a string
            ## 
            def last_update_date_time
                return @last_update_date_time
            end
            ## 
            ## Sets the lastUpdateDateTime property value. The Timestamp of the last update.
            ## @param value Value to set for the last_update_date_time property.
            ## @return a void
            ## 
            def last_update_date_time=(value)
                @last_update_date_time = value
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
            ## Gets the operatingSystemKernelDebugging property value. When operatingSystemKernelDebugging is enabled, the device is used in development and testing
            ## @return a string
            ## 
            def operating_system_kernel_debugging
                return @operating_system_kernel_debugging
            end
            ## 
            ## Sets the operatingSystemKernelDebugging property value. When operatingSystemKernelDebugging is enabled, the device is used in development and testing
            ## @param value Value to set for the operating_system_kernel_debugging property.
            ## @return a void
            ## 
            def operating_system_kernel_debugging=(value)
                @operating_system_kernel_debugging = value
            end
            ## 
            ## Gets the operatingSystemRevListInfo property value. The Operating System Revision List that was loaded during initial boot on the attested device
            ## @return a string
            ## 
            def operating_system_rev_list_info
                return @operating_system_rev_list_info
            end
            ## 
            ## Sets the operatingSystemRevListInfo property value. The Operating System Revision List that was loaded during initial boot on the attested device
            ## @param value Value to set for the operating_system_rev_list_info property.
            ## @return a void
            ## 
            def operating_system_rev_list_info=(value)
                @operating_system_rev_list_info = value
            end
            ## 
            ## Gets the pcrHashAlgorithm property value. Informational attribute that identifies the HASH algorithm that was used by TPM
            ## @return a string
            ## 
            def pcr_hash_algorithm
                return @pcr_hash_algorithm
            end
            ## 
            ## Sets the pcrHashAlgorithm property value. Informational attribute that identifies the HASH algorithm that was used by TPM
            ## @param value Value to set for the pcr_hash_algorithm property.
            ## @return a void
            ## 
            def pcr_hash_algorithm=(value)
                @pcr_hash_algorithm = value
            end
            ## 
            ## Gets the pcr0 property value. The measurement that is captured in PCR[0]
            ## @return a string
            ## 
            def pcr0
                return @pcr0
            end
            ## 
            ## Sets the pcr0 property value. The measurement that is captured in PCR[0]
            ## @param value Value to set for the pcr0 property.
            ## @return a void
            ## 
            def pcr0=(value)
                @pcr0 = value
            end
            ## 
            ## Gets the resetCount property value. The number of times a PC device has hibernated or resumed
            ## @return a int64
            ## 
            def reset_count
                return @reset_count
            end
            ## 
            ## Sets the resetCount property value. The number of times a PC device has hibernated or resumed
            ## @param value Value to set for the reset_count property.
            ## @return a void
            ## 
            def reset_count=(value)
                @reset_count = value
            end
            ## 
            ## Gets the restartCount property value. The number of times a PC device has rebooted
            ## @return a int64
            ## 
            def restart_count
                return @restart_count
            end
            ## 
            ## Sets the restartCount property value. The number of times a PC device has rebooted
            ## @param value Value to set for the restart_count property.
            ## @return a void
            ## 
            def restart_count=(value)
                @restart_count = value
            end
            ## 
            ## Gets the safeMode property value. Safe mode is a troubleshooting option for Windows that starts your computer in a limited state
            ## @return a string
            ## 
            def safe_mode
                return @safe_mode
            end
            ## 
            ## Sets the safeMode property value. Safe mode is a troubleshooting option for Windows that starts your computer in a limited state
            ## @param value Value to set for the safe_mode property.
            ## @return a void
            ## 
            def safe_mode=(value)
                @safe_mode = value
            end
            ## 
            ## Gets the secureBoot property value. When Secure Boot is enabled, the core components must have the correct cryptographic signatures
            ## @return a string
            ## 
            def secure_boot
                return @secure_boot
            end
            ## 
            ## Sets the secureBoot property value. When Secure Boot is enabled, the core components must have the correct cryptographic signatures
            ## @param value Value to set for the secure_boot property.
            ## @return a void
            ## 
            def secure_boot=(value)
                @secure_boot = value
            end
            ## 
            ## Gets the secureBootConfigurationPolicyFingerPrint property value. Fingerprint of the Custom Secure Boot Configuration Policy
            ## @return a string
            ## 
            def secure_boot_configuration_policy_finger_print
                return @secure_boot_configuration_policy_finger_print
            end
            ## 
            ## Sets the secureBootConfigurationPolicyFingerPrint property value. Fingerprint of the Custom Secure Boot Configuration Policy
            ## @param value Value to set for the secure_boot_configuration_policy_finger_print property.
            ## @return a void
            ## 
            def secure_boot_configuration_policy_finger_print=(value)
                @secure_boot_configuration_policy_finger_print = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("attestationIdentityKey", @attestation_identity_key)
                writer.write_string_value("bitLockerStatus", @bit_locker_status)
                writer.write_string_value("bootAppSecurityVersion", @boot_app_security_version)
                writer.write_string_value("bootDebugging", @boot_debugging)
                writer.write_string_value("bootManagerSecurityVersion", @boot_manager_security_version)
                writer.write_string_value("bootManagerVersion", @boot_manager_version)
                writer.write_string_value("bootRevisionListInfo", @boot_revision_list_info)
                writer.write_string_value("codeIntegrity", @code_integrity)
                writer.write_string_value("codeIntegrityCheckVersion", @code_integrity_check_version)
                writer.write_string_value("codeIntegrityPolicy", @code_integrity_policy)
                writer.write_string_value("contentNamespaceUrl", @content_namespace_url)
                writer.write_string_value("contentVersion", @content_version)
                writer.write_string_value("dataExcutionPolicy", @data_excution_policy)
                writer.write_string_value("deviceHealthAttestationStatus", @device_health_attestation_status)
                writer.write_string_value("earlyLaunchAntiMalwareDriverProtection", @early_launch_anti_malware_driver_protection)
                writer.write_string_value("healthAttestationSupportedStatus", @health_attestation_supported_status)
                writer.write_string_value("healthStatusMismatchInfo", @health_status_mismatch_info)
                writer.write_date_time_value("issuedDateTime", @issued_date_time)
                writer.write_string_value("lastUpdateDateTime", @last_update_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatingSystemKernelDebugging", @operating_system_kernel_debugging)
                writer.write_string_value("operatingSystemRevListInfo", @operating_system_rev_list_info)
                writer.write_string_value("pcrHashAlgorithm", @pcr_hash_algorithm)
                writer.write_string_value("pcr0", @pcr0)
                writer.write_object_value("resetCount", @reset_count)
                writer.write_object_value("restartCount", @restart_count)
                writer.write_string_value("safeMode", @safe_mode)
                writer.write_string_value("secureBoot", @secure_boot)
                writer.write_string_value("secureBootConfigurationPolicyFingerPrint", @secure_boot_configuration_policy_finger_print)
                writer.write_string_value("testSigning", @test_signing)
                writer.write_string_value("tpmVersion", @tpm_version)
                writer.write_string_value("virtualSecureMode", @virtual_secure_mode)
                writer.write_string_value("windowsPE", @windows_p_e)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the testSigning property value. When test signing is allowed, the device does not enforce signature validation during boot
            ## @return a string
            ## 
            def test_signing
                return @test_signing
            end
            ## 
            ## Sets the testSigning property value. When test signing is allowed, the device does not enforce signature validation during boot
            ## @param value Value to set for the test_signing property.
            ## @return a void
            ## 
            def test_signing=(value)
                @test_signing = value
            end
            ## 
            ## Gets the tpmVersion property value. The security version number of the Boot Application
            ## @return a string
            ## 
            def tpm_version
                return @tpm_version
            end
            ## 
            ## Sets the tpmVersion property value. The security version number of the Boot Application
            ## @param value Value to set for the tpm_version property.
            ## @return a void
            ## 
            def tpm_version=(value)
                @tpm_version = value
            end
            ## 
            ## Gets the virtualSecureMode property value. VSM is a container that protects high value assets from a compromised kernel
            ## @return a string
            ## 
            def virtual_secure_mode
                return @virtual_secure_mode
            end
            ## 
            ## Sets the virtualSecureMode property value. VSM is a container that protects high value assets from a compromised kernel
            ## @param value Value to set for the virtual_secure_mode property.
            ## @return a void
            ## 
            def virtual_secure_mode=(value)
                @virtual_secure_mode = value
            end
            ## 
            ## Gets the windowsPE property value. Operating system running with limited services that is used to prepare a computer for Windows
            ## @return a string
            ## 
            def windows_p_e
                return @windows_p_e
            end
            ## 
            ## Sets the windowsPE property value. Operating system running with limited services that is used to prepare a computer for Windows
            ## @param value Value to set for the windows_p_e property.
            ## @return a void
            ## 
            def windows_p_e=(value)
                @windows_p_e = value
            end
        end
    end
end
