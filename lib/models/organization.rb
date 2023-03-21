require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Organization < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of service plans associated with the tenant. Not nullable.
            @assigned_plans
            ## 
            # Branding for the organization. Nullable.
            @branding
            ## 
            # Telephone number for the organization. Although this is a string collection, only one number can be set for this property.
            @business_phones
            ## 
            # Navigation property to manage certificate-based authentication configuration. Only a single instance of certificateBasedAuthConfiguration can be created in the collection.
            @certificate_based_auth_configuration
            ## 
            # City name of the address for the organization.
            @city
            ## 
            # Country/region name of the address for the organization.
            @country
            ## 
            # Country or region abbreviation for the organization in ISO 3166-2 format.
            @country_letter_code
            ## 
            # Timestamp of when the organization was created. The value cannot be modified and is automatically populated when the organization is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # Two-letter ISO 3166 country code indicating the default service usage location of an organization.
            @default_usage_location
            ## 
            # The display name for the tenant.
            @display_name
            ## 
            # The collection of open extensions defined for the organization. Read-only. Nullable.
            @extensions
            ## 
            # Not nullable.
            @marketing_notification_emails
            ## 
            # Mobile device management authority.
            @mobile_device_management_authority
            ## 
            # The time and date at which the tenant was last synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @on_premises_last_sync_date_time
            ## 
            # true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced. Nullable. null if this object has never been synced from an on-premises directory (default).
            @on_premises_sync_enabled
            ## 
            # The type of partnership this tenant has with Microsoft. The possible values are: microsoftSupport, syndicatePartner, breadthPartner, breadthPartnerDelegatedAdmin, resellerPartnerDelegatedAdmin, valueAddedResellerPartnerDelegatedAdmin, unknownFutureValue. Nullable. For more information about the possible types, see partnerTenantType values.
            @partner_tenant_type
            ## 
            # Postal code of the address for the organization.
            @postal_code
            ## 
            # The preferred language for the organization. Should follow ISO 639-1 Code; for example, en.
            @preferred_language
            ## 
            # The privacy profile of an organization.
            @privacy_profile
            ## 
            # Not nullable.
            @provisioned_plans
            ## 
            # The securityComplianceNotificationMails property
            @security_compliance_notification_mails
            ## 
            # The securityComplianceNotificationPhones property
            @security_compliance_notification_phones
            ## 
            # State name of the address for the organization.
            @state
            ## 
            # Street name of the address for organization.
            @street
            ## 
            # Not nullable.
            @technical_notification_mails
            ## 
            # Not nullable. The tenant type option that was selected when the tenant was created. The possible values are:  AAD - An enterprise identity access management (IAM) service that serves business-to-employee and business-to-business (B2B) scenarios.  AAD B2C A customer identity access management (CIAM) service that serves business-to-consumer (B2C) scenarios.
            @tenant_type
            ## 
            # The collection of domains associated with this tenant. Not nullable.
            @verified_domains
            ## 
            ## Gets the assignedPlans property value. The collection of service plans associated with the tenant. Not nullable.
            ## @return a assigned_plan
            ## 
            def assigned_plans
                return @assigned_plans
            end
            ## 
            ## Sets the assignedPlans property value. The collection of service plans associated with the tenant. Not nullable.
            ## @param value Value to set for the assigned_plans property.
            ## @return a void
            ## 
            def assigned_plans=(value)
                @assigned_plans = value
            end
            ## 
            ## Gets the branding property value. Branding for the organization. Nullable.
            ## @return a organizational_branding
            ## 
            def branding
                return @branding
            end
            ## 
            ## Sets the branding property value. Branding for the organization. Nullable.
            ## @param value Value to set for the branding property.
            ## @return a void
            ## 
            def branding=(value)
                @branding = value
            end
            ## 
            ## Gets the businessPhones property value. Telephone number for the organization. Although this is a string collection, only one number can be set for this property.
            ## @return a string
            ## 
            def business_phones
                return @business_phones
            end
            ## 
            ## Sets the businessPhones property value. Telephone number for the organization. Although this is a string collection, only one number can be set for this property.
            ## @param value Value to set for the business_phones property.
            ## @return a void
            ## 
            def business_phones=(value)
                @business_phones = value
            end
            ## 
            ## Gets the certificateBasedAuthConfiguration property value. Navigation property to manage certificate-based authentication configuration. Only a single instance of certificateBasedAuthConfiguration can be created in the collection.
            ## @return a certificate_based_auth_configuration
            ## 
            def certificate_based_auth_configuration
                return @certificate_based_auth_configuration
            end
            ## 
            ## Sets the certificateBasedAuthConfiguration property value. Navigation property to manage certificate-based authentication configuration. Only a single instance of certificateBasedAuthConfiguration can be created in the collection.
            ## @param value Value to set for the certificate_based_auth_configuration property.
            ## @return a void
            ## 
            def certificate_based_auth_configuration=(value)
                @certificate_based_auth_configuration = value
            end
            ## 
            ## Gets the city property value. City name of the address for the organization.
            ## @return a string
            ## 
            def city
                return @city
            end
            ## 
            ## Sets the city property value. City name of the address for the organization.
            ## @param value Value to set for the city property.
            ## @return a void
            ## 
            def city=(value)
                @city = value
            end
            ## 
            ## Instantiates a new organization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.organization"
            end
            ## 
            ## Gets the country property value. Country/region name of the address for the organization.
            ## @return a string
            ## 
            def country
                return @country
            end
            ## 
            ## Sets the country property value. Country/region name of the address for the organization.
            ## @param value Value to set for the country property.
            ## @return a void
            ## 
            def country=(value)
                @country = value
            end
            ## 
            ## Gets the countryLetterCode property value. Country or region abbreviation for the organization in ISO 3166-2 format.
            ## @return a string
            ## 
            def country_letter_code
                return @country_letter_code
            end
            ## 
            ## Sets the countryLetterCode property value. Country or region abbreviation for the organization in ISO 3166-2 format.
            ## @param value Value to set for the country_letter_code property.
            ## @return a void
            ## 
            def country_letter_code=(value)
                @country_letter_code = value
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp of when the organization was created. The value cannot be modified and is automatically populated when the organization is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp of when the organization was created. The value cannot be modified and is automatically populated when the organization is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a organization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Organization.new
            end
            ## 
            ## Gets the defaultUsageLocation property value. Two-letter ISO 3166 country code indicating the default service usage location of an organization.
            ## @return a string
            ## 
            def default_usage_location
                return @default_usage_location
            end
            ## 
            ## Sets the defaultUsageLocation property value. Two-letter ISO 3166 country code indicating the default service usage location of an organization.
            ## @param value Value to set for the default_usage_location property.
            ## @return a void
            ## 
            def default_usage_location=(value)
                @default_usage_location = value
            end
            ## 
            ## Gets the displayName property value. The display name for the tenant.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the tenant.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the organization. Read-only. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the organization. Read-only. Nullable.
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
                    "assignedPlans" => lambda {|n| @assigned_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedPlan.create_from_discriminator_value(pn) }) },
                    "branding" => lambda {|n| @branding = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OrganizationalBranding.create_from_discriminator_value(pn) }) },
                    "businessPhones" => lambda {|n| @business_phones = n.get_collection_of_primitive_values(String) },
                    "certificateBasedAuthConfiguration" => lambda {|n| @certificate_based_auth_configuration = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CertificateBasedAuthConfiguration.create_from_discriminator_value(pn) }) },
                    "city" => lambda {|n| @city = n.get_string_value() },
                    "country" => lambda {|n| @country = n.get_string_value() },
                    "countryLetterCode" => lambda {|n| @country_letter_code = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "defaultUsageLocation" => lambda {|n| @default_usage_location = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "marketingNotificationEmails" => lambda {|n| @marketing_notification_emails = n.get_collection_of_primitive_values(String) },
                    "mobileDeviceManagementAuthority" => lambda {|n| @mobile_device_management_authority = n.get_enum_value(MicrosoftGraph::Models::MdmAuthority) },
                    "onPremisesLastSyncDateTime" => lambda {|n| @on_premises_last_sync_date_time = n.get_date_time_value() },
                    "onPremisesSyncEnabled" => lambda {|n| @on_premises_sync_enabled = n.get_boolean_value() },
                    "partnerTenantType" => lambda {|n| @partner_tenant_type = n.get_enum_value(MicrosoftGraph::Models::PartnerTenantType) },
                    "postalCode" => lambda {|n| @postal_code = n.get_string_value() },
                    "preferredLanguage" => lambda {|n| @preferred_language = n.get_string_value() },
                    "privacyProfile" => lambda {|n| @privacy_profile = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrivacyProfile.create_from_discriminator_value(pn) }) },
                    "provisionedPlans" => lambda {|n| @provisioned_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProvisionedPlan.create_from_discriminator_value(pn) }) },
                    "securityComplianceNotificationMails" => lambda {|n| @security_compliance_notification_mails = n.get_collection_of_primitive_values(String) },
                    "securityComplianceNotificationPhones" => lambda {|n| @security_compliance_notification_phones = n.get_collection_of_primitive_values(String) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "street" => lambda {|n| @street = n.get_string_value() },
                    "technicalNotificationMails" => lambda {|n| @technical_notification_mails = n.get_collection_of_primitive_values(String) },
                    "tenantType" => lambda {|n| @tenant_type = n.get_string_value() },
                    "verifiedDomains" => lambda {|n| @verified_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VerifiedDomain.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the marketingNotificationEmails property value. Not nullable.
            ## @return a string
            ## 
            def marketing_notification_emails
                return @marketing_notification_emails
            end
            ## 
            ## Sets the marketingNotificationEmails property value. Not nullable.
            ## @param value Value to set for the marketing_notification_emails property.
            ## @return a void
            ## 
            def marketing_notification_emails=(value)
                @marketing_notification_emails = value
            end
            ## 
            ## Gets the mobileDeviceManagementAuthority property value. Mobile device management authority.
            ## @return a mdm_authority
            ## 
            def mobile_device_management_authority
                return @mobile_device_management_authority
            end
            ## 
            ## Sets the mobileDeviceManagementAuthority property value. Mobile device management authority.
            ## @param value Value to set for the mobile_device_management_authority property.
            ## @return a void
            ## 
            def mobile_device_management_authority=(value)
                @mobile_device_management_authority = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. The time and date at which the tenant was last synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. The time and date at which the tenant was last synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the on_premises_last_sync_date_time property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced. Nullable. null if this object has never been synced from an on-premises directory (default).
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced. Nullable. null if this object has never been synced from an on-premises directory (default).
            ## @param value Value to set for the on_premises_sync_enabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the partnerTenantType property value. The type of partnership this tenant has with Microsoft. The possible values are: microsoftSupport, syndicatePartner, breadthPartner, breadthPartnerDelegatedAdmin, resellerPartnerDelegatedAdmin, valueAddedResellerPartnerDelegatedAdmin, unknownFutureValue. Nullable. For more information about the possible types, see partnerTenantType values.
            ## @return a partner_tenant_type
            ## 
            def partner_tenant_type
                return @partner_tenant_type
            end
            ## 
            ## Sets the partnerTenantType property value. The type of partnership this tenant has with Microsoft. The possible values are: microsoftSupport, syndicatePartner, breadthPartner, breadthPartnerDelegatedAdmin, resellerPartnerDelegatedAdmin, valueAddedResellerPartnerDelegatedAdmin, unknownFutureValue. Nullable. For more information about the possible types, see partnerTenantType values.
            ## @param value Value to set for the partner_tenant_type property.
            ## @return a void
            ## 
            def partner_tenant_type=(value)
                @partner_tenant_type = value
            end
            ## 
            ## Gets the postalCode property value. Postal code of the address for the organization.
            ## @return a string
            ## 
            def postal_code
                return @postal_code
            end
            ## 
            ## Sets the postalCode property value. Postal code of the address for the organization.
            ## @param value Value to set for the postal_code property.
            ## @return a void
            ## 
            def postal_code=(value)
                @postal_code = value
            end
            ## 
            ## Gets the preferredLanguage property value. The preferred language for the organization. Should follow ISO 639-1 Code; for example, en.
            ## @return a string
            ## 
            def preferred_language
                return @preferred_language
            end
            ## 
            ## Sets the preferredLanguage property value. The preferred language for the organization. Should follow ISO 639-1 Code; for example, en.
            ## @param value Value to set for the preferred_language property.
            ## @return a void
            ## 
            def preferred_language=(value)
                @preferred_language = value
            end
            ## 
            ## Gets the privacyProfile property value. The privacy profile of an organization.
            ## @return a privacy_profile
            ## 
            def privacy_profile
                return @privacy_profile
            end
            ## 
            ## Sets the privacyProfile property value. The privacy profile of an organization.
            ## @param value Value to set for the privacy_profile property.
            ## @return a void
            ## 
            def privacy_profile=(value)
                @privacy_profile = value
            end
            ## 
            ## Gets the provisionedPlans property value. Not nullable.
            ## @return a provisioned_plan
            ## 
            def provisioned_plans
                return @provisioned_plans
            end
            ## 
            ## Sets the provisionedPlans property value. Not nullable.
            ## @param value Value to set for the provisioned_plans property.
            ## @return a void
            ## 
            def provisioned_plans=(value)
                @provisioned_plans = value
            end
            ## 
            ## Gets the securityComplianceNotificationMails property value. The securityComplianceNotificationMails property
            ## @return a string
            ## 
            def security_compliance_notification_mails
                return @security_compliance_notification_mails
            end
            ## 
            ## Sets the securityComplianceNotificationMails property value. The securityComplianceNotificationMails property
            ## @param value Value to set for the security_compliance_notification_mails property.
            ## @return a void
            ## 
            def security_compliance_notification_mails=(value)
                @security_compliance_notification_mails = value
            end
            ## 
            ## Gets the securityComplianceNotificationPhones property value. The securityComplianceNotificationPhones property
            ## @return a string
            ## 
            def security_compliance_notification_phones
                return @security_compliance_notification_phones
            end
            ## 
            ## Sets the securityComplianceNotificationPhones property value. The securityComplianceNotificationPhones property
            ## @param value Value to set for the security_compliance_notification_phones property.
            ## @return a void
            ## 
            def security_compliance_notification_phones=(value)
                @security_compliance_notification_phones = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignedPlans", @assigned_plans)
                writer.write_object_value("branding", @branding)
                writer.write_collection_of_primitive_values("businessPhones", @business_phones)
                writer.write_collection_of_object_values("certificateBasedAuthConfiguration", @certificate_based_auth_configuration)
                writer.write_string_value("city", @city)
                writer.write_string_value("country", @country)
                writer.write_string_value("countryLetterCode", @country_letter_code)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("defaultUsageLocation", @default_usage_location)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_collection_of_primitive_values("marketingNotificationEmails", @marketing_notification_emails)
                writer.write_enum_value("mobileDeviceManagementAuthority", @mobile_device_management_authority)
                writer.write_date_time_value("onPremisesLastSyncDateTime", @on_premises_last_sync_date_time)
                writer.write_boolean_value("onPremisesSyncEnabled", @on_premises_sync_enabled)
                writer.write_enum_value("partnerTenantType", @partner_tenant_type)
                writer.write_string_value("postalCode", @postal_code)
                writer.write_string_value("preferredLanguage", @preferred_language)
                writer.write_object_value("privacyProfile", @privacy_profile)
                writer.write_collection_of_object_values("provisionedPlans", @provisioned_plans)
                writer.write_collection_of_primitive_values("securityComplianceNotificationMails", @security_compliance_notification_mails)
                writer.write_collection_of_primitive_values("securityComplianceNotificationPhones", @security_compliance_notification_phones)
                writer.write_string_value("state", @state)
                writer.write_string_value("street", @street)
                writer.write_collection_of_primitive_values("technicalNotificationMails", @technical_notification_mails)
                writer.write_string_value("tenantType", @tenant_type)
                writer.write_collection_of_object_values("verifiedDomains", @verified_domains)
            end
            ## 
            ## Gets the state property value. State name of the address for the organization.
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. State name of the address for the organization.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the street property value. Street name of the address for organization.
            ## @return a string
            ## 
            def street
                return @street
            end
            ## 
            ## Sets the street property value. Street name of the address for organization.
            ## @param value Value to set for the street property.
            ## @return a void
            ## 
            def street=(value)
                @street = value
            end
            ## 
            ## Gets the technicalNotificationMails property value. Not nullable.
            ## @return a string
            ## 
            def technical_notification_mails
                return @technical_notification_mails
            end
            ## 
            ## Sets the technicalNotificationMails property value. Not nullable.
            ## @param value Value to set for the technical_notification_mails property.
            ## @return a void
            ## 
            def technical_notification_mails=(value)
                @technical_notification_mails = value
            end
            ## 
            ## Gets the tenantType property value. Not nullable. The tenant type option that was selected when the tenant was created. The possible values are:  AAD - An enterprise identity access management (IAM) service that serves business-to-employee and business-to-business (B2B) scenarios.  AAD B2C A customer identity access management (CIAM) service that serves business-to-consumer (B2C) scenarios.
            ## @return a string
            ## 
            def tenant_type
                return @tenant_type
            end
            ## 
            ## Sets the tenantType property value. Not nullable. The tenant type option that was selected when the tenant was created. The possible values are:  AAD - An enterprise identity access management (IAM) service that serves business-to-employee and business-to-business (B2B) scenarios.  AAD B2C A customer identity access management (CIAM) service that serves business-to-consumer (B2C) scenarios.
            ## @param value Value to set for the tenant_type property.
            ## @return a void
            ## 
            def tenant_type=(value)
                @tenant_type = value
            end
            ## 
            ## Gets the verifiedDomains property value. The collection of domains associated with this tenant. Not nullable.
            ## @return a verified_domain
            ## 
            def verified_domains
                return @verified_domains
            end
            ## 
            ## Sets the verifiedDomains property value. The collection of domains associated with this tenant. Not nullable.
            ## @param value Value to set for the verified_domains property.
            ## @return a void
            ## 
            def verified_domains=(value)
                @verified_domains = value
            end
        end
    end
end
