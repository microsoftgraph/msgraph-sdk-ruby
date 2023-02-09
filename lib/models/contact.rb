require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Contact < MicrosoftGraph::Models::OutlookItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the contact's assistant.
            @assistant_name
            ## 
            # The contact's birthday. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @birthday
            ## 
            # The contact's business address.
            @business_address
            ## 
            # The business home page of the contact.
            @business_home_page
            ## 
            # The contact's business phone numbers.
            @business_phones
            ## 
            # The names of the contact's children.
            @children
            ## 
            # The name of the contact's company.
            @company_name
            ## 
            # The contact's department.
            @department
            ## 
            # The contact's display name. You can specify the display name in a create or update operation. Note that later updates to other properties may cause an automatically generated value to overwrite the displayName value you have specified. To preserve a pre-existing value, always include it as displayName in an update operation.
            @display_name
            ## 
            # The contact's email addresses.
            @email_addresses
            ## 
            # The collection of open extensions defined for the contact. Read-only. Nullable.
            @extensions
            ## 
            # The name the contact is filed under.
            @file_as
            ## 
            # The contact's generation.
            @generation
            ## 
            # The contact's given name.
            @given_name
            ## 
            # The contact's home address.
            @home_address
            ## 
            # The contact's home phone numbers.
            @home_phones
            ## 
            # The imAddresses property
            @im_addresses
            ## 
            # The initials property
            @initials
            ## 
            # The jobTitle property
            @job_title
            ## 
            # The manager property
            @manager
            ## 
            # The middleName property
            @middle_name
            ## 
            # The mobilePhone property
            @mobile_phone
            ## 
            # The collection of multi-value extended properties defined for the contact. Read-only. Nullable.
            @multi_value_extended_properties
            ## 
            # The nickName property
            @nick_name
            ## 
            # The officeLocation property
            @office_location
            ## 
            # The otherAddress property
            @other_address
            ## 
            # The parentFolderId property
            @parent_folder_id
            ## 
            # The personalNotes property
            @personal_notes
            ## 
            # Optional contact picture. You can get or set a photo for a contact.
            @photo
            ## 
            # The profession property
            @profession
            ## 
            # The collection of single-value extended properties defined for the contact. Read-only. Nullable.
            @single_value_extended_properties
            ## 
            # The spouseName property
            @spouse_name
            ## 
            # The surname property
            @surname
            ## 
            # The title property
            @title
            ## 
            # The yomiCompanyName property
            @yomi_company_name
            ## 
            # The yomiGivenName property
            @yomi_given_name
            ## 
            # The yomiSurname property
            @yomi_surname
            ## 
            ## Gets the assistantName property value. The name of the contact's assistant.
            ## @return a string
            ## 
            def assistant_name
                return @assistant_name
            end
            ## 
            ## Sets the assistantName property value. The name of the contact's assistant.
            ## @param value Value to set for the assistant_name property.
            ## @return a void
            ## 
            def assistant_name=(value)
                @assistant_name = value
            end
            ## 
            ## Gets the birthday property value. The contact's birthday. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def birthday
                return @birthday
            end
            ## 
            ## Sets the birthday property value. The contact's birthday. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the birthday property.
            ## @return a void
            ## 
            def birthday=(value)
                @birthday = value
            end
            ## 
            ## Gets the businessAddress property value. The contact's business address.
            ## @return a physical_address
            ## 
            def business_address
                return @business_address
            end
            ## 
            ## Sets the businessAddress property value. The contact's business address.
            ## @param value Value to set for the business_address property.
            ## @return a void
            ## 
            def business_address=(value)
                @business_address = value
            end
            ## 
            ## Gets the businessHomePage property value. The business home page of the contact.
            ## @return a string
            ## 
            def business_home_page
                return @business_home_page
            end
            ## 
            ## Sets the businessHomePage property value. The business home page of the contact.
            ## @param value Value to set for the business_home_page property.
            ## @return a void
            ## 
            def business_home_page=(value)
                @business_home_page = value
            end
            ## 
            ## Gets the businessPhones property value. The contact's business phone numbers.
            ## @return a string
            ## 
            def business_phones
                return @business_phones
            end
            ## 
            ## Sets the businessPhones property value. The contact's business phone numbers.
            ## @param value Value to set for the business_phones property.
            ## @return a void
            ## 
            def business_phones=(value)
                @business_phones = value
            end
            ## 
            ## Gets the children property value. The names of the contact's children.
            ## @return a string
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. The names of the contact's children.
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Gets the companyName property value. The name of the contact's company.
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. The name of the contact's company.
            ## @param value Value to set for the company_name property.
            ## @return a void
            ## 
            def company_name=(value)
                @company_name = value
            end
            ## 
            ## Instantiates a new Contact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.contact"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a contact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Contact.new
            end
            ## 
            ## Gets the department property value. The contact's department.
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The contact's department.
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the displayName property value. The contact's display name. You can specify the display name in a create or update operation. Note that later updates to other properties may cause an automatically generated value to overwrite the displayName value you have specified. To preserve a pre-existing value, always include it as displayName in an update operation.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The contact's display name. You can specify the display name in a create or update operation. Note that later updates to other properties may cause an automatically generated value to overwrite the displayName value you have specified. To preserve a pre-existing value, always include it as displayName in an update operation.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the emailAddresses property value. The contact's email addresses.
            ## @return a email_address
            ## 
            def email_addresses
                return @email_addresses
            end
            ## 
            ## Sets the emailAddresses property value. The contact's email addresses.
            ## @param value Value to set for the email_addresses property.
            ## @return a void
            ## 
            def email_addresses=(value)
                @email_addresses = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the contact. Read-only. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the contact. Read-only. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## Gets the fileAs property value. The name the contact is filed under.
            ## @return a string
            ## 
            def file_as
                return @file_as
            end
            ## 
            ## Sets the fileAs property value. The name the contact is filed under.
            ## @param value Value to set for the file_as property.
            ## @return a void
            ## 
            def file_as=(value)
                @file_as = value
            end
            ## 
            ## Gets the generation property value. The contact's generation.
            ## @return a string
            ## 
            def generation
                return @generation
            end
            ## 
            ## Sets the generation property value. The contact's generation.
            ## @param value Value to set for the generation property.
            ## @return a void
            ## 
            def generation=(value)
                @generation = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assistantName" => lambda {|n| @assistant_name = n.get_string_value() },
                    "birthday" => lambda {|n| @birthday = n.get_date_time_value() },
                    "businessAddress" => lambda {|n| @business_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "businessHomePage" => lambda {|n| @business_home_page = n.get_string_value() },
                    "businessPhones" => lambda {|n| @business_phones = n.get_collection_of_primitive_values(String) },
                    "children" => lambda {|n| @children = n.get_collection_of_primitive_values(String) },
                    "companyName" => lambda {|n| @company_name = n.get_string_value() },
                    "department" => lambda {|n| @department = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "emailAddresses" => lambda {|n| @email_addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EmailAddress.create_from_discriminator_value(pn) }) },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "fileAs" => lambda {|n| @file_as = n.get_string_value() },
                    "generation" => lambda {|n| @generation = n.get_string_value() },
                    "givenName" => lambda {|n| @given_name = n.get_string_value() },
                    "homeAddress" => lambda {|n| @home_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "homePhones" => lambda {|n| @home_phones = n.get_collection_of_primitive_values(String) },
                    "imAddresses" => lambda {|n| @im_addresses = n.get_collection_of_primitive_values(String) },
                    "initials" => lambda {|n| @initials = n.get_string_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "manager" => lambda {|n| @manager = n.get_string_value() },
                    "middleName" => lambda {|n| @middle_name = n.get_string_value() },
                    "mobilePhone" => lambda {|n| @mobile_phone = n.get_string_value() },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "nickName" => lambda {|n| @nick_name = n.get_string_value() },
                    "officeLocation" => lambda {|n| @office_location = n.get_string_value() },
                    "otherAddress" => lambda {|n| @other_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "parentFolderId" => lambda {|n| @parent_folder_id = n.get_string_value() },
                    "personalNotes" => lambda {|n| @personal_notes = n.get_string_value() },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "profession" => lambda {|n| @profession = n.get_string_value() },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "spouseName" => lambda {|n| @spouse_name = n.get_string_value() },
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "yomiCompanyName" => lambda {|n| @yomi_company_name = n.get_string_value() },
                    "yomiGivenName" => lambda {|n| @yomi_given_name = n.get_string_value() },
                    "yomiSurname" => lambda {|n| @yomi_surname = n.get_string_value() },
                })
            end
            ## 
            ## Gets the givenName property value. The contact's given name.
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. The contact's given name.
            ## @param value Value to set for the given_name property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the homeAddress property value. The contact's home address.
            ## @return a physical_address
            ## 
            def home_address
                return @home_address
            end
            ## 
            ## Sets the homeAddress property value. The contact's home address.
            ## @param value Value to set for the home_address property.
            ## @return a void
            ## 
            def home_address=(value)
                @home_address = value
            end
            ## 
            ## Gets the homePhones property value. The contact's home phone numbers.
            ## @return a string
            ## 
            def home_phones
                return @home_phones
            end
            ## 
            ## Sets the homePhones property value. The contact's home phone numbers.
            ## @param value Value to set for the home_phones property.
            ## @return a void
            ## 
            def home_phones=(value)
                @home_phones = value
            end
            ## 
            ## Gets the imAddresses property value. The imAddresses property
            ## @return a string
            ## 
            def im_addresses
                return @im_addresses
            end
            ## 
            ## Sets the imAddresses property value. The imAddresses property
            ## @param value Value to set for the im_addresses property.
            ## @return a void
            ## 
            def im_addresses=(value)
                @im_addresses = value
            end
            ## 
            ## Gets the initials property value. The initials property
            ## @return a string
            ## 
            def initials
                return @initials
            end
            ## 
            ## Sets the initials property value. The initials property
            ## @param value Value to set for the initials property.
            ## @return a void
            ## 
            def initials=(value)
                @initials = value
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
            ## Gets the manager property value. The manager property
            ## @return a string
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
            ## Gets the middleName property value. The middleName property
            ## @return a string
            ## 
            def middle_name
                return @middle_name
            end
            ## 
            ## Sets the middleName property value. The middleName property
            ## @param value Value to set for the middle_name property.
            ## @return a void
            ## 
            def middle_name=(value)
                @middle_name = value
            end
            ## 
            ## Gets the mobilePhone property value. The mobilePhone property
            ## @return a string
            ## 
            def mobile_phone
                return @mobile_phone
            end
            ## 
            ## Sets the mobilePhone property value. The mobilePhone property
            ## @param value Value to set for the mobile_phone property.
            ## @return a void
            ## 
            def mobile_phone=(value)
                @mobile_phone = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the contact. Read-only. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the contact. Read-only. Nullable.
            ## @param value Value to set for the multi_value_extended_properties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the nickName property value. The nickName property
            ## @return a string
            ## 
            def nick_name
                return @nick_name
            end
            ## 
            ## Sets the nickName property value. The nickName property
            ## @param value Value to set for the nick_name property.
            ## @return a void
            ## 
            def nick_name=(value)
                @nick_name = value
            end
            ## 
            ## Gets the officeLocation property value. The officeLocation property
            ## @return a string
            ## 
            def office_location
                return @office_location
            end
            ## 
            ## Sets the officeLocation property value. The officeLocation property
            ## @param value Value to set for the office_location property.
            ## @return a void
            ## 
            def office_location=(value)
                @office_location = value
            end
            ## 
            ## Gets the otherAddress property value. The otherAddress property
            ## @return a physical_address
            ## 
            def other_address
                return @other_address
            end
            ## 
            ## Sets the otherAddress property value. The otherAddress property
            ## @param value Value to set for the other_address property.
            ## @return a void
            ## 
            def other_address=(value)
                @other_address = value
            end
            ## 
            ## Gets the parentFolderId property value. The parentFolderId property
            ## @return a string
            ## 
            def parent_folder_id
                return @parent_folder_id
            end
            ## 
            ## Sets the parentFolderId property value. The parentFolderId property
            ## @param value Value to set for the parent_folder_id property.
            ## @return a void
            ## 
            def parent_folder_id=(value)
                @parent_folder_id = value
            end
            ## 
            ## Gets the personalNotes property value. The personalNotes property
            ## @return a string
            ## 
            def personal_notes
                return @personal_notes
            end
            ## 
            ## Sets the personalNotes property value. The personalNotes property
            ## @param value Value to set for the personal_notes property.
            ## @return a void
            ## 
            def personal_notes=(value)
                @personal_notes = value
            end
            ## 
            ## Gets the photo property value. Optional contact picture. You can get or set a photo for a contact.
            ## @return a profile_photo
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. Optional contact picture. You can get or set a photo for a contact.
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Gets the profession property value. The profession property
            ## @return a string
            ## 
            def profession
                return @profession
            end
            ## 
            ## Sets the profession property value. The profession property
            ## @param value Value to set for the profession property.
            ## @return a void
            ## 
            def profession=(value)
                @profession = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assistantName", @assistant_name)
                writer.write_date_time_value("birthday", @birthday)
                writer.write_object_value("businessAddress", @business_address)
                writer.write_string_value("businessHomePage", @business_home_page)
                writer.write_collection_of_primitive_values("businessPhones", @business_phones)
                writer.write_collection_of_primitive_values("children", @children)
                writer.write_string_value("companyName", @company_name)
                writer.write_string_value("department", @department)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("emailAddresses", @email_addresses)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_string_value("fileAs", @file_as)
                writer.write_string_value("generation", @generation)
                writer.write_string_value("givenName", @given_name)
                writer.write_object_value("homeAddress", @home_address)
                writer.write_collection_of_primitive_values("homePhones", @home_phones)
                writer.write_collection_of_primitive_values("imAddresses", @im_addresses)
                writer.write_string_value("initials", @initials)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_string_value("manager", @manager)
                writer.write_string_value("middleName", @middle_name)
                writer.write_string_value("mobilePhone", @mobile_phone)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_string_value("nickName", @nick_name)
                writer.write_string_value("officeLocation", @office_location)
                writer.write_object_value("otherAddress", @other_address)
                writer.write_string_value("parentFolderId", @parent_folder_id)
                writer.write_string_value("personalNotes", @personal_notes)
                writer.write_object_value("photo", @photo)
                writer.write_string_value("profession", @profession)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_string_value("spouseName", @spouse_name)
                writer.write_string_value("surname", @surname)
                writer.write_string_value("title", @title)
                writer.write_string_value("yomiCompanyName", @yomi_company_name)
                writer.write_string_value("yomiGivenName", @yomi_given_name)
                writer.write_string_value("yomiSurname", @yomi_surname)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the contact. Read-only. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the contact. Read-only. Nullable.
            ## @param value Value to set for the single_value_extended_properties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the spouseName property value. The spouseName property
            ## @return a string
            ## 
            def spouse_name
                return @spouse_name
            end
            ## 
            ## Sets the spouseName property value. The spouseName property
            ## @param value Value to set for the spouse_name property.
            ## @return a void
            ## 
            def spouse_name=(value)
                @spouse_name = value
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
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the yomiCompanyName property value. The yomiCompanyName property
            ## @return a string
            ## 
            def yomi_company_name
                return @yomi_company_name
            end
            ## 
            ## Sets the yomiCompanyName property value. The yomiCompanyName property
            ## @param value Value to set for the yomi_company_name property.
            ## @return a void
            ## 
            def yomi_company_name=(value)
                @yomi_company_name = value
            end
            ## 
            ## Gets the yomiGivenName property value. The yomiGivenName property
            ## @return a string
            ## 
            def yomi_given_name
                return @yomi_given_name
            end
            ## 
            ## Sets the yomiGivenName property value. The yomiGivenName property
            ## @param value Value to set for the yomi_given_name property.
            ## @return a void
            ## 
            def yomi_given_name=(value)
                @yomi_given_name = value
            end
            ## 
            ## Gets the yomiSurname property value. The yomiSurname property
            ## @return a string
            ## 
            def yomi_surname
                return @yomi_surname
            end
            ## 
            ## Sets the yomiSurname property value. The yomiSurname property
            ## @param value Value to set for the yomi_surname property.
            ## @return a void
            ## 
            def yomi_surname=(value)
                @yomi_surname = value
            end
        end
    end
end
