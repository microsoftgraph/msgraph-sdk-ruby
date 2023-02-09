require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Device < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # true if the account is enabled; otherwise, false. Required. Default is true.  Supports $filter (eq, ne, not, in). Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
            @account_enabled
            ## 
            # For internal use only. Not nullable. Supports $filter (eq, not, ge, le).
            @alternative_security_ids
            ## 
            # The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter (eq, ne, not, ge, le, and eq on null values) and $orderBy.
            @approximate_last_sign_in_date_time
            ## 
            # The timestamp when the device is no longer deemed compliant. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @compliance_expiration_date_time
            ## 
            # Unique identifier set by Azure Device Registration Service at the time of registration. This is an alternate key that can be used to reference the device object. Supports $filter (eq, ne, not, startsWith).
            @device_id
            ## 
            # For internal use only. Set to null.
            @device_metadata
            ## 
            # For internal use only.
            @device_version
            ## 
            # The display name for the device. Required. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            @display_name
            ## 
            # The collection of open extensions defined for the device. Read-only. Nullable.
            @extensions
            ## 
            # true if the device complies with Mobile Device Management (MDM) policies; otherwise, false. Read-only. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, not).
            @is_compliant
            ## 
            # true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, not).
            @is_managed
            ## 
            # Application identifier used to register device into MDM. Read-only. Supports $filter (eq, ne, not, startsWith).
            @mdm_app_id
            ## 
            # Groups and administrative units that this device is a member of. Read-only. Nullable. Supports $expand.
            @member_of
            ## 
            # The last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only. Supports $filter (eq, ne, not, ge, le, in).
            @on_premises_last_sync_date_time
            ## 
            # true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            @on_premises_sync_enabled
            ## 
            # The type of operating system on the device. Required. Supports $filter (eq, ne, not, ge, le, startsWith, and eq on null values).
            @operating_system
            ## 
            # The version of the operating system on the device. Required. Supports $filter (eq, ne, not, ge, le, startsWith, and eq on null values).
            @operating_system_version
            ## 
            # For internal use only. Not nullable. Supports $filter (eq, not, ge, le, startsWith,/$count eq 0, /$count ne 0).
            @physical_ids
            ## 
            # The profile type of the device. Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
            @profile_type
            ## 
            # The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
            @registered_owners
            ## 
            # Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
            @registered_users
            ## 
            # List of labels applied to the device by the system. Supports $filter (/$count eq 0, /$count ne 0).
            @system_labels
            ## 
            # Groups and administrative units that the device is a member of. This operation is transitive. Supports $expand.
            @transitive_member_of
            ## 
            # Type of trust for the joined device. Read-only. Possible values:  Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD). For more details, see Introduction to device management in Azure Active Directory
            @trust_type
            ## 
            ## Gets the accountEnabled property value. true if the account is enabled; otherwise, false. Required. Default is true.  Supports $filter (eq, ne, not, in). Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
            ## @return a boolean
            ## 
            def account_enabled
                return @account_enabled
            end
            ## 
            ## Sets the accountEnabled property value. true if the account is enabled; otherwise, false. Required. Default is true.  Supports $filter (eq, ne, not, in). Only callers in Global Administrator and Cloud Device Administrator roles can set this property.
            ## @param value Value to set for the account_enabled property.
            ## @return a void
            ## 
            def account_enabled=(value)
                @account_enabled = value
            end
            ## 
            ## Gets the alternativeSecurityIds property value. For internal use only. Not nullable. Supports $filter (eq, not, ge, le).
            ## @return a alternative_security_id
            ## 
            def alternative_security_ids
                return @alternative_security_ids
            end
            ## 
            ## Sets the alternativeSecurityIds property value. For internal use only. Not nullable. Supports $filter (eq, not, ge, le).
            ## @param value Value to set for the alternative_security_ids property.
            ## @return a void
            ## 
            def alternative_security_ids=(value)
                @alternative_security_ids = value
            end
            ## 
            ## Gets the approximateLastSignInDateTime property value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter (eq, ne, not, ge, le, and eq on null values) and $orderBy.
            ## @return a date_time
            ## 
            def approximate_last_sign_in_date_time
                return @approximate_last_sign_in_date_time
            end
            ## 
            ## Sets the approximateLastSignInDateTime property value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Supports $filter (eq, ne, not, ge, le, and eq on null values) and $orderBy.
            ## @param value Value to set for the approximate_last_sign_in_date_time property.
            ## @return a void
            ## 
            def approximate_last_sign_in_date_time=(value)
                @approximate_last_sign_in_date_time = value
            end
            ## 
            ## Gets the complianceExpirationDateTime property value. The timestamp when the device is no longer deemed compliant. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def compliance_expiration_date_time
                return @compliance_expiration_date_time
            end
            ## 
            ## Sets the complianceExpirationDateTime property value. The timestamp when the device is no longer deemed compliant. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the compliance_expiration_date_time property.
            ## @return a void
            ## 
            def compliance_expiration_date_time=(value)
                @compliance_expiration_date_time = value
            end
            ## 
            ## Instantiates a new device and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.device"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Device.new
            end
            ## 
            ## Gets the deviceId property value. Unique identifier set by Azure Device Registration Service at the time of registration. This is an alternate key that can be used to reference the device object. Supports $filter (eq, ne, not, startsWith).
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. Unique identifier set by Azure Device Registration Service at the time of registration. This is an alternate key that can be used to reference the device object. Supports $filter (eq, ne, not, startsWith).
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceMetadata property value. For internal use only. Set to null.
            ## @return a string
            ## 
            def device_metadata
                return @device_metadata
            end
            ## 
            ## Sets the deviceMetadata property value. For internal use only. Set to null.
            ## @param value Value to set for the device_metadata property.
            ## @return a void
            ## 
            def device_metadata=(value)
                @device_metadata = value
            end
            ## 
            ## Gets the deviceVersion property value. For internal use only.
            ## @return a integer
            ## 
            def device_version
                return @device_version
            end
            ## 
            ## Sets the deviceVersion property value. For internal use only.
            ## @param value Value to set for the device_version property.
            ## @return a void
            ## 
            def device_version=(value)
                @device_version = value
            end
            ## 
            ## Gets the displayName property value. The display name for the device. Required. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the device. Required. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the device. Read-only. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the device. Read-only. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountEnabled" => lambda {|n| @account_enabled = n.get_boolean_value() },
                    "alternativeSecurityIds" => lambda {|n| @alternative_security_ids = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AlternativeSecurityId.create_from_discriminator_value(pn) }) },
                    "approximateLastSignInDateTime" => lambda {|n| @approximate_last_sign_in_date_time = n.get_date_time_value() },
                    "complianceExpirationDateTime" => lambda {|n| @compliance_expiration_date_time = n.get_date_time_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceMetadata" => lambda {|n| @device_metadata = n.get_string_value() },
                    "deviceVersion" => lambda {|n| @device_version = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "isCompliant" => lambda {|n| @is_compliant = n.get_boolean_value() },
                    "isManaged" => lambda {|n| @is_managed = n.get_boolean_value() },
                    "mdmAppId" => lambda {|n| @mdm_app_id = n.get_string_value() },
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "onPremisesLastSyncDateTime" => lambda {|n| @on_premises_last_sync_date_time = n.get_date_time_value() },
                    "onPremisesSyncEnabled" => lambda {|n| @on_premises_sync_enabled = n.get_boolean_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "operatingSystemVersion" => lambda {|n| @operating_system_version = n.get_string_value() },
                    "physicalIds" => lambda {|n| @physical_ids = n.get_collection_of_primitive_values(String) },
                    "profileType" => lambda {|n| @profile_type = n.get_string_value() },
                    "registeredOwners" => lambda {|n| @registered_owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "registeredUsers" => lambda {|n| @registered_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "systemLabels" => lambda {|n| @system_labels = n.get_collection_of_primitive_values(String) },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "trustType" => lambda {|n| @trust_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isCompliant property value. true if the device complies with Mobile Device Management (MDM) policies; otherwise, false. Read-only. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, not).
            ## @return a boolean
            ## 
            def is_compliant
                return @is_compliant
            end
            ## 
            ## Sets the isCompliant property value. true if the device complies with Mobile Device Management (MDM) policies; otherwise, false. Read-only. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, not).
            ## @param value Value to set for the is_compliant property.
            ## @return a void
            ## 
            def is_compliant=(value)
                @is_compliant = value
            end
            ## 
            ## Gets the isManaged property value. true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, not).
            ## @return a boolean
            ## 
            def is_managed
                return @is_managed
            end
            ## 
            ## Sets the isManaged property value. true if the device is managed by a Mobile Device Management (MDM) app; otherwise, false. This can only be updated by Intune for any device OS type or by an approved MDM app for Windows OS devices. Supports $filter (eq, ne, not).
            ## @param value Value to set for the is_managed property.
            ## @return a void
            ## 
            def is_managed=(value)
                @is_managed = value
            end
            ## 
            ## Gets the mdmAppId property value. Application identifier used to register device into MDM. Read-only. Supports $filter (eq, ne, not, startsWith).
            ## @return a string
            ## 
            def mdm_app_id
                return @mdm_app_id
            end
            ## 
            ## Sets the mdmAppId property value. Application identifier used to register device into MDM. Read-only. Supports $filter (eq, ne, not, startsWith).
            ## @param value Value to set for the mdm_app_id property.
            ## @return a void
            ## 
            def mdm_app_id=(value)
                @mdm_app_id = value
            end
            ## 
            ## Gets the memberOf property value. Groups and administrative units that this device is a member of. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. Groups and administrative units that this device is a member of. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the member_of property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. The last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only. Supports $filter (eq, ne, not, ge, le, in).
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. The last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Read-only. Supports $filter (eq, ne, not, ge, le, in).
            ## @param value Value to set for the on_premises_last_sync_date_time property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @param value Value to set for the on_premises_sync_enabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the operatingSystem property value. The type of operating system on the device. Required. Supports $filter (eq, ne, not, ge, le, startsWith, and eq on null values).
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The type of operating system on the device. Required. Supports $filter (eq, ne, not, ge, le, startsWith, and eq on null values).
            ## @param value Value to set for the operating_system property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the operatingSystemVersion property value. The version of the operating system on the device. Required. Supports $filter (eq, ne, not, ge, le, startsWith, and eq on null values).
            ## @return a string
            ## 
            def operating_system_version
                return @operating_system_version
            end
            ## 
            ## Sets the operatingSystemVersion property value. The version of the operating system on the device. Required. Supports $filter (eq, ne, not, ge, le, startsWith, and eq on null values).
            ## @param value Value to set for the operating_system_version property.
            ## @return a void
            ## 
            def operating_system_version=(value)
                @operating_system_version = value
            end
            ## 
            ## Gets the physicalIds property value. For internal use only. Not nullable. Supports $filter (eq, not, ge, le, startsWith,/$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def physical_ids
                return @physical_ids
            end
            ## 
            ## Sets the physicalIds property value. For internal use only. Not nullable. Supports $filter (eq, not, ge, le, startsWith,/$count eq 0, /$count ne 0).
            ## @param value Value to set for the physical_ids property.
            ## @return a void
            ## 
            def physical_ids=(value)
                @physical_ids = value
            end
            ## 
            ## Gets the profileType property value. The profile type of the device. Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
            ## @return a string
            ## 
            def profile_type
                return @profile_type
            end
            ## 
            ## Sets the profileType property value. The profile type of the device. Possible values: RegisteredDevice (default), SecureVM, Printer, Shared, IoT.
            ## @param value Value to set for the profile_type property.
            ## @return a void
            ## 
            def profile_type=(value)
                @profile_type = value
            end
            ## 
            ## Gets the registeredOwners property value. The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def registered_owners
                return @registered_owners
            end
            ## 
            ## Sets the registeredOwners property value. The user that cloud joined the device or registered their personal device. The registered owner is set at the time of registration. Currently, there can be only one owner. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the registered_owners property.
            ## @return a void
            ## 
            def registered_owners=(value)
                @registered_owners = value
            end
            ## 
            ## Gets the registeredUsers property value. Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def registered_users
                return @registered_users
            end
            ## 
            ## Sets the registeredUsers property value. Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the registered_users property.
            ## @return a void
            ## 
            def registered_users=(value)
                @registered_users = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("accountEnabled", @account_enabled)
                writer.write_collection_of_object_values("alternativeSecurityIds", @alternative_security_ids)
                writer.write_date_time_value("approximateLastSignInDateTime", @approximate_last_sign_in_date_time)
                writer.write_date_time_value("complianceExpirationDateTime", @compliance_expiration_date_time)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceMetadata", @device_metadata)
                writer.write_number_value("deviceVersion", @device_version)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_boolean_value("isCompliant", @is_compliant)
                writer.write_boolean_value("isManaged", @is_managed)
                writer.write_string_value("mdmAppId", @mdm_app_id)
                writer.write_collection_of_object_values("memberOf", @member_of)
                writer.write_date_time_value("onPremisesLastSyncDateTime", @on_premises_last_sync_date_time)
                writer.write_boolean_value("onPremisesSyncEnabled", @on_premises_sync_enabled)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_string_value("operatingSystemVersion", @operating_system_version)
                writer.write_collection_of_primitive_values("physicalIds", @physical_ids)
                writer.write_string_value("profileType", @profile_type)
                writer.write_collection_of_object_values("registeredOwners", @registered_owners)
                writer.write_collection_of_object_values("registeredUsers", @registered_users)
                writer.write_collection_of_primitive_values("systemLabels", @system_labels)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
                writer.write_string_value("trustType", @trust_type)
            end
            ## 
            ## Gets the systemLabels property value. List of labels applied to the device by the system. Supports $filter (/$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def system_labels
                return @system_labels
            end
            ## 
            ## Sets the systemLabels property value. List of labels applied to the device by the system. Supports $filter (/$count eq 0, /$count ne 0).
            ## @param value Value to set for the system_labels property.
            ## @return a void
            ## 
            def system_labels=(value)
                @system_labels = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. Groups and administrative units that the device is a member of. This operation is transitive. Supports $expand.
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. Groups and administrative units that the device is a member of. This operation is transitive. Supports $expand.
            ## @param value Value to set for the transitive_member_of property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
            ## 
            ## Gets the trustType property value. Type of trust for the joined device. Read-only. Possible values:  Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD). For more details, see Introduction to device management in Azure Active Directory
            ## @return a string
            ## 
            def trust_type
                return @trust_type
            end
            ## 
            ## Sets the trustType property value. Type of trust for the joined device. Read-only. Possible values:  Workplace (indicates bring your own personal devices), AzureAd (Cloud only joined devices), ServerAd (on-premises domain joined devices joined to Azure AD). For more details, see Introduction to device management in Azure Active Directory
            ## @param value Value to set for the trust_type property.
            ## @return a void
            ## 
            def trust_type=(value)
                @trust_type = value
            end
        end
    end
end
