require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OrgContact < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Postal addresses for this organizational contact. For now a contact can only have one physical address.
            @addresses
            ## 
            # Name of the company that this organizational contact belongs to.  Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @company_name
            ## 
            # The name for the department in which the contact works.  Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @department
            ## 
            # The contact's direct reports. (The users and contacts that have their manager property set to this contact.)  Read-only. Nullable. Supports $expand.
            @direct_reports
            ## 
            # Display name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values), $search, and $orderby.
            @display_name
            ## 
            # First name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @given_name
            ## 
            # Job title for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @job_title
            ## 
            # The SMTP address for the contact, for example, 'jeff@contoso.com'. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @mail
            ## 
            # Email alias (portion of email address pre-pending the @ symbol) for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @mail_nickname
            ## 
            # The user or contact that is this contact's manager. Read-only. Supports $expand and $filter (eq) by id.
            @manager
            ## 
            # Groups that this contact is a member of. Read-only. Nullable. Supports $expand.
            @member_of
            ## 
            # Date and time when this organizational contact was last synchronized from on-premises AD. This date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $filter (eq, ne, not, ge, le, in).
            @on_premises_last_sync_date_time
            ## 
            # List of any synchronization provisioning errors for this organizational contact. Supports $filter (eq, not for category and propertyCausingError), /$count eq 0, /$count ne 0.
            @on_premises_provisioning_errors
            ## 
            # true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced and now mastered in Exchange; null if this object has never been synced from an on-premises directory (default).   Supports $filter (eq, ne, not, in, and eq for null values).
            @on_premises_sync_enabled
            ## 
            # List of phones for this organizational contact. Phone types can be mobile, business, and businessFax. Only one of each type can ever be present in the collection.
            @phones
            ## 
            # For example: 'SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com'. The any operator is required for filter expressions on multi-valued properties. Supports $filter (eq, not, ge, le, startsWith, /$count eq 0, /$count ne 0).
            @proxy_addresses
            ## 
            # Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from an organizational contact object .  Supports $filter (eq, not, for isResolved and serviceInstance).
            @service_provisioning_errors
            ## 
            # Last name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            @surname
            ## 
            # Groups that this contact is a member of, including groups that the contact is nested under. Read-only. Nullable.
            @transitive_member_of
            ## 
            ## Gets the addresses property value. Postal addresses for this organizational contact. For now a contact can only have one physical address.
            ## @return a physical_office_address
            ## 
            def addresses
                return @addresses
            end
            ## 
            ## Sets the addresses property value. Postal addresses for this organizational contact. For now a contact can only have one physical address.
            ## @param value Value to set for the addresses property.
            ## @return a void
            ## 
            def addresses=(value)
                @addresses = value
            end
            ## 
            ## Gets the companyName property value. Name of the company that this organizational contact belongs to.  Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. Name of the company that this organizational contact belongs to.  Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the companyName property.
            ## @return a void
            ## 
            def company_name=(value)
                @company_name = value
            end
            ## 
            ## Instantiates a new OrgContact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.orgContact"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a org_contact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OrgContact.new
            end
            ## 
            ## Gets the department property value. The name for the department in which the contact works.  Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The name for the department in which the contact works.  Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the directReports property value. The contact's direct reports. (The users and contacts that have their manager property set to this contact.)  Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def direct_reports
                return @direct_reports
            end
            ## 
            ## Sets the directReports property value. The contact's direct reports. (The users and contacts that have their manager property set to this contact.)  Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the directReports property.
            ## @return a void
            ## 
            def direct_reports=(value)
                @direct_reports = value
            end
            ## 
            ## Gets the displayName property value. Display name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values), $search, and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values), $search, and $orderby.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addresses" => lambda {|n| @addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PhysicalOfficeAddress.create_from_discriminator_value(pn) }) },
                    "companyName" => lambda {|n| @company_name = n.get_string_value() },
                    "department" => lambda {|n| @department = n.get_string_value() },
                    "directReports" => lambda {|n| @direct_reports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "givenName" => lambda {|n| @given_name = n.get_string_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "mail" => lambda {|n| @mail = n.get_string_value() },
                    "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                    "manager" => lambda {|n| @manager = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "onPremisesLastSyncDateTime" => lambda {|n| @on_premises_last_sync_date_time = n.get_date_time_value() },
                    "onPremisesProvisioningErrors" => lambda {|n| @on_premises_provisioning_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnPremisesProvisioningError.create_from_discriminator_value(pn) }) },
                    "onPremisesSyncEnabled" => lambda {|n| @on_premises_sync_enabled = n.get_boolean_value() },
                    "phones" => lambda {|n| @phones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Phone.create_from_discriminator_value(pn) }) },
                    "proxyAddresses" => lambda {|n| @proxy_addresses = n.get_collection_of_primitive_values(String) },
                    "serviceProvisioningErrors" => lambda {|n| @service_provisioning_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceProvisioningError.create_from_discriminator_value(pn) }) },
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the givenName property value. First name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. First name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the givenName property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the jobTitle property value. Job title for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. Job title for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the jobTitle property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
            end
            ## 
            ## Gets the mail property value. The SMTP address for the contact, for example, 'jeff@contoso.com'. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def mail
                return @mail
            end
            ## 
            ## Sets the mail property value. The SMTP address for the contact, for example, 'jeff@contoso.com'. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the mail property.
            ## @return a void
            ## 
            def mail=(value)
                @mail = value
            end
            ## 
            ## Gets the mailNickname property value. Email alias (portion of email address pre-pending the @ symbol) for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. Email alias (portion of email address pre-pending the @ symbol) for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the mailNickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the manager property value. The user or contact that is this contact's manager. Read-only. Supports $expand and $filter (eq) by id.
            ## @return a directory_object
            ## 
            def manager
                return @manager
            end
            ## 
            ## Sets the manager property value. The user or contact that is this contact's manager. Read-only. Supports $expand and $filter (eq) by id.
            ## @param value Value to set for the manager property.
            ## @return a void
            ## 
            def manager=(value)
                @manager = value
            end
            ## 
            ## Gets the memberOf property value. Groups that this contact is a member of. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. Groups that this contact is a member of. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the memberOf property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. Date and time when this organizational contact was last synchronized from on-premises AD. This date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $filter (eq, ne, not, ge, le, in).
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. Date and time when this organizational contact was last synchronized from on-premises AD. This date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Supports $filter (eq, ne, not, ge, le, in).
            ## @param value Value to set for the onPremisesLastSyncDateTime property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesProvisioningErrors property value. List of any synchronization provisioning errors for this organizational contact. Supports $filter (eq, not for category and propertyCausingError), /$count eq 0, /$count ne 0.
            ## @return a on_premises_provisioning_error
            ## 
            def on_premises_provisioning_errors
                return @on_premises_provisioning_errors
            end
            ## 
            ## Sets the onPremisesProvisioningErrors property value. List of any synchronization provisioning errors for this organizational contact. Supports $filter (eq, not for category and propertyCausingError), /$count eq 0, /$count ne 0.
            ## @param value Value to set for the onPremisesProvisioningErrors property.
            ## @return a void
            ## 
            def on_premises_provisioning_errors=(value)
                @on_premises_provisioning_errors = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced and now mastered in Exchange; null if this object has never been synced from an on-premises directory (default).   Supports $filter (eq, ne, not, in, and eq for null values).
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. true if this object is synced from an on-premises directory; false if this object was originally synced from an on-premises directory but is no longer synced and now mastered in Exchange; null if this object has never been synced from an on-premises directory (default).   Supports $filter (eq, ne, not, in, and eq for null values).
            ## @param value Value to set for the onPremisesSyncEnabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the phones property value. List of phones for this organizational contact. Phone types can be mobile, business, and businessFax. Only one of each type can ever be present in the collection.
            ## @return a phone
            ## 
            def phones
                return @phones
            end
            ## 
            ## Sets the phones property value. List of phones for this organizational contact. Phone types can be mobile, business, and businessFax. Only one of each type can ever be present in the collection.
            ## @param value Value to set for the phones property.
            ## @return a void
            ## 
            def phones=(value)
                @phones = value
            end
            ## 
            ## Gets the proxyAddresses property value. For example: 'SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com'. The any operator is required for filter expressions on multi-valued properties. Supports $filter (eq, not, ge, le, startsWith, /$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def proxy_addresses
                return @proxy_addresses
            end
            ## 
            ## Sets the proxyAddresses property value. For example: 'SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com'. The any operator is required for filter expressions on multi-valued properties. Supports $filter (eq, not, ge, le, startsWith, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the proxyAddresses property.
            ## @return a void
            ## 
            def proxy_addresses=(value)
                @proxy_addresses = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("addresses", @addresses)
                writer.write_string_value("companyName", @company_name)
                writer.write_string_value("department", @department)
                writer.write_collection_of_object_values("directReports", @direct_reports)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("givenName", @given_name)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_string_value("mail", @mail)
                writer.write_string_value("mailNickname", @mail_nickname)
                writer.write_object_value("manager", @manager)
                writer.write_collection_of_object_values("memberOf", @member_of)
                writer.write_date_time_value("onPremisesLastSyncDateTime", @on_premises_last_sync_date_time)
                writer.write_collection_of_object_values("onPremisesProvisioningErrors", @on_premises_provisioning_errors)
                writer.write_boolean_value("onPremisesSyncEnabled", @on_premises_sync_enabled)
                writer.write_collection_of_object_values("phones", @phones)
                writer.write_collection_of_primitive_values("proxyAddresses", @proxy_addresses)
                writer.write_collection_of_object_values("serviceProvisioningErrors", @service_provisioning_errors)
                writer.write_string_value("surname", @surname)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
            end
            ## 
            ## Gets the serviceProvisioningErrors property value. Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from an organizational contact object .  Supports $filter (eq, not, for isResolved and serviceInstance).
            ## @return a service_provisioning_error
            ## 
            def service_provisioning_errors
                return @service_provisioning_errors
            end
            ## 
            ## Sets the serviceProvisioningErrors property value. Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from an organizational contact object .  Supports $filter (eq, not, for isResolved and serviceInstance).
            ## @param value Value to set for the serviceProvisioningErrors property.
            ## @return a void
            ## 
            def service_provisioning_errors=(value)
                @service_provisioning_errors = value
            end
            ## 
            ## Gets the surname property value. Last name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @return a string
            ## 
            def surname
                return @surname
            end
            ## 
            ## Sets the surname property value. Last name for this organizational contact. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq for null values).
            ## @param value Value to set for the surname property.
            ## @return a void
            ## 
            def surname=(value)
                @surname = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. Groups that this contact is a member of, including groups that the contact is nested under. Read-only. Nullable.
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. Groups that this contact is a member of, including groups that the contact is nested under. Read-only. Nullable.
            ## @param value Value to set for the transitiveMemberOf property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
        end
    end
end
