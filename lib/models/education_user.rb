require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationUser < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # True if the account is enabled; otherwise, false. This property is required when a user is created. Supports $filter.
            @account_enabled
            ## 
            # The licenses that are assigned to the user. Not nullable.
            @assigned_licenses
            ## 
            # The plans that are assigned to the user. Read-only. Not nullable.
            @assigned_plans
            ## 
            # Assignments belonging to the user.
            @assignments
            ## 
            # The telephone numbers for the user. Note: Although this is a string collection, only one number can be set for this property.
            @business_phones
            ## 
            # Classes to which the user belongs. Nullable.
            @classes
            ## 
            # The entity who created the user.
            @created_by
            ## 
            # The name for the department in which the user works. Supports $filter.
            @department
            ## 
            # The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.
            @display_name
            ## 
            # Where this user was created from. Possible values are: sis, manual.
            @external_source
            ## 
            # The name of the external source this resource was generated from.
            @external_source_detail
            ## 
            # The given name (first name) of the user. Supports $filter.
            @given_name
            ## 
            # The SMTP address for the user, for example, jeff@contoso.onmicrosoft.com. Read-Only. Supports $filter.
            @mail
            ## 
            # The mail alias for the user. This property must be specified when a user is created. Supports $filter.
            @mail_nickname
            ## 
            # The mail address of the user.
            @mailing_address
            ## 
            # The middle name of the user.
            @middle_name
            ## 
            # The primary cellular telephone number for the user.
            @mobile_phone
            ## 
            # The officeLocation property
            @office_location
            ## 
            # Additional information used to associate the Azure Active Directory user with its Active Directory counterpart.
            @on_premises_info
            ## 
            # Specifies password policies for the user. This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified. DisablePasswordExpiration can also be specified. The two can be specified together; for example: DisablePasswordExpiration, DisableStrongPassword.
            @password_policies
            ## 
            # Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the passwordPolicies property. By default, a strong password is required.
            @password_profile
            ## 
            # The preferred language for the user that should follow the ISO 639-1 code, for example, en-US.
            @preferred_language
            ## 
            # The primaryRole property
            @primary_role
            ## 
            # The plans that are provisioned for the user. Read-only. Not nullable.
            @provisioned_plans
            ## 
            # The refreshTokensValidFromDateTime property
            @refresh_tokens_valid_from_date_time
            ## 
            # Related records associated with the user. Read-only.
            @related_contacts
            ## 
            # The address where the user lives.
            @residence_address
            ## 
            # When set, the grading rubric attached to the assignment.
            @rubrics
            ## 
            # Schools to which the user belongs. Nullable.
            @schools
            ## 
            # True if the Outlook Global Address List should contain this user; otherwise, false. If not set, this will be treated as true. For users invited through the invitation manager, this property will be set to false.
            @show_in_address_list
            ## 
            # If the primary role is student, this block will contain student specific data.
            @student
            ## 
            # The user's surname (family name or last name). Supports $filter.
            @surname
            ## 
            # Classes for which the user is a teacher.
            @taught_classes
            ## 
            # If the primary role is teacher, this block will contain teacher specific data.
            @teacher
            ## 
            # A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: US, JP, and GB. Not nullable. Supports $filter.
            @usage_location
            ## 
            # The directory user that corresponds to this user.
            @user
            ## 
            # The user principal name (UPN) of the user. The UPN is an internet-style login name for the user based on the internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the verifiedDomains property of the organization. Supports $filter and $orderby.
            @user_principal_name
            ## 
            # A string value that can be used to classify user types in your directory, such as Member and Guest. Supports $filter.
            @user_type
            ## 
            ## Gets the accountEnabled property value. True if the account is enabled; otherwise, false. This property is required when a user is created. Supports $filter.
            ## @return a boolean
            ## 
            def account_enabled
                return @account_enabled
            end
            ## 
            ## Sets the accountEnabled property value. True if the account is enabled; otherwise, false. This property is required when a user is created. Supports $filter.
            ## @param value Value to set for the account_enabled property.
            ## @return a void
            ## 
            def account_enabled=(value)
                @account_enabled = value
            end
            ## 
            ## Gets the assignedLicenses property value. The licenses that are assigned to the user. Not nullable.
            ## @return a assigned_license
            ## 
            def assigned_licenses
                return @assigned_licenses
            end
            ## 
            ## Sets the assignedLicenses property value. The licenses that are assigned to the user. Not nullable.
            ## @param value Value to set for the assigned_licenses property.
            ## @return a void
            ## 
            def assigned_licenses=(value)
                @assigned_licenses = value
            end
            ## 
            ## Gets the assignedPlans property value. The plans that are assigned to the user. Read-only. Not nullable.
            ## @return a assigned_plan
            ## 
            def assigned_plans
                return @assigned_plans
            end
            ## 
            ## Sets the assignedPlans property value. The plans that are assigned to the user. Read-only. Not nullable.
            ## @param value Value to set for the assigned_plans property.
            ## @return a void
            ## 
            def assigned_plans=(value)
                @assigned_plans = value
            end
            ## 
            ## Gets the assignments property value. Assignments belonging to the user.
            ## @return a education_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Assignments belonging to the user.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the businessPhones property value. The telephone numbers for the user. Note: Although this is a string collection, only one number can be set for this property.
            ## @return a string
            ## 
            def business_phones
                return @business_phones
            end
            ## 
            ## Sets the businessPhones property value. The telephone numbers for the user. Note: Although this is a string collection, only one number can be set for this property.
            ## @param value Value to set for the business_phones property.
            ## @return a void
            ## 
            def business_phones=(value)
                @business_phones = value
            end
            ## 
            ## Gets the classes property value. Classes to which the user belongs. Nullable.
            ## @return a education_class
            ## 
            def classes
                return @classes
            end
            ## 
            ## Sets the classes property value. Classes to which the user belongs. Nullable.
            ## @param value Value to set for the classes property.
            ## @return a void
            ## 
            def classes=(value)
                @classes = value
            end
            ## 
            ## Instantiates a new educationUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The entity who created the user.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The entity who created the user.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationUser.new
            end
            ## 
            ## Gets the department property value. The name for the department in which the user works. Supports $filter.
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The name for the department in which the user works. Supports $filter.
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the displayName property value. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalSource property value. Where this user was created from. Possible values are: sis, manual.
            ## @return a education_external_source
            ## 
            def external_source
                return @external_source
            end
            ## 
            ## Sets the externalSource property value. Where this user was created from. Possible values are: sis, manual.
            ## @param value Value to set for the external_source property.
            ## @return a void
            ## 
            def external_source=(value)
                @external_source = value
            end
            ## 
            ## Gets the externalSourceDetail property value. The name of the external source this resource was generated from.
            ## @return a string
            ## 
            def external_source_detail
                return @external_source_detail
            end
            ## 
            ## Sets the externalSourceDetail property value. The name of the external source this resource was generated from.
            ## @param value Value to set for the external_source_detail property.
            ## @return a void
            ## 
            def external_source_detail=(value)
                @external_source_detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountEnabled" => lambda {|n| @account_enabled = n.get_boolean_value() },
                    "assignedLicenses" => lambda {|n| @assigned_licenses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedLicense.create_from_discriminator_value(pn) }) },
                    "assignedPlans" => lambda {|n| @assigned_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedPlan.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationAssignment.create_from_discriminator_value(pn) }) },
                    "businessPhones" => lambda {|n| @business_phones = n.get_collection_of_primitive_values(String) },
                    "classes" => lambda {|n| @classes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationClass.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "department" => lambda {|n| @department = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalSource" => lambda {|n| @external_source = n.get_enum_value(MicrosoftGraph::Models::EducationExternalSource) },
                    "externalSourceDetail" => lambda {|n| @external_source_detail = n.get_string_value() },
                    "givenName" => lambda {|n| @given_name = n.get_string_value() },
                    "mail" => lambda {|n| @mail = n.get_string_value() },
                    "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                    "mailingAddress" => lambda {|n| @mailing_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "middleName" => lambda {|n| @middle_name = n.get_string_value() },
                    "mobilePhone" => lambda {|n| @mobile_phone = n.get_string_value() },
                    "officeLocation" => lambda {|n| @office_location = n.get_string_value() },
                    "onPremisesInfo" => lambda {|n| @on_premises_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationOnPremisesInfo.create_from_discriminator_value(pn) }) },
                    "passwordPolicies" => lambda {|n| @password_policies = n.get_string_value() },
                    "passwordProfile" => lambda {|n| @password_profile = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PasswordProfile.create_from_discriminator_value(pn) }) },
                    "preferredLanguage" => lambda {|n| @preferred_language = n.get_string_value() },
                    "primaryRole" => lambda {|n| @primary_role = n.get_enum_value(MicrosoftGraph::Models::EducationUserRole) },
                    "provisionedPlans" => lambda {|n| @provisioned_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProvisionedPlan.create_from_discriminator_value(pn) }) },
                    "refreshTokensValidFromDateTime" => lambda {|n| @refresh_tokens_valid_from_date_time = n.get_date_time_value() },
                    "relatedContacts" => lambda {|n| @related_contacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RelatedContact.create_from_discriminator_value(pn) }) },
                    "residenceAddress" => lambda {|n| @residence_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "rubrics" => lambda {|n| @rubrics = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationRubric.create_from_discriminator_value(pn) }) },
                    "schools" => lambda {|n| @schools = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationSchool.create_from_discriminator_value(pn) }) },
                    "showInAddressList" => lambda {|n| @show_in_address_list = n.get_boolean_value() },
                    "student" => lambda {|n| @student = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationStudent.create_from_discriminator_value(pn) }) },
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                    "taughtClasses" => lambda {|n| @taught_classes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationClass.create_from_discriminator_value(pn) }) },
                    "teacher" => lambda {|n| @teacher = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationTeacher.create_from_discriminator_value(pn) }) },
                    "usageLocation" => lambda {|n| @usage_location = n.get_string_value() },
                    "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the givenName property value. The given name (first name) of the user. Supports $filter.
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. The given name (first name) of the user. Supports $filter.
            ## @param value Value to set for the given_name property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the mail property value. The SMTP address for the user, for example, jeff@contoso.onmicrosoft.com. Read-Only. Supports $filter.
            ## @return a string
            ## 
            def mail
                return @mail
            end
            ## 
            ## Sets the mail property value. The SMTP address for the user, for example, jeff@contoso.onmicrosoft.com. Read-Only. Supports $filter.
            ## @param value Value to set for the mail property.
            ## @return a void
            ## 
            def mail=(value)
                @mail = value
            end
            ## 
            ## Gets the mailNickname property value. The mail alias for the user. This property must be specified when a user is created. Supports $filter.
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. The mail alias for the user. This property must be specified when a user is created. Supports $filter.
            ## @param value Value to set for the mail_nickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the mailingAddress property value. The mail address of the user.
            ## @return a physical_address
            ## 
            def mailing_address
                return @mailing_address
            end
            ## 
            ## Sets the mailingAddress property value. The mail address of the user.
            ## @param value Value to set for the mailing_address property.
            ## @return a void
            ## 
            def mailing_address=(value)
                @mailing_address = value
            end
            ## 
            ## Gets the middleName property value. The middle name of the user.
            ## @return a string
            ## 
            def middle_name
                return @middle_name
            end
            ## 
            ## Sets the middleName property value. The middle name of the user.
            ## @param value Value to set for the middle_name property.
            ## @return a void
            ## 
            def middle_name=(value)
                @middle_name = value
            end
            ## 
            ## Gets the mobilePhone property value. The primary cellular telephone number for the user.
            ## @return a string
            ## 
            def mobile_phone
                return @mobile_phone
            end
            ## 
            ## Sets the mobilePhone property value. The primary cellular telephone number for the user.
            ## @param value Value to set for the mobile_phone property.
            ## @return a void
            ## 
            def mobile_phone=(value)
                @mobile_phone = value
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
            ## Gets the onPremisesInfo property value. Additional information used to associate the Azure Active Directory user with its Active Directory counterpart.
            ## @return a education_on_premises_info
            ## 
            def on_premises_info
                return @on_premises_info
            end
            ## 
            ## Sets the onPremisesInfo property value. Additional information used to associate the Azure Active Directory user with its Active Directory counterpart.
            ## @param value Value to set for the on_premises_info property.
            ## @return a void
            ## 
            def on_premises_info=(value)
                @on_premises_info = value
            end
            ## 
            ## Gets the passwordPolicies property value. Specifies password policies for the user. This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified. DisablePasswordExpiration can also be specified. The two can be specified together; for example: DisablePasswordExpiration, DisableStrongPassword.
            ## @return a string
            ## 
            def password_policies
                return @password_policies
            end
            ## 
            ## Sets the passwordPolicies property value. Specifies password policies for the user. This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified. DisablePasswordExpiration can also be specified. The two can be specified together; for example: DisablePasswordExpiration, DisableStrongPassword.
            ## @param value Value to set for the password_policies property.
            ## @return a void
            ## 
            def password_policies=(value)
                @password_policies = value
            end
            ## 
            ## Gets the passwordProfile property value. Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the passwordPolicies property. By default, a strong password is required.
            ## @return a password_profile
            ## 
            def password_profile
                return @password_profile
            end
            ## 
            ## Sets the passwordProfile property value. Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the passwordPolicies property. By default, a strong password is required.
            ## @param value Value to set for the password_profile property.
            ## @return a void
            ## 
            def password_profile=(value)
                @password_profile = value
            end
            ## 
            ## Gets the preferredLanguage property value. The preferred language for the user that should follow the ISO 639-1 code, for example, en-US.
            ## @return a string
            ## 
            def preferred_language
                return @preferred_language
            end
            ## 
            ## Sets the preferredLanguage property value. The preferred language for the user that should follow the ISO 639-1 code, for example, en-US.
            ## @param value Value to set for the preferred_language property.
            ## @return a void
            ## 
            def preferred_language=(value)
                @preferred_language = value
            end
            ## 
            ## Gets the primaryRole property value. The primaryRole property
            ## @return a education_user_role
            ## 
            def primary_role
                return @primary_role
            end
            ## 
            ## Sets the primaryRole property value. The primaryRole property
            ## @param value Value to set for the primary_role property.
            ## @return a void
            ## 
            def primary_role=(value)
                @primary_role = value
            end
            ## 
            ## Gets the provisionedPlans property value. The plans that are provisioned for the user. Read-only. Not nullable.
            ## @return a provisioned_plan
            ## 
            def provisioned_plans
                return @provisioned_plans
            end
            ## 
            ## Sets the provisionedPlans property value. The plans that are provisioned for the user. Read-only. Not nullable.
            ## @param value Value to set for the provisioned_plans property.
            ## @return a void
            ## 
            def provisioned_plans=(value)
                @provisioned_plans = value
            end
            ## 
            ## Gets the refreshTokensValidFromDateTime property value. The refreshTokensValidFromDateTime property
            ## @return a date_time
            ## 
            def refresh_tokens_valid_from_date_time
                return @refresh_tokens_valid_from_date_time
            end
            ## 
            ## Sets the refreshTokensValidFromDateTime property value. The refreshTokensValidFromDateTime property
            ## @param value Value to set for the refresh_tokens_valid_from_date_time property.
            ## @return a void
            ## 
            def refresh_tokens_valid_from_date_time=(value)
                @refresh_tokens_valid_from_date_time = value
            end
            ## 
            ## Gets the relatedContacts property value. Related records associated with the user. Read-only.
            ## @return a related_contact
            ## 
            def related_contacts
                return @related_contacts
            end
            ## 
            ## Sets the relatedContacts property value. Related records associated with the user. Read-only.
            ## @param value Value to set for the related_contacts property.
            ## @return a void
            ## 
            def related_contacts=(value)
                @related_contacts = value
            end
            ## 
            ## Gets the residenceAddress property value. The address where the user lives.
            ## @return a physical_address
            ## 
            def residence_address
                return @residence_address
            end
            ## 
            ## Sets the residenceAddress property value. The address where the user lives.
            ## @param value Value to set for the residence_address property.
            ## @return a void
            ## 
            def residence_address=(value)
                @residence_address = value
            end
            ## 
            ## Gets the rubrics property value. When set, the grading rubric attached to the assignment.
            ## @return a education_rubric
            ## 
            def rubrics
                return @rubrics
            end
            ## 
            ## Sets the rubrics property value. When set, the grading rubric attached to the assignment.
            ## @param value Value to set for the rubrics property.
            ## @return a void
            ## 
            def rubrics=(value)
                @rubrics = value
            end
            ## 
            ## Gets the schools property value. Schools to which the user belongs. Nullable.
            ## @return a education_school
            ## 
            def schools
                return @schools
            end
            ## 
            ## Sets the schools property value. Schools to which the user belongs. Nullable.
            ## @param value Value to set for the schools property.
            ## @return a void
            ## 
            def schools=(value)
                @schools = value
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
                writer.write_collection_of_object_values("assignedLicenses", @assigned_licenses)
                writer.write_collection_of_object_values("assignedPlans", @assigned_plans)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_collection_of_primitive_values("businessPhones", @business_phones)
                writer.write_collection_of_object_values("classes", @classes)
                writer.write_object_value("createdBy", @created_by)
                writer.write_string_value("department", @department)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("externalSource", @external_source)
                writer.write_string_value("externalSourceDetail", @external_source_detail)
                writer.write_string_value("givenName", @given_name)
                writer.write_string_value("mail", @mail)
                writer.write_string_value("mailNickname", @mail_nickname)
                writer.write_object_value("mailingAddress", @mailing_address)
                writer.write_string_value("middleName", @middle_name)
                writer.write_string_value("mobilePhone", @mobile_phone)
                writer.write_string_value("officeLocation", @office_location)
                writer.write_object_value("onPremisesInfo", @on_premises_info)
                writer.write_string_value("passwordPolicies", @password_policies)
                writer.write_object_value("passwordProfile", @password_profile)
                writer.write_string_value("preferredLanguage", @preferred_language)
                writer.write_enum_value("primaryRole", @primary_role)
                writer.write_collection_of_object_values("provisionedPlans", @provisioned_plans)
                writer.write_date_time_value("refreshTokensValidFromDateTime", @refresh_tokens_valid_from_date_time)
                writer.write_collection_of_object_values("relatedContacts", @related_contacts)
                writer.write_object_value("residenceAddress", @residence_address)
                writer.write_collection_of_object_values("rubrics", @rubrics)
                writer.write_collection_of_object_values("schools", @schools)
                writer.write_boolean_value("showInAddressList", @show_in_address_list)
                writer.write_object_value("student", @student)
                writer.write_string_value("surname", @surname)
                writer.write_collection_of_object_values("taughtClasses", @taught_classes)
                writer.write_object_value("teacher", @teacher)
                writer.write_string_value("usageLocation", @usage_location)
                writer.write_object_value("user", @user)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_string_value("userType", @user_type)
            end
            ## 
            ## Gets the showInAddressList property value. True if the Outlook Global Address List should contain this user; otherwise, false. If not set, this will be treated as true. For users invited through the invitation manager, this property will be set to false.
            ## @return a boolean
            ## 
            def show_in_address_list
                return @show_in_address_list
            end
            ## 
            ## Sets the showInAddressList property value. True if the Outlook Global Address List should contain this user; otherwise, false. If not set, this will be treated as true. For users invited through the invitation manager, this property will be set to false.
            ## @param value Value to set for the show_in_address_list property.
            ## @return a void
            ## 
            def show_in_address_list=(value)
                @show_in_address_list = value
            end
            ## 
            ## Gets the student property value. If the primary role is student, this block will contain student specific data.
            ## @return a education_student
            ## 
            def student
                return @student
            end
            ## 
            ## Sets the student property value. If the primary role is student, this block will contain student specific data.
            ## @param value Value to set for the student property.
            ## @return a void
            ## 
            def student=(value)
                @student = value
            end
            ## 
            ## Gets the surname property value. The user's surname (family name or last name). Supports $filter.
            ## @return a string
            ## 
            def surname
                return @surname
            end
            ## 
            ## Sets the surname property value. The user's surname (family name or last name). Supports $filter.
            ## @param value Value to set for the surname property.
            ## @return a void
            ## 
            def surname=(value)
                @surname = value
            end
            ## 
            ## Gets the taughtClasses property value. Classes for which the user is a teacher.
            ## @return a education_class
            ## 
            def taught_classes
                return @taught_classes
            end
            ## 
            ## Sets the taughtClasses property value. Classes for which the user is a teacher.
            ## @param value Value to set for the taught_classes property.
            ## @return a void
            ## 
            def taught_classes=(value)
                @taught_classes = value
            end
            ## 
            ## Gets the teacher property value. If the primary role is teacher, this block will contain teacher specific data.
            ## @return a education_teacher
            ## 
            def teacher
                return @teacher
            end
            ## 
            ## Sets the teacher property value. If the primary role is teacher, this block will contain teacher specific data.
            ## @param value Value to set for the teacher property.
            ## @return a void
            ## 
            def teacher=(value)
                @teacher = value
            end
            ## 
            ## Gets the usageLocation property value. A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: US, JP, and GB. Not nullable. Supports $filter.
            ## @return a string
            ## 
            def usage_location
                return @usage_location
            end
            ## 
            ## Sets the usageLocation property value. A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: US, JP, and GB. Not nullable. Supports $filter.
            ## @param value Value to set for the usage_location property.
            ## @return a void
            ## 
            def usage_location=(value)
                @usage_location = value
            end
            ## 
            ## Gets the user property value. The directory user that corresponds to this user.
            ## @return a user
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. The directory user that corresponds to this user.
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the user. The UPN is an internet-style login name for the user based on the internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the verifiedDomains property of the organization. Supports $filter and $orderby.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the user. The UPN is an internet-style login name for the user based on the internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the verifiedDomains property of the organization. Supports $filter and $orderby.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. A string value that can be used to classify user types in your directory, such as Member and Guest. Supports $filter.
            ## @return a string
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. A string value that can be used to classify user types in your directory, such as Member and Guest. Supports $filter.
            ## @param value Value to set for the user_type property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
