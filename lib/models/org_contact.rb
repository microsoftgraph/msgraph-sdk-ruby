require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OrgContact < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The addresses property
            @addresses
            ## 
            # The companyName property
            @company_name
            ## 
            # The department property
            @department
            ## 
            # The directReports property
            @direct_reports
            ## 
            # The displayName property
            @display_name
            ## 
            # The givenName property
            @given_name
            ## 
            # The jobTitle property
            @job_title
            ## 
            # The mail property
            @mail
            ## 
            # The mailNickname property
            @mail_nickname
            ## 
            # The manager property
            @manager
            ## 
            # The memberOf property
            @member_of
            ## 
            # The onPremisesLastSyncDateTime property
            @on_premises_last_sync_date_time
            ## 
            # The onPremisesProvisioningErrors property
            @on_premises_provisioning_errors
            ## 
            # The onPremisesSyncEnabled property
            @on_premises_sync_enabled
            ## 
            # The phones property
            @phones
            ## 
            # The proxyAddresses property
            @proxy_addresses
            ## 
            # The surname property
            @surname
            ## 
            # The transitiveMemberOf property
            @transitive_member_of
            ## 
            ## Gets the addresses property value. The addresses property
            ## @return a physical_office_address
            ## 
            def addresses
                return @addresses
            end
            ## 
            ## Sets the addresses property value. The addresses property
            ## @param value Value to set for the addresses property.
            ## @return a void
            ## 
            def addresses=(value)
                @addresses = value
            end
            ## 
            ## Gets the companyName property value. The companyName property
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. The companyName property
            ## @param value Value to set for the company_name property.
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
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a org_contact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OrgContact.new
            end
            ## 
            ## Gets the department property value. The department property
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The department property
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the directReports property value. The directReports property
            ## @return a directory_object
            ## 
            def direct_reports
                return @direct_reports
            end
            ## 
            ## Sets the directReports property value. The directReports property
            ## @param value Value to set for the direct_reports property.
            ## @return a void
            ## 
            def direct_reports=(value)
                @direct_reports = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
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
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the givenName property value. The givenName property
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. The givenName property
            ## @param value Value to set for the given_name property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the jobTitle property value. The jobTitle property
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. The jobTitle property
            ## @param value Value to set for the job_title property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
            end
            ## 
            ## Gets the mail property value. The mail property
            ## @return a string
            ## 
            def mail
                return @mail
            end
            ## 
            ## Sets the mail property value. The mail property
            ## @param value Value to set for the mail property.
            ## @return a void
            ## 
            def mail=(value)
                @mail = value
            end
            ## 
            ## Gets the mailNickname property value. The mailNickname property
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. The mailNickname property
            ## @param value Value to set for the mail_nickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the manager property value. The manager property
            ## @return a directory_object
            ## 
            def manager
                return @manager
            end
            ## 
            ## Sets the manager property value. The manager property
            ## @param value Value to set for the manager property.
            ## @return a void
            ## 
            def manager=(value)
                @manager = value
            end
            ## 
            ## Gets the memberOf property value. The memberOf property
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. The memberOf property
            ## @param value Value to set for the member_of property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. The onPremisesLastSyncDateTime property
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. The onPremisesLastSyncDateTime property
            ## @param value Value to set for the on_premises_last_sync_date_time property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesProvisioningErrors property value. The onPremisesProvisioningErrors property
            ## @return a on_premises_provisioning_error
            ## 
            def on_premises_provisioning_errors
                return @on_premises_provisioning_errors
            end
            ## 
            ## Sets the onPremisesProvisioningErrors property value. The onPremisesProvisioningErrors property
            ## @param value Value to set for the on_premises_provisioning_errors property.
            ## @return a void
            ## 
            def on_premises_provisioning_errors=(value)
                @on_premises_provisioning_errors = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. The onPremisesSyncEnabled property
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. The onPremisesSyncEnabled property
            ## @param value Value to set for the on_premises_sync_enabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the phones property value. The phones property
            ## @return a phone
            ## 
            def phones
                return @phones
            end
            ## 
            ## Sets the phones property value. The phones property
            ## @param value Value to set for the phones property.
            ## @return a void
            ## 
            def phones=(value)
                @phones = value
            end
            ## 
            ## Gets the proxyAddresses property value. The proxyAddresses property
            ## @return a string
            ## 
            def proxy_addresses
                return @proxy_addresses
            end
            ## 
            ## Sets the proxyAddresses property value. The proxyAddresses property
            ## @param value Value to set for the proxy_addresses property.
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
                writer.write_string_value("surname", @surname)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
            end
            ## 
            ## Gets the surname property value. The surname property
            ## @return a string
            ## 
            def surname
                return @surname
            end
            ## 
            ## Sets the surname property value. The surname property
            ## @param value Value to set for the surname property.
            ## @return a void
            ## 
            def surname=(value)
                @surname = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. The transitiveMemberOf property
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. The transitiveMemberOf property
            ## @param value Value to set for the transitive_member_of property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
        end
    end
end
