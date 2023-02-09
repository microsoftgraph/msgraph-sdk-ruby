require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Domain < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the configured authentication type for the domain. The value is either Managed or Federated. Managed indicates a cloud managed domain where Azure AD performs user authentication. Federated indicates authentication is federated with an identity provider such as the tenant's on-premises Active Directory via Active Directory Federation Services. This property is read-only and is not nullable.
            @authentication_type
            ## 
            # This property is always null except when the verify action is used. When the verify action is used, a domain entity is returned in the response. The availabilityStatus property of the domain entity in the response is either AvailableImmediately or EmailVerifiedDomainTakeoverScheduled.
            @availability_status
            ## 
            # The objects such as users and groups that reference the domain ID. Read-only, Nullable. Supports $expand and $filter by the OData type of objects returned. For example /domains/{domainId}/domainNameReferences/microsoft.graph.user and /domains/{domainId}/domainNameReferences/microsoft.graph.group.
            @domain_name_references
            ## 
            # Domain settings configured by a customer when federated with Azure AD. Supports $expand.
            @federation_configuration
            ## 
            # The value of the property is false if the DNS record management of the domain has been delegated to Microsoft 365. Otherwise, the value is true. Not nullable
            @is_admin_managed
            ## 
            # true if this is the default domain that is used for user creation. There is only one default domain per company. Not nullable
            @is_default
            ## 
            # true if this is the initial domain created by Microsoft Online Services (companyname.onmicrosoft.com). There is only one initial domain per company. Not nullable
            @is_initial
            ## 
            # true if the domain is a verified root domain. Otherwise, false if the domain is a subdomain or unverified. Not nullable
            @is_root
            ## 
            # true if the domain has completed domain ownership verification. Not nullable
            @is_verified
            ## 
            # The manufacturer property
            @manufacturer
            ## 
            # The model property
            @model
            ## 
            # Specifies the number of days before a user receives notification that their password will expire. If the property is not set, a default value of 14 days will be used.
            @password_notification_window_in_days
            ## 
            # Specifies the length of time that a password is valid before it must be changed. If the property is not set, a default value of 90 days will be used.
            @password_validity_period_in_days
            ## 
            # DNS records the customer adds to the DNS zone file of the domain before the domain can be used by Microsoft Online services. Read-only, Nullable. Supports $expand.
            @service_configuration_records
            ## 
            # Status of asynchronous operations scheduled for the domain.
            @state
            ## 
            # The capabilities assigned to the domain. Can include 0, 1 or more of following values: Email, Sharepoint, EmailInternalRelayOnly, OfficeCommunicationsOnline, SharePointDefaultDomain, FullRedelegation, SharePointPublic, OrgIdAuthentication, Yammer, Intune. The values which you can add/remove using Graph API include: Email, OfficeCommunicationsOnline, Yammer. Not nullable.
            @supported_services
            ## 
            # DNS records that the customer adds to the DNS zone file of the domain before the customer can complete domain ownership verification with Azure AD. Read-only, Nullable. Supports $expand.
            @verification_dns_records
            ## 
            ## Gets the authenticationType property value. Indicates the configured authentication type for the domain. The value is either Managed or Federated. Managed indicates a cloud managed domain where Azure AD performs user authentication. Federated indicates authentication is federated with an identity provider such as the tenant's on-premises Active Directory via Active Directory Federation Services. This property is read-only and is not nullable.
            ## @return a string
            ## 
            def authentication_type
                return @authentication_type
            end
            ## 
            ## Sets the authenticationType property value. Indicates the configured authentication type for the domain. The value is either Managed or Federated. Managed indicates a cloud managed domain where Azure AD performs user authentication. Federated indicates authentication is federated with an identity provider such as the tenant's on-premises Active Directory via Active Directory Federation Services. This property is read-only and is not nullable.
            ## @param value Value to set for the authentication_type property.
            ## @return a void
            ## 
            def authentication_type=(value)
                @authentication_type = value
            end
            ## 
            ## Gets the availabilityStatus property value. This property is always null except when the verify action is used. When the verify action is used, a domain entity is returned in the response. The availabilityStatus property of the domain entity in the response is either AvailableImmediately or EmailVerifiedDomainTakeoverScheduled.
            ## @return a string
            ## 
            def availability_status
                return @availability_status
            end
            ## 
            ## Sets the availabilityStatus property value. This property is always null except when the verify action is used. When the verify action is used, a domain entity is returned in the response. The availabilityStatus property of the domain entity in the response is either AvailableImmediately or EmailVerifiedDomainTakeoverScheduled.
            ## @param value Value to set for the availability_status property.
            ## @return a void
            ## 
            def availability_status=(value)
                @availability_status = value
            end
            ## 
            ## Instantiates a new Domain and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Domain.new
            end
            ## 
            ## Gets the domainNameReferences property value. The objects such as users and groups that reference the domain ID. Read-only, Nullable. Supports $expand and $filter by the OData type of objects returned. For example /domains/{domainId}/domainNameReferences/microsoft.graph.user and /domains/{domainId}/domainNameReferences/microsoft.graph.group.
            ## @return a directory_object
            ## 
            def domain_name_references
                return @domain_name_references
            end
            ## 
            ## Sets the domainNameReferences property value. The objects such as users and groups that reference the domain ID. Read-only, Nullable. Supports $expand and $filter by the OData type of objects returned. For example /domains/{domainId}/domainNameReferences/microsoft.graph.user and /domains/{domainId}/domainNameReferences/microsoft.graph.group.
            ## @param value Value to set for the domain_name_references property.
            ## @return a void
            ## 
            def domain_name_references=(value)
                @domain_name_references = value
            end
            ## 
            ## Gets the federationConfiguration property value. Domain settings configured by a customer when federated with Azure AD. Supports $expand.
            ## @return a internal_domain_federation
            ## 
            def federation_configuration
                return @federation_configuration
            end
            ## 
            ## Sets the federationConfiguration property value. Domain settings configured by a customer when federated with Azure AD. Supports $expand.
            ## @param value Value to set for the federation_configuration property.
            ## @return a void
            ## 
            def federation_configuration=(value)
                @federation_configuration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationType" => lambda {|n| @authentication_type = n.get_string_value() },
                    "availabilityStatus" => lambda {|n| @availability_status = n.get_string_value() },
                    "domainNameReferences" => lambda {|n| @domain_name_references = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "federationConfiguration" => lambda {|n| @federation_configuration = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::InternalDomainFederation.create_from_discriminator_value(pn) }) },
                    "isAdminManaged" => lambda {|n| @is_admin_managed = n.get_boolean_value() },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "isInitial" => lambda {|n| @is_initial = n.get_boolean_value() },
                    "isRoot" => lambda {|n| @is_root = n.get_boolean_value() },
                    "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "passwordNotificationWindowInDays" => lambda {|n| @password_notification_window_in_days = n.get_number_value() },
                    "passwordValidityPeriodInDays" => lambda {|n| @password_validity_period_in_days = n.get_number_value() },
                    "serviceConfigurationRecords" => lambda {|n| @service_configuration_records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DomainDnsRecord.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DomainState.create_from_discriminator_value(pn) }) },
                    "supportedServices" => lambda {|n| @supported_services = n.get_collection_of_primitive_values(String) },
                    "verificationDnsRecords" => lambda {|n| @verification_dns_records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DomainDnsRecord.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isAdminManaged property value. The value of the property is false if the DNS record management of the domain has been delegated to Microsoft 365. Otherwise, the value is true. Not nullable
            ## @return a boolean
            ## 
            def is_admin_managed
                return @is_admin_managed
            end
            ## 
            ## Sets the isAdminManaged property value. The value of the property is false if the DNS record management of the domain has been delegated to Microsoft 365. Otherwise, the value is true. Not nullable
            ## @param value Value to set for the is_admin_managed property.
            ## @return a void
            ## 
            def is_admin_managed=(value)
                @is_admin_managed = value
            end
            ## 
            ## Gets the isDefault property value. true if this is the default domain that is used for user creation. There is only one default domain per company. Not nullable
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. true if this is the default domain that is used for user creation. There is only one default domain per company. Not nullable
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the isInitial property value. true if this is the initial domain created by Microsoft Online Services (companyname.onmicrosoft.com). There is only one initial domain per company. Not nullable
            ## @return a boolean
            ## 
            def is_initial
                return @is_initial
            end
            ## 
            ## Sets the isInitial property value. true if this is the initial domain created by Microsoft Online Services (companyname.onmicrosoft.com). There is only one initial domain per company. Not nullable
            ## @param value Value to set for the is_initial property.
            ## @return a void
            ## 
            def is_initial=(value)
                @is_initial = value
            end
            ## 
            ## Gets the isRoot property value. true if the domain is a verified root domain. Otherwise, false if the domain is a subdomain or unverified. Not nullable
            ## @return a boolean
            ## 
            def is_root
                return @is_root
            end
            ## 
            ## Sets the isRoot property value. true if the domain is a verified root domain. Otherwise, false if the domain is a subdomain or unverified. Not nullable
            ## @param value Value to set for the is_root property.
            ## @return a void
            ## 
            def is_root=(value)
                @is_root = value
            end
            ## 
            ## Gets the isVerified property value. true if the domain has completed domain ownership verification. Not nullable
            ## @return a boolean
            ## 
            def is_verified
                return @is_verified
            end
            ## 
            ## Sets the isVerified property value. true if the domain has completed domain ownership verification. Not nullable
            ## @param value Value to set for the is_verified property.
            ## @return a void
            ## 
            def is_verified=(value)
                @is_verified = value
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
            ## Gets the passwordNotificationWindowInDays property value. Specifies the number of days before a user receives notification that their password will expire. If the property is not set, a default value of 14 days will be used.
            ## @return a integer
            ## 
            def password_notification_window_in_days
                return @password_notification_window_in_days
            end
            ## 
            ## Sets the passwordNotificationWindowInDays property value. Specifies the number of days before a user receives notification that their password will expire. If the property is not set, a default value of 14 days will be used.
            ## @param value Value to set for the password_notification_window_in_days property.
            ## @return a void
            ## 
            def password_notification_window_in_days=(value)
                @password_notification_window_in_days = value
            end
            ## 
            ## Gets the passwordValidityPeriodInDays property value. Specifies the length of time that a password is valid before it must be changed. If the property is not set, a default value of 90 days will be used.
            ## @return a integer
            ## 
            def password_validity_period_in_days
                return @password_validity_period_in_days
            end
            ## 
            ## Sets the passwordValidityPeriodInDays property value. Specifies the length of time that a password is valid before it must be changed. If the property is not set, a default value of 90 days will be used.
            ## @param value Value to set for the password_validity_period_in_days property.
            ## @return a void
            ## 
            def password_validity_period_in_days=(value)
                @password_validity_period_in_days = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("authenticationType", @authentication_type)
                writer.write_string_value("availabilityStatus", @availability_status)
                writer.write_collection_of_object_values("domainNameReferences", @domain_name_references)
                writer.write_collection_of_object_values("federationConfiguration", @federation_configuration)
                writer.write_boolean_value("isAdminManaged", @is_admin_managed)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_boolean_value("isInitial", @is_initial)
                writer.write_boolean_value("isRoot", @is_root)
                writer.write_boolean_value("isVerified", @is_verified)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_number_value("passwordNotificationWindowInDays", @password_notification_window_in_days)
                writer.write_number_value("passwordValidityPeriodInDays", @password_validity_period_in_days)
                writer.write_collection_of_object_values("serviceConfigurationRecords", @service_configuration_records)
                writer.write_object_value("state", @state)
                writer.write_collection_of_primitive_values("supportedServices", @supported_services)
                writer.write_collection_of_object_values("verificationDnsRecords", @verification_dns_records)
            end
            ## 
            ## Gets the serviceConfigurationRecords property value. DNS records the customer adds to the DNS zone file of the domain before the domain can be used by Microsoft Online services. Read-only, Nullable. Supports $expand.
            ## @return a domain_dns_record
            ## 
            def service_configuration_records
                return @service_configuration_records
            end
            ## 
            ## Sets the serviceConfigurationRecords property value. DNS records the customer adds to the DNS zone file of the domain before the domain can be used by Microsoft Online services. Read-only, Nullable. Supports $expand.
            ## @param value Value to set for the service_configuration_records property.
            ## @return a void
            ## 
            def service_configuration_records=(value)
                @service_configuration_records = value
            end
            ## 
            ## Gets the state property value. Status of asynchronous operations scheduled for the domain.
            ## @return a domain_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Status of asynchronous operations scheduled for the domain.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the supportedServices property value. The capabilities assigned to the domain. Can include 0, 1 or more of following values: Email, Sharepoint, EmailInternalRelayOnly, OfficeCommunicationsOnline, SharePointDefaultDomain, FullRedelegation, SharePointPublic, OrgIdAuthentication, Yammer, Intune. The values which you can add/remove using Graph API include: Email, OfficeCommunicationsOnline, Yammer. Not nullable.
            ## @return a string
            ## 
            def supported_services
                return @supported_services
            end
            ## 
            ## Sets the supportedServices property value. The capabilities assigned to the domain. Can include 0, 1 or more of following values: Email, Sharepoint, EmailInternalRelayOnly, OfficeCommunicationsOnline, SharePointDefaultDomain, FullRedelegation, SharePointPublic, OrgIdAuthentication, Yammer, Intune. The values which you can add/remove using Graph API include: Email, OfficeCommunicationsOnline, Yammer. Not nullable.
            ## @param value Value to set for the supported_services property.
            ## @return a void
            ## 
            def supported_services=(value)
                @supported_services = value
            end
            ## 
            ## Gets the verificationDnsRecords property value. DNS records that the customer adds to the DNS zone file of the domain before the customer can complete domain ownership verification with Azure AD. Read-only, Nullable. Supports $expand.
            ## @return a domain_dns_record
            ## 
            def verification_dns_records
                return @verification_dns_records
            end
            ## 
            ## Sets the verificationDnsRecords property value. DNS records that the customer adds to the DNS zone file of the domain before the customer can complete domain ownership verification with Azure AD. Read-only, Nullable. Supports $expand.
            ## @param value Value to set for the verification_dns_records property.
            ## @return a void
            ## 
            def verification_dns_records=(value)
                @verification_dns_records = value
            end
        end
    end
end
