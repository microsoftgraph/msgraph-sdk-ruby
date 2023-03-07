require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class User < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A freeform text entry field for the user to describe themselves. Returned only on $select.
            @about_me
            ## 
            # true if the account is enabled; otherwise, false. This property is required when a user is created. Returned only on $select. Supports $filter (eq, ne, not, and in).
            @account_enabled
            ## 
            # The user's activities across devices. Read-only. Nullable.
            @activities
            ## 
            # Sets the age group of the user. Allowed values: null, Minor, NotAdult and Adult. Refer to the legal age group property definitions for further information. Returned only on $select. Supports $filter (eq, ne, not, and in).
            @age_group
            ## 
            # The user's terms of use acceptance statuses. Read-only. Nullable.
            @agreement_acceptances
            ## 
            # Represents the app roles a user has been granted for an application. Supports $expand.
            @app_role_assignments
            ## 
            # The licenses that are assigned to the user, including inherited (group-based) licenses. This property doesn't differentiate directly-assigned and inherited licenses. Use the licenseAssignmentStates property to identify the directly-assigned and inherited licenses.  Not nullable. Returned only on $select. Supports $filter (eq, not, /$count eq 0, /$count ne 0).
            @assigned_licenses
            ## 
            # The plans that are assigned to the user. Read-only. Not nullable. Returned only on $select. Supports $filter (eq and not).
            @assigned_plans
            ## 
            # The authentication methods that are supported for the user.
            @authentication
            ## 
            # The authorizationInfo property
            @authorization_info
            ## 
            # The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.
            @birthday
            ## 
            # The telephone numbers for the user. NOTE: Although this is a string collection, only one number can be set for this property. Read-only for users synced from on-premises directory. Returned by default. Supports $filter (eq, not, ge, le, startsWith).
            @business_phones
            ## 
            # The user's primary calendar. Read-only.
            @calendar
            ## 
            # The user's calendar groups. Read-only. Nullable.
            @calendar_groups
            ## 
            # The calendar view for the calendar. Read-only. Nullable.
            @calendar_view
            ## 
            # The user's calendars. Read-only. Nullable.
            @calendars
            ## 
            # The chats property
            @chats
            ## 
            # The city in which the user is located. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @city
            ## 
            # The company name which the user is associated. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters.Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @company_name
            ## 
            # Sets whether consent has been obtained for minors. Allowed values: null, Granted, Denied and NotRequired. Refer to the legal age group property definitions for further information. Returned only on $select. Supports $filter (eq, ne, not, and in).
            @consent_provided_for_minor
            ## 
            # The user's contacts folders. Read-only. Nullable.
            @contact_folders
            ## 
            # The user's contacts. Read-only. Nullable.
            @contacts
            ## 
            # The country/region in which the user is located; for example, US or UK. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @country
            ## 
            # The date and time the user was created, in ISO 8601 format and in UTC time. The value cannot be modified and is automatically populated when the entity is created. Nullable. For on-premises users, the value represents when they were first created in Azure AD. Property is null for some users created before June 2018 and on-premises users that were synced to Azure AD before June 2018. Read-only. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            @created_date_time
            ## 
            # Directory objects that were created by the user. Read-only. Nullable.
            @created_objects
            ## 
            # Indicates whether the user account was created through one of the following methods:  As a regular school or work account (null). As an external account (Invitation). As a local account for an Azure Active Directory B2C tenant (LocalAccount). Through self-service sign-up by an internal user using email verification (EmailVerified). Through self-service sign-up by an external user signing up through a link that is part of a user flow (SelfServiceSignUp). Read-only.Returned only on $select. Supports $filter (eq, ne, not, in).
            @creation_type
            ## 
            # The name for the department in which the user works. Maximum length is 64 characters. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, and eq on null values).
            @department
            ## 
            # The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.
            @device_enrollment_limit
            ## 
            # The list of troubleshooting events for this user.
            @device_management_troubleshooting_events
            ## 
            # The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Read-only. Nullable. Supports $expand.
            @direct_reports
            ## 
            # The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values), $orderBy, and $search.
            @display_name
            ## 
            # The user's OneDrive. Read-only.
            @drive
            ## 
            # A collection of drives available for this user. Read-only.
            @drives
            ## 
            # The date and time when the user was hired or will start work in case of a future hire. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            @employee_hire_date
            ## 
            # The employee identifier assigned to the user by the organization. The maximum length is 16 characters. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            @employee_id
            ## 
            # The date and time when the user left or will leave the organization. To read this property, the calling app must be assigned the User-LifeCycleInfo.Read.All permission. To write this property, the calling app must be assigned the User.Read.All and User-LifeCycleInfo.ReadWrite.All permissions. To read this property in delegated scenarios, the admin needs one of the following Azure AD roles: Lifecycle Workflows Administrator, Global Reader, or Global Administrator. To write this property in delegated scenarios, the admin needs the Global Administrator role. Supports $filter (eq, ne, not , ge, le, in). For more information, see Configure the employeeLeaveDateTime property for a user.
            @employee_leave_date_time
            ## 
            # Represents organization data (e.g. division and costCenter) associated with a user. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            @employee_org_data
            ## 
            # Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith).
            @employee_type
            ## 
            # The user's events. Default is to show Events under the Default Calendar. Read-only. Nullable.
            @events
            ## 
            # The collection of open extensions defined for the user. Read-only. Supports $expand. Nullable.
            @extensions
            ## 
            # For an external user invited to the tenant using the invitation API, this property represents the invited user's invitation status. For invited users, the state can be PendingAcceptance or Accepted, or null for all other users. Returned only on $select. Supports $filter (eq, ne, not , in).
            @external_user_state
            ## 
            # Shows the timestamp for the latest change to the externalUserState property. Returned only on $select. Supports $filter (eq, ne, not , in).
            @external_user_state_change_date_time
            ## 
            # The fax number of the user. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            @fax_number
            ## 
            # The followedSites property
            @followed_sites
            ## 
            # The given name (first name) of the user. Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            @given_name
            ## 
            # The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.  Note: This property is specific to SharePoint Online. We recommend using the native employeeHireDate property to set and update hire date values using Microsoft Graph APIs.
            @hire_date
            ## 
            # Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft (also known as a local account), by organizations, or by social identity providers such as Facebook, Google, and Microsoft, and tied to a user account. May contain multiple items with the same signInType value. Returned only on $select. Supports $filter (eq) including on null values, only where the signInType is not userPrincipalName.
            @identities
            ## 
            # The instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only. Returned only on $select. Supports $filter (eq, not, ge, le, startsWith).
            @im_addresses
            ## 
            # Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
            @inference_classification
            ## 
            # The insights property
            @insights
            ## 
            # A list for the user to describe their interests. Returned only on $select.
            @interests
            ## 
            # Do not use – reserved for future use.
            @is_resource_account
            ## 
            # The user's job title. Maximum length is 128 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            @job_title
            ## 
            # The joinedTeams property
            @joined_teams
            ## 
            # The time when this Azure AD user last changed their password or when their password was created, whichever date the latest action was performed. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.
            @last_password_change_date_time
            ## 
            # Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on ageGroup and consentProvidedForMinor properties. Allowed values: null, MinorWithOutParentalConsent, MinorWithParentalConsent, MinorNoParentalConsentRequired, NotAdult and Adult. Refer to the legal age group property definitions for further information. Returned only on $select.
            @legal_age_group_classification
            ## 
            # State of license assignments for this user. Also indicates licenses that are directly-assigned and those that the user has inherited through group memberships. Read-only. Returned only on $select.
            @license_assignment_states
            ## 
            # A collection of this user's license details. Read-only.
            @license_details
            ## 
            # The SMTP address for the user, for example, jeff@contoso.onmicrosoft.com. Changes to this property will also update the user's proxyAddresses collection to include the value as an SMTP address. This property cannot contain accent characters.  NOTE: We do not recommend updating this property for Azure AD B2C user profiles. Use the otherMails property instead. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, endsWith, and eq on null values).
            @mail
            ## 
            # The user's mail folders. Read-only. Nullable.
            @mail_folders
            ## 
            # The mail alias for the user. This property must be specified when a user is created. Maximum length is 64 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @mail_nickname
            ## 
            # Settings for the primary mailbox of the signed-in user. You can get or update settings for sending automatic replies to incoming messages, locale and time zone. Returned only on $select.
            @mailbox_settings
            ## 
            # Zero or more managed app registrations that belong to the user.
            @managed_app_registrations
            ## 
            # The managed devices associated with the user.
            @managed_devices
            ## 
            # The user or contact that is this user's manager. Read-only. (HTTP Methods: GET, PUT, DELETE.). Supports $expand.
            @manager
            ## 
            # The groups and directory roles that the user is a member of. Read-only. Nullable. Supports $expand.
            @member_of
            ## 
            # The messages in a mailbox or folder. Read-only. Nullable.
            @messages
            ## 
            # The primary cellular telephone number for the user. Read-only for users synced from on-premises directory. Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @mobile_phone
            ## 
            # The URL for the user's personal site. Returned only on $select.
            @my_site
            ## 
            # The oauth2PermissionGrants property
            @oauth2_permission_grants
            ## 
            # The office location in the user's place of business. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @office_location
            ## 
            # Contains the on-premises Active Directory distinguished name or DN. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select.
            @on_premises_distinguished_name
            ## 
            # Contains the on-premises domainFQDN, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select.
            @on_premises_domain_name
            ## 
            # Contains extensionAttributes1-15 for the user. These extension attributes are also known as Exchange custom attributes 1-15. For an onPremisesSyncEnabled user, the source of authority for this set of properties is the on-premises and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties can be set during creation or update of a user object.  For a cloud-only user previously synced from on-premises Active Directory, these properties are read-only in Microsoft Graph but can be fully managed through the Exchange Admin Center or the Exchange Online V2 module in PowerShell. Returned only on $select. Supports $filter (eq, ne, not, in).
            @on_premises_extension_attributes
            ## 
            # This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user's userPrincipalName (UPN) property. NOTE: The $ and _ characters cannot be used when specifying this property. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in)..
            @on_premises_immutable_id
            ## 
            # Indicates the last time at which the object was synced with the on-premises directory; for example: 2013-02-16T03:04:54Z. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in).
            @on_premises_last_sync_date_time
            ## 
            # Errors when using Microsoft synchronization product during provisioning. Returned only on $select. Supports $filter (eq, not, ge, le).
            @on_premises_provisioning_errors
            ## 
            # Contains the on-premises samAccountName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            @on_premises_sam_account_name
            ## 
            # Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only. Returned only on $select.  Supports $filter (eq including on null values).
            @on_premises_security_identifier
            ## 
            # true if this user object is currently being synced from an on-premises Active Directory (AD); otherwise the user isn't being synced and can be managed in Azure Active Directory (Azure AD). Read-only. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values).
            @on_premises_sync_enabled
            ## 
            # Contains the on-premises userPrincipalName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            @on_premises_user_principal_name
            ## 
            # The onenote property
            @onenote
            ## 
            # The onlineMeetings property
            @online_meetings
            ## 
            # A list of additional email addresses for the user; for example: ['bob@contoso.com', 'Robert@fabrikam.com']. NOTE: This property cannot contain accent characters. Returned only on $select. Supports $filter (eq, not, ge, le, in, startsWith, endsWith, /$count eq 0, /$count ne 0).
            @other_mails
            ## 
            # The outlook property
            @outlook
            ## 
            # Devices that are owned by the user. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            @owned_devices
            ## 
            # Directory objects that are owned by the user. Read-only. Nullable. Supports $expand.
            @owned_objects
            ## 
            # Specifies password policies for the user. This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified. DisablePasswordExpiration can also be specified. The two may be specified together; for example: DisablePasswordExpiration, DisableStrongPassword. Returned only on $select. For more information on the default password policies, see Azure AD pasword policies. Supports $filter (ne, not, and eq on null values).
            @password_policies
            ## 
            # Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the passwordPolicies property. By default, a strong password is required. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values).
            @password_profile
            ## 
            # A list for the user to enumerate their past projects. Returned only on $select.
            @past_projects
            ## 
            # People that are relevant to the user. Read-only. Nullable.
            @people
            ## 
            # The user's profile photo. Read-only.
            @photo
            ## 
            # The photos property
            @photos
            ## 
            # Entry-point to the Planner resource that might exist for a user. Read-only.
            @planner
            ## 
            # The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. Maximum length is 40 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @postal_code
            ## 
            # The preferred data location for the user. For more information, see OneDrive Online Multi-Geo.
            @preferred_data_location
            ## 
            # The preferred language for the user. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values)
            @preferred_language
            ## 
            # The preferred name for the user. Not Supported. This attribute returns an empty string.Returned only on $select.
            @preferred_name
            ## 
            # The presence property
            @presence
            ## 
            # The plans that are provisioned for the user. Read-only. Not nullable. Returned only on $select. Supports $filter (eq, not, ge, le).
            @provisioned_plans
            ## 
            # For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. Changes to the mail property will also update this collection to include the value as an SMTP address. For more information, see mail and proxyAddresses properties. The proxy address prefixed with SMTP (capitalized) is the primary proxy address while those prefixed with smtp are the secondary proxy addresses. For Azure AD B2C accounts, this property has a limit of ten unique addresses. Read-only in Microsoft Graph; you can update this property only through the Microsoft 365 admin center. Not nullable. Returned only on $select. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            @proxy_addresses
            ## 
            # Devices that are registered for the user. Read-only. Nullable. Supports $expand.
            @registered_devices
            ## 
            # A list for the user to enumerate their responsibilities. Returned only on $select.
            @responsibilities
            ## 
            # A list for the user to enumerate the schools they have attended. Returned only on $select.
            @schools
            ## 
            # The scopedRoleMemberOf property
            @scoped_role_member_of
            ## 
            # Security identifier (SID) of the user, used in Windows scenarios. Read-only. Returned by default. Supports $select and $filter (eq, not, ge, le, startsWith).
            @security_identifier
            ## 
            # The settings property
            @settings
            ## 
            # Do not use in Microsoft Graph. Manage this property through the Microsoft 365 admin center instead. Represents whether the user should be included in the Outlook global address list. See Known issue.
            @show_in_address_list
            ## 
            # Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. Read-only. Use revokeSignInSessions to reset. Returned only on $select.
            @sign_in_sessions_valid_from_date_time
            ## 
            # A list for the user to enumerate their skills. Returned only on $select.
            @skills
            ## 
            # The state or province in the user's address. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @state
            ## 
            # The street address of the user's place of business. Maximum length is 1024 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @street_address
            ## 
            # The user's surname (family name or last name). Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @surname
            ## 
            # The teamwork property
            @teamwork
            ## 
            # Represents the To Do services available to a user.
            @todo
            ## 
            # The groups, including nested groups, and directory roles that a user is a member of. Nullable.
            @transitive_member_of
            ## 
            # A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: US, JP, and GB. Not nullable. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @usage_location
            ## 
            # The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the verifiedDomains property of organization.NOTE: This property cannot contain accent characters. Only the following characters are allowed A - Z, a - z, 0 - 9, ' . - _ ! # ^ ~. For the complete list of allowed characters, see username policies. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, endsWith) and $orderBy.
            @user_principal_name
            ## 
            # A string value that can be used to classify user types in your directory, such as Member and Guest. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values). NOTE: For more information about the permissions for member and guest users, see What are the default user permissions in Azure Active Directory?
            @user_type
            ## 
            ## Gets the aboutMe property value. A freeform text entry field for the user to describe themselves. Returned only on $select.
            ## @return a string
            ## 
            def about_me
                return @about_me
            end
            ## 
            ## Sets the aboutMe property value. A freeform text entry field for the user to describe themselves. Returned only on $select.
            ## @param value Value to set for the about_me property.
            ## @return a void
            ## 
            def about_me=(value)
                @about_me = value
            end
            ## 
            ## Gets the accountEnabled property value. true if the account is enabled; otherwise, false. This property is required when a user is created. Returned only on $select. Supports $filter (eq, ne, not, and in).
            ## @return a boolean
            ## 
            def account_enabled
                return @account_enabled
            end
            ## 
            ## Sets the accountEnabled property value. true if the account is enabled; otherwise, false. This property is required when a user is created. Returned only on $select. Supports $filter (eq, ne, not, and in).
            ## @param value Value to set for the account_enabled property.
            ## @return a void
            ## 
            def account_enabled=(value)
                @account_enabled = value
            end
            ## 
            ## Gets the activities property value. The user's activities across devices. Read-only. Nullable.
            ## @return a user_activity
            ## 
            def activities
                return @activities
            end
            ## 
            ## Sets the activities property value. The user's activities across devices. Read-only. Nullable.
            ## @param value Value to set for the activities property.
            ## @return a void
            ## 
            def activities=(value)
                @activities = value
            end
            ## 
            ## Gets the ageGroup property value. Sets the age group of the user. Allowed values: null, Minor, NotAdult and Adult. Refer to the legal age group property definitions for further information. Returned only on $select. Supports $filter (eq, ne, not, and in).
            ## @return a string
            ## 
            def age_group
                return @age_group
            end
            ## 
            ## Sets the ageGroup property value. Sets the age group of the user. Allowed values: null, Minor, NotAdult and Adult. Refer to the legal age group property definitions for further information. Returned only on $select. Supports $filter (eq, ne, not, and in).
            ## @param value Value to set for the age_group property.
            ## @return a void
            ## 
            def age_group=(value)
                @age_group = value
            end
            ## 
            ## Gets the agreementAcceptances property value. The user's terms of use acceptance statuses. Read-only. Nullable.
            ## @return a agreement_acceptance
            ## 
            def agreement_acceptances
                return @agreement_acceptances
            end
            ## 
            ## Sets the agreementAcceptances property value. The user's terms of use acceptance statuses. Read-only. Nullable.
            ## @param value Value to set for the agreement_acceptances property.
            ## @return a void
            ## 
            def agreement_acceptances=(value)
                @agreement_acceptances = value
            end
            ## 
            ## Gets the appRoleAssignments property value. Represents the app roles a user has been granted for an application. Supports $expand.
            ## @return a app_role_assignment
            ## 
            def app_role_assignments
                return @app_role_assignments
            end
            ## 
            ## Sets the appRoleAssignments property value. Represents the app roles a user has been granted for an application. Supports $expand.
            ## @param value Value to set for the app_role_assignments property.
            ## @return a void
            ## 
            def app_role_assignments=(value)
                @app_role_assignments = value
            end
            ## 
            ## Gets the assignedLicenses property value. The licenses that are assigned to the user, including inherited (group-based) licenses. This property doesn't differentiate directly-assigned and inherited licenses. Use the licenseAssignmentStates property to identify the directly-assigned and inherited licenses.  Not nullable. Returned only on $select. Supports $filter (eq, not, /$count eq 0, /$count ne 0).
            ## @return a assigned_license
            ## 
            def assigned_licenses
                return @assigned_licenses
            end
            ## 
            ## Sets the assignedLicenses property value. The licenses that are assigned to the user, including inherited (group-based) licenses. This property doesn't differentiate directly-assigned and inherited licenses. Use the licenseAssignmentStates property to identify the directly-assigned and inherited licenses.  Not nullable. Returned only on $select. Supports $filter (eq, not, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the assigned_licenses property.
            ## @return a void
            ## 
            def assigned_licenses=(value)
                @assigned_licenses = value
            end
            ## 
            ## Gets the assignedPlans property value. The plans that are assigned to the user. Read-only. Not nullable. Returned only on $select. Supports $filter (eq and not).
            ## @return a assigned_plan
            ## 
            def assigned_plans
                return @assigned_plans
            end
            ## 
            ## Sets the assignedPlans property value. The plans that are assigned to the user. Read-only. Not nullable. Returned only on $select. Supports $filter (eq and not).
            ## @param value Value to set for the assigned_plans property.
            ## @return a void
            ## 
            def assigned_plans=(value)
                @assigned_plans = value
            end
            ## 
            ## Gets the authentication property value. The authentication methods that are supported for the user.
            ## @return a authentication
            ## 
            def authentication
                return @authentication
            end
            ## 
            ## Sets the authentication property value. The authentication methods that are supported for the user.
            ## @param value Value to set for the authentication property.
            ## @return a void
            ## 
            def authentication=(value)
                @authentication = value
            end
            ## 
            ## Gets the authorizationInfo property value. The authorizationInfo property
            ## @return a authorization_info
            ## 
            def authorization_info
                return @authorization_info
            end
            ## 
            ## Sets the authorizationInfo property value. The authorizationInfo property
            ## @param value Value to set for the authorization_info property.
            ## @return a void
            ## 
            def authorization_info=(value)
                @authorization_info = value
            end
            ## 
            ## Gets the birthday property value. The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.
            ## @return a date_time
            ## 
            def birthday
                return @birthday
            end
            ## 
            ## Sets the birthday property value. The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.
            ## @param value Value to set for the birthday property.
            ## @return a void
            ## 
            def birthday=(value)
                @birthday = value
            end
            ## 
            ## Gets the businessPhones property value. The telephone numbers for the user. NOTE: Although this is a string collection, only one number can be set for this property. Read-only for users synced from on-premises directory. Returned by default. Supports $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def business_phones
                return @business_phones
            end
            ## 
            ## Sets the businessPhones property value. The telephone numbers for the user. NOTE: Although this is a string collection, only one number can be set for this property. Read-only for users synced from on-premises directory. Returned by default. Supports $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the business_phones property.
            ## @return a void
            ## 
            def business_phones=(value)
                @business_phones = value
            end
            ## 
            ## Gets the calendar property value. The user's primary calendar. Read-only.
            ## @return a calendar
            ## 
            def calendar
                return @calendar
            end
            ## 
            ## Sets the calendar property value. The user's primary calendar. Read-only.
            ## @param value Value to set for the calendar property.
            ## @return a void
            ## 
            def calendar=(value)
                @calendar = value
            end
            ## 
            ## Gets the calendarGroups property value. The user's calendar groups. Read-only. Nullable.
            ## @return a calendar_group
            ## 
            def calendar_groups
                return @calendar_groups
            end
            ## 
            ## Sets the calendarGroups property value. The user's calendar groups. Read-only. Nullable.
            ## @param value Value to set for the calendar_groups property.
            ## @return a void
            ## 
            def calendar_groups=(value)
                @calendar_groups = value
            end
            ## 
            ## Gets the calendarView property value. The calendar view for the calendar. Read-only. Nullable.
            ## @return a event
            ## 
            def calendar_view
                return @calendar_view
            end
            ## 
            ## Sets the calendarView property value. The calendar view for the calendar. Read-only. Nullable.
            ## @param value Value to set for the calendar_view property.
            ## @return a void
            ## 
            def calendar_view=(value)
                @calendar_view = value
            end
            ## 
            ## Gets the calendars property value. The user's calendars. Read-only. Nullable.
            ## @return a calendar
            ## 
            def calendars
                return @calendars
            end
            ## 
            ## Sets the calendars property value. The user's calendars. Read-only. Nullable.
            ## @param value Value to set for the calendars property.
            ## @return a void
            ## 
            def calendars=(value)
                @calendars = value
            end
            ## 
            ## Gets the chats property value. The chats property
            ## @return a chat
            ## 
            def chats
                return @chats
            end
            ## 
            ## Sets the chats property value. The chats property
            ## @param value Value to set for the chats property.
            ## @return a void
            ## 
            def chats=(value)
                @chats = value
            end
            ## 
            ## Gets the city property value. The city in which the user is located. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def city
                return @city
            end
            ## 
            ## Sets the city property value. The city in which the user is located. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the city property.
            ## @return a void
            ## 
            def city=(value)
                @city = value
            end
            ## 
            ## Gets the companyName property value. The company name which the user is associated. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters.Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. The company name which the user is associated. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters.Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the company_name property.
            ## @return a void
            ## 
            def company_name=(value)
                @company_name = value
            end
            ## 
            ## Gets the consentProvidedForMinor property value. Sets whether consent has been obtained for minors. Allowed values: null, Granted, Denied and NotRequired. Refer to the legal age group property definitions for further information. Returned only on $select. Supports $filter (eq, ne, not, and in).
            ## @return a string
            ## 
            def consent_provided_for_minor
                return @consent_provided_for_minor
            end
            ## 
            ## Sets the consentProvidedForMinor property value. Sets whether consent has been obtained for minors. Allowed values: null, Granted, Denied and NotRequired. Refer to the legal age group property definitions for further information. Returned only on $select. Supports $filter (eq, ne, not, and in).
            ## @param value Value to set for the consent_provided_for_minor property.
            ## @return a void
            ## 
            def consent_provided_for_minor=(value)
                @consent_provided_for_minor = value
            end
            ## 
            ## Instantiates a new User and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.user"
            end
            ## 
            ## Gets the contactFolders property value. The user's contacts folders. Read-only. Nullable.
            ## @return a contact_folder
            ## 
            def contact_folders
                return @contact_folders
            end
            ## 
            ## Sets the contactFolders property value. The user's contacts folders. Read-only. Nullable.
            ## @param value Value to set for the contact_folders property.
            ## @return a void
            ## 
            def contact_folders=(value)
                @contact_folders = value
            end
            ## 
            ## Gets the contacts property value. The user's contacts. Read-only. Nullable.
            ## @return a contact
            ## 
            def contacts
                return @contacts
            end
            ## 
            ## Sets the contacts property value. The user's contacts. Read-only. Nullable.
            ## @param value Value to set for the contacts property.
            ## @return a void
            ## 
            def contacts=(value)
                @contacts = value
            end
            ## 
            ## Gets the country property value. The country/region in which the user is located; for example, US or UK. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def country
                return @country
            end
            ## 
            ## Sets the country property value. The country/region in which the user is located; for example, US or UK. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the country property.
            ## @return a void
            ## 
            def country=(value)
                @country = value
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the user was created, in ISO 8601 format and in UTC time. The value cannot be modified and is automatically populated when the entity is created. Nullable. For on-premises users, the value represents when they were first created in Azure AD. Property is null for some users created before June 2018 and on-premises users that were synced to Azure AD before June 2018. Read-only. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the user was created, in ISO 8601 format and in UTC time. The value cannot be modified and is automatically populated when the entity is created. Nullable. For on-premises users, the value represents when they were first created in Azure AD. Property is null for some users created before June 2018 and on-premises users that were synced to Azure AD before June 2018. Read-only. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Gets the createdObjects property value. Directory objects that were created by the user. Read-only. Nullable.
            ## @return a directory_object
            ## 
            def created_objects
                return @created_objects
            end
            ## 
            ## Sets the createdObjects property value. Directory objects that were created by the user. Read-only. Nullable.
            ## @param value Value to set for the created_objects property.
            ## @return a void
            ## 
            def created_objects=(value)
                @created_objects = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return User.new
            end
            ## 
            ## Gets the creationType property value. Indicates whether the user account was created through one of the following methods:  As a regular school or work account (null). As an external account (Invitation). As a local account for an Azure Active Directory B2C tenant (LocalAccount). Through self-service sign-up by an internal user using email verification (EmailVerified). Through self-service sign-up by an external user signing up through a link that is part of a user flow (SelfServiceSignUp). Read-only.Returned only on $select. Supports $filter (eq, ne, not, in).
            ## @return a string
            ## 
            def creation_type
                return @creation_type
            end
            ## 
            ## Sets the creationType property value. Indicates whether the user account was created through one of the following methods:  As a regular school or work account (null). As an external account (Invitation). As a local account for an Azure Active Directory B2C tenant (LocalAccount). Through self-service sign-up by an internal user using email verification (EmailVerified). Through self-service sign-up by an external user signing up through a link that is part of a user flow (SelfServiceSignUp). Read-only.Returned only on $select. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the creation_type property.
            ## @return a void
            ## 
            def creation_type=(value)
                @creation_type = value
            end
            ## 
            ## Gets the department property value. The name for the department in which the user works. Maximum length is 64 characters. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, and eq on null values).
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The name for the department in which the user works. Maximum length is 64 characters. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, and eq on null values).
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the deviceEnrollmentLimit property value. The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.
            ## @return a integer
            ## 
            def device_enrollment_limit
                return @device_enrollment_limit
            end
            ## 
            ## Sets the deviceEnrollmentLimit property value. The limit on the maximum number of devices that the user is permitted to enroll. Allowed values are 5 or 1000.
            ## @param value Value to set for the device_enrollment_limit property.
            ## @return a void
            ## 
            def device_enrollment_limit=(value)
                @device_enrollment_limit = value
            end
            ## 
            ## Gets the deviceManagementTroubleshootingEvents property value. The list of troubleshooting events for this user.
            ## @return a device_management_troubleshooting_event
            ## 
            def device_management_troubleshooting_events
                return @device_management_troubleshooting_events
            end
            ## 
            ## Sets the deviceManagementTroubleshootingEvents property value. The list of troubleshooting events for this user.
            ## @param value Value to set for the device_management_troubleshooting_events property.
            ## @return a void
            ## 
            def device_management_troubleshooting_events=(value)
                @device_management_troubleshooting_events = value
            end
            ## 
            ## Gets the directReports property value. The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def direct_reports
                return @direct_reports
            end
            ## 
            ## Sets the directReports property value. The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the direct_reports property.
            ## @return a void
            ## 
            def direct_reports=(value)
                @direct_reports = value
            end
            ## 
            ## Gets the displayName property value. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values), $orderBy, and $search.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values), $orderBy, and $search.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. The user's OneDrive. Read-only.
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. The user's OneDrive. Read-only.
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## Gets the drives property value. A collection of drives available for this user. Read-only.
            ## @return a drive
            ## 
            def drives
                return @drives
            end
            ## 
            ## Sets the drives property value. A collection of drives available for this user. Read-only.
            ## @param value Value to set for the drives property.
            ## @return a void
            ## 
            def drives=(value)
                @drives = value
            end
            ## 
            ## Gets the employeeHireDate property value. The date and time when the user was hired or will start work in case of a future hire. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            ## @return a date_time
            ## 
            def employee_hire_date
                return @employee_hire_date
            end
            ## 
            ## Sets the employeeHireDate property value. The date and time when the user was hired or will start work in case of a future hire. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            ## @param value Value to set for the employee_hire_date property.
            ## @return a void
            ## 
            def employee_hire_date=(value)
                @employee_hire_date = value
            end
            ## 
            ## Gets the employeeId property value. The employee identifier assigned to the user by the organization. The maximum length is 16 characters. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def employee_id
                return @employee_id
            end
            ## 
            ## Sets the employeeId property value. The employee identifier assigned to the user by the organization. The maximum length is 16 characters. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the employee_id property.
            ## @return a void
            ## 
            def employee_id=(value)
                @employee_id = value
            end
            ## 
            ## Gets the employeeLeaveDateTime property value. The date and time when the user left or will leave the organization. To read this property, the calling app must be assigned the User-LifeCycleInfo.Read.All permission. To write this property, the calling app must be assigned the User.Read.All and User-LifeCycleInfo.ReadWrite.All permissions. To read this property in delegated scenarios, the admin needs one of the following Azure AD roles: Lifecycle Workflows Administrator, Global Reader, or Global Administrator. To write this property in delegated scenarios, the admin needs the Global Administrator role. Supports $filter (eq, ne, not , ge, le, in). For more information, see Configure the employeeLeaveDateTime property for a user.
            ## @return a date_time
            ## 
            def employee_leave_date_time
                return @employee_leave_date_time
            end
            ## 
            ## Sets the employeeLeaveDateTime property value. The date and time when the user left or will leave the organization. To read this property, the calling app must be assigned the User-LifeCycleInfo.Read.All permission. To write this property, the calling app must be assigned the User.Read.All and User-LifeCycleInfo.ReadWrite.All permissions. To read this property in delegated scenarios, the admin needs one of the following Azure AD roles: Lifecycle Workflows Administrator, Global Reader, or Global Administrator. To write this property in delegated scenarios, the admin needs the Global Administrator role. Supports $filter (eq, ne, not , ge, le, in). For more information, see Configure the employeeLeaveDateTime property for a user.
            ## @param value Value to set for the employee_leave_date_time property.
            ## @return a void
            ## 
            def employee_leave_date_time=(value)
                @employee_leave_date_time = value
            end
            ## 
            ## Gets the employeeOrgData property value. Represents organization data (e.g. division and costCenter) associated with a user. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            ## @return a employee_org_data
            ## 
            def employee_org_data
                return @employee_org_data
            end
            ## 
            ## Sets the employeeOrgData property value. Represents organization data (e.g. division and costCenter) associated with a user. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in).
            ## @param value Value to set for the employee_org_data property.
            ## @return a void
            ## 
            def employee_org_data=(value)
                @employee_org_data = value
            end
            ## 
            ## Gets the employeeType property value. Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith).
            ## @return a string
            ## 
            def employee_type
                return @employee_type
            end
            ## 
            ## Sets the employeeType property value. Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith).
            ## @param value Value to set for the employee_type property.
            ## @return a void
            ## 
            def employee_type=(value)
                @employee_type = value
            end
            ## 
            ## Gets the events property value. The user's events. Default is to show Events under the Default Calendar. Read-only. Nullable.
            ## @return a event
            ## 
            def events
                return @events
            end
            ## 
            ## Sets the events property value. The user's events. Default is to show Events under the Default Calendar. Read-only. Nullable.
            ## @param value Value to set for the events property.
            ## @return a void
            ## 
            def events=(value)
                @events = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the user. Read-only. Supports $expand. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the user. Read-only. Supports $expand. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## Gets the externalUserState property value. For an external user invited to the tenant using the invitation API, this property represents the invited user's invitation status. For invited users, the state can be PendingAcceptance or Accepted, or null for all other users. Returned only on $select. Supports $filter (eq, ne, not , in).
            ## @return a string
            ## 
            def external_user_state
                return @external_user_state
            end
            ## 
            ## Sets the externalUserState property value. For an external user invited to the tenant using the invitation API, this property represents the invited user's invitation status. For invited users, the state can be PendingAcceptance or Accepted, or null for all other users. Returned only on $select. Supports $filter (eq, ne, not , in).
            ## @param value Value to set for the external_user_state property.
            ## @return a void
            ## 
            def external_user_state=(value)
                @external_user_state = value
            end
            ## 
            ## Gets the externalUserStateChangeDateTime property value. Shows the timestamp for the latest change to the externalUserState property. Returned only on $select. Supports $filter (eq, ne, not , in).
            ## @return a date_time
            ## 
            def external_user_state_change_date_time
                return @external_user_state_change_date_time
            end
            ## 
            ## Sets the externalUserStateChangeDateTime property value. Shows the timestamp for the latest change to the externalUserState property. Returned only on $select. Supports $filter (eq, ne, not , in).
            ## @param value Value to set for the external_user_state_change_date_time property.
            ## @return a void
            ## 
            def external_user_state_change_date_time=(value)
                @external_user_state_change_date_time = value
            end
            ## 
            ## Gets the faxNumber property value. The fax number of the user. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def fax_number
                return @fax_number
            end
            ## 
            ## Sets the faxNumber property value. The fax number of the user. Returned only on $select. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the fax_number property.
            ## @return a void
            ## 
            def fax_number=(value)
                @fax_number = value
            end
            ## 
            ## Gets the followedSites property value. The followedSites property
            ## @return a site
            ## 
            def followed_sites
                return @followed_sites
            end
            ## 
            ## Sets the followedSites property value. The followedSites property
            ## @param value Value to set for the followed_sites property.
            ## @return a void
            ## 
            def followed_sites=(value)
                @followed_sites = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "aboutMe" => lambda {|n| @about_me = n.get_string_value() },
                    "accountEnabled" => lambda {|n| @account_enabled = n.get_boolean_value() },
                    "activities" => lambda {|n| @activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserActivity.create_from_discriminator_value(pn) }) },
                    "ageGroup" => lambda {|n| @age_group = n.get_string_value() },
                    "agreementAcceptances" => lambda {|n| @agreement_acceptances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AgreementAcceptance.create_from_discriminator_value(pn) }) },
                    "appRoleAssignments" => lambda {|n| @app_role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppRoleAssignment.create_from_discriminator_value(pn) }) },
                    "assignedLicenses" => lambda {|n| @assigned_licenses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedLicense.create_from_discriminator_value(pn) }) },
                    "assignedPlans" => lambda {|n| @assigned_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedPlan.create_from_discriminator_value(pn) }) },
                    "authentication" => lambda {|n| @authentication = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Authentication.create_from_discriminator_value(pn) }) },
                    "authorizationInfo" => lambda {|n| @authorization_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthorizationInfo.create_from_discriminator_value(pn) }) },
                    "birthday" => lambda {|n| @birthday = n.get_date_time_value() },
                    "businessPhones" => lambda {|n| @business_phones = n.get_collection_of_primitive_values(String) },
                    "calendar" => lambda {|n| @calendar = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }) },
                    "calendarGroups" => lambda {|n| @calendar_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CalendarGroup.create_from_discriminator_value(pn) }) },
                    "calendarView" => lambda {|n| @calendar_view = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "calendars" => lambda {|n| @calendars = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }) },
                    "chats" => lambda {|n| @chats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Chat.create_from_discriminator_value(pn) }) },
                    "city" => lambda {|n| @city = n.get_string_value() },
                    "companyName" => lambda {|n| @company_name = n.get_string_value() },
                    "consentProvidedForMinor" => lambda {|n| @consent_provided_for_minor = n.get_string_value() },
                    "contactFolders" => lambda {|n| @contact_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContactFolder.create_from_discriminator_value(pn) }) },
                    "contacts" => lambda {|n| @contacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Contact.create_from_discriminator_value(pn) }) },
                    "country" => lambda {|n| @country = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "createdObjects" => lambda {|n| @created_objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "creationType" => lambda {|n| @creation_type = n.get_string_value() },
                    "department" => lambda {|n| @department = n.get_string_value() },
                    "deviceEnrollmentLimit" => lambda {|n| @device_enrollment_limit = n.get_number_value() },
                    "deviceManagementTroubleshootingEvents" => lambda {|n| @device_management_troubleshooting_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceManagementTroubleshootingEvent.create_from_discriminator_value(pn) }) },
                    "directReports" => lambda {|n| @direct_reports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }) },
                    "drives" => lambda {|n| @drives = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }) },
                    "employeeHireDate" => lambda {|n| @employee_hire_date = n.get_date_time_value() },
                    "employeeId" => lambda {|n| @employee_id = n.get_string_value() },
                    "employeeLeaveDateTime" => lambda {|n| @employee_leave_date_time = n.get_date_time_value() },
                    "employeeOrgData" => lambda {|n| @employee_org_data = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmployeeOrgData.create_from_discriminator_value(pn) }) },
                    "employeeType" => lambda {|n| @employee_type = n.get_string_value() },
                    "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "externalUserState" => lambda {|n| @external_user_state = n.get_string_value() },
                    "externalUserStateChangeDateTime" => lambda {|n| @external_user_state_change_date_time = n.get_date_time_value() },
                    "faxNumber" => lambda {|n| @fax_number = n.get_string_value() },
                    "followedSites" => lambda {|n| @followed_sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }) },
                    "givenName" => lambda {|n| @given_name = n.get_string_value() },
                    "hireDate" => lambda {|n| @hire_date = n.get_date_time_value() },
                    "identities" => lambda {|n| @identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ObjectIdentity.create_from_discriminator_value(pn) }) },
                    "imAddresses" => lambda {|n| @im_addresses = n.get_collection_of_primitive_values(String) },
                    "inferenceClassification" => lambda {|n| @inference_classification = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InferenceClassification.create_from_discriminator_value(pn) }) },
                    "insights" => lambda {|n| @insights = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OfficeGraphInsights.create_from_discriminator_value(pn) }) },
                    "interests" => lambda {|n| @interests = n.get_collection_of_primitive_values(String) },
                    "isResourceAccount" => lambda {|n| @is_resource_account = n.get_boolean_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "joinedTeams" => lambda {|n| @joined_teams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }) },
                    "lastPasswordChangeDateTime" => lambda {|n| @last_password_change_date_time = n.get_date_time_value() },
                    "legalAgeGroupClassification" => lambda {|n| @legal_age_group_classification = n.get_string_value() },
                    "licenseAssignmentStates" => lambda {|n| @license_assignment_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LicenseAssignmentState.create_from_discriminator_value(pn) }) },
                    "licenseDetails" => lambda {|n| @license_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LicenseDetails.create_from_discriminator_value(pn) }) },
                    "mail" => lambda {|n| @mail = n.get_string_value() },
                    "mailFolders" => lambda {|n| @mail_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MailFolder.create_from_discriminator_value(pn) }) },
                    "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                    "mailboxSettings" => lambda {|n| @mailbox_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MailboxSettings.create_from_discriminator_value(pn) }) },
                    "managedAppRegistrations" => lambda {|n| @managed_app_registrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppRegistration.create_from_discriminator_value(pn) }) },
                    "managedDevices" => lambda {|n| @managed_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                    "manager" => lambda {|n| @manager = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "messages" => lambda {|n| @messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Message.create_from_discriminator_value(pn) }) },
                    "mobilePhone" => lambda {|n| @mobile_phone = n.get_string_value() },
                    "mySite" => lambda {|n| @my_site = n.get_string_value() },
                    "oauth2PermissionGrants" => lambda {|n| @oauth2_permission_grants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OAuth2PermissionGrant.create_from_discriminator_value(pn) }) },
                    "officeLocation" => lambda {|n| @office_location = n.get_string_value() },
                    "onPremisesDistinguishedName" => lambda {|n| @on_premises_distinguished_name = n.get_string_value() },
                    "onPremisesDomainName" => lambda {|n| @on_premises_domain_name = n.get_string_value() },
                    "onPremisesExtensionAttributes" => lambda {|n| @on_premises_extension_attributes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnPremisesExtensionAttributes.create_from_discriminator_value(pn) }) },
                    "onPremisesImmutableId" => lambda {|n| @on_premises_immutable_id = n.get_string_value() },
                    "onPremisesLastSyncDateTime" => lambda {|n| @on_premises_last_sync_date_time = n.get_date_time_value() },
                    "onPremisesProvisioningErrors" => lambda {|n| @on_premises_provisioning_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnPremisesProvisioningError.create_from_discriminator_value(pn) }) },
                    "onPremisesSamAccountName" => lambda {|n| @on_premises_sam_account_name = n.get_string_value() },
                    "onPremisesSecurityIdentifier" => lambda {|n| @on_premises_security_identifier = n.get_string_value() },
                    "onPremisesSyncEnabled" => lambda {|n| @on_premises_sync_enabled = n.get_boolean_value() },
                    "onPremisesUserPrincipalName" => lambda {|n| @on_premises_user_principal_name = n.get_string_value() },
                    "onenote" => lambda {|n| @onenote = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Onenote.create_from_discriminator_value(pn) }) },
                    "onlineMeetings" => lambda {|n| @online_meetings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnlineMeeting.create_from_discriminator_value(pn) }) },
                    "otherMails" => lambda {|n| @other_mails = n.get_collection_of_primitive_values(String) },
                    "outlook" => lambda {|n| @outlook = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OutlookUser.create_from_discriminator_value(pn) }) },
                    "ownedDevices" => lambda {|n| @owned_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "ownedObjects" => lambda {|n| @owned_objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "passwordPolicies" => lambda {|n| @password_policies = n.get_string_value() },
                    "passwordProfile" => lambda {|n| @password_profile = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PasswordProfile.create_from_discriminator_value(pn) }) },
                    "pastProjects" => lambda {|n| @past_projects = n.get_collection_of_primitive_values(String) },
                    "people" => lambda {|n| @people = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Person.create_from_discriminator_value(pn) }) },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "photos" => lambda {|n| @photos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "planner" => lambda {|n| @planner = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerUser.create_from_discriminator_value(pn) }) },
                    "postalCode" => lambda {|n| @postal_code = n.get_string_value() },
                    "preferredDataLocation" => lambda {|n| @preferred_data_location = n.get_string_value() },
                    "preferredLanguage" => lambda {|n| @preferred_language = n.get_string_value() },
                    "preferredName" => lambda {|n| @preferred_name = n.get_string_value() },
                    "presence" => lambda {|n| @presence = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Presence.create_from_discriminator_value(pn) }) },
                    "provisionedPlans" => lambda {|n| @provisioned_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProvisionedPlan.create_from_discriminator_value(pn) }) },
                    "proxyAddresses" => lambda {|n| @proxy_addresses = n.get_collection_of_primitive_values(String) },
                    "registeredDevices" => lambda {|n| @registered_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "responsibilities" => lambda {|n| @responsibilities = n.get_collection_of_primitive_values(String) },
                    "schools" => lambda {|n| @schools = n.get_collection_of_primitive_values(String) },
                    "scopedRoleMemberOf" => lambda {|n| @scoped_role_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ScopedRoleMembership.create_from_discriminator_value(pn) }) },
                    "securityIdentifier" => lambda {|n| @security_identifier = n.get_string_value() },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserSettings.create_from_discriminator_value(pn) }) },
                    "showInAddressList" => lambda {|n| @show_in_address_list = n.get_boolean_value() },
                    "signInSessionsValidFromDateTime" => lambda {|n| @sign_in_sessions_valid_from_date_time = n.get_date_time_value() },
                    "skills" => lambda {|n| @skills = n.get_collection_of_primitive_values(String) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "streetAddress" => lambda {|n| @street_address = n.get_string_value() },
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                    "teamwork" => lambda {|n| @teamwork = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserTeamwork.create_from_discriminator_value(pn) }) },
                    "todo" => lambda {|n| @todo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Todo.create_from_discriminator_value(pn) }) },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "usageLocation" => lambda {|n| @usage_location = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the givenName property value. The given name (first name) of the user. Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. The given name (first name) of the user. Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the given_name property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the hireDate property value. The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.  Note: This property is specific to SharePoint Online. We recommend using the native employeeHireDate property to set and update hire date values using Microsoft Graph APIs.
            ## @return a date_time
            ## 
            def hire_date
                return @hire_date
            end
            ## 
            ## Sets the hireDate property value. The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.  Note: This property is specific to SharePoint Online. We recommend using the native employeeHireDate property to set and update hire date values using Microsoft Graph APIs.
            ## @param value Value to set for the hire_date property.
            ## @return a void
            ## 
            def hire_date=(value)
                @hire_date = value
            end
            ## 
            ## Gets the identities property value. Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft (also known as a local account), by organizations, or by social identity providers such as Facebook, Google, and Microsoft, and tied to a user account. May contain multiple items with the same signInType value. Returned only on $select. Supports $filter (eq) including on null values, only where the signInType is not userPrincipalName.
            ## @return a object_identity
            ## 
            def identities
                return @identities
            end
            ## 
            ## Sets the identities property value. Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft (also known as a local account), by organizations, or by social identity providers such as Facebook, Google, and Microsoft, and tied to a user account. May contain multiple items with the same signInType value. Returned only on $select. Supports $filter (eq) including on null values, only where the signInType is not userPrincipalName.
            ## @param value Value to set for the identities property.
            ## @return a void
            ## 
            def identities=(value)
                @identities = value
            end
            ## 
            ## Gets the imAddresses property value. The instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only. Returned only on $select. Supports $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def im_addresses
                return @im_addresses
            end
            ## 
            ## Sets the imAddresses property value. The instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only. Returned only on $select. Supports $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the im_addresses property.
            ## @return a void
            ## 
            def im_addresses=(value)
                @im_addresses = value
            end
            ## 
            ## Gets the inferenceClassification property value. Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
            ## @return a inference_classification
            ## 
            def inference_classification
                return @inference_classification
            end
            ## 
            ## Sets the inferenceClassification property value. Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance.
            ## @param value Value to set for the inference_classification property.
            ## @return a void
            ## 
            def inference_classification=(value)
                @inference_classification = value
            end
            ## 
            ## Gets the insights property value. The insights property
            ## @return a office_graph_insights
            ## 
            def insights
                return @insights
            end
            ## 
            ## Sets the insights property value. The insights property
            ## @param value Value to set for the insights property.
            ## @return a void
            ## 
            def insights=(value)
                @insights = value
            end
            ## 
            ## Gets the interests property value. A list for the user to describe their interests. Returned only on $select.
            ## @return a string
            ## 
            def interests
                return @interests
            end
            ## 
            ## Sets the interests property value. A list for the user to describe their interests. Returned only on $select.
            ## @param value Value to set for the interests property.
            ## @return a void
            ## 
            def interests=(value)
                @interests = value
            end
            ## 
            ## Gets the isResourceAccount property value. Do not use – reserved for future use.
            ## @return a boolean
            ## 
            def is_resource_account
                return @is_resource_account
            end
            ## 
            ## Sets the isResourceAccount property value. Do not use – reserved for future use.
            ## @param value Value to set for the is_resource_account property.
            ## @return a void
            ## 
            def is_resource_account=(value)
                @is_resource_account = value
            end
            ## 
            ## Gets the jobTitle property value. The user's job title. Maximum length is 128 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. The user's job title. Maximum length is 128 characters. Returned by default. Supports $filter (eq, ne, not , ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the job_title property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
            end
            ## 
            ## Gets the joinedTeams property value. The joinedTeams property
            ## @return a team
            ## 
            def joined_teams
                return @joined_teams
            end
            ## 
            ## Sets the joinedTeams property value. The joinedTeams property
            ## @param value Value to set for the joined_teams property.
            ## @return a void
            ## 
            def joined_teams=(value)
                @joined_teams = value
            end
            ## 
            ## Gets the lastPasswordChangeDateTime property value. The time when this Azure AD user last changed their password or when their password was created, whichever date the latest action was performed. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.
            ## @return a date_time
            ## 
            def last_password_change_date_time
                return @last_password_change_date_time
            end
            ## 
            ## Sets the lastPasswordChangeDateTime property value. The time when this Azure AD user last changed their password or when their password was created, whichever date the latest action was performed. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned only on $select.
            ## @param value Value to set for the last_password_change_date_time property.
            ## @return a void
            ## 
            def last_password_change_date_time=(value)
                @last_password_change_date_time = value
            end
            ## 
            ## Gets the legalAgeGroupClassification property value. Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on ageGroup and consentProvidedForMinor properties. Allowed values: null, MinorWithOutParentalConsent, MinorWithParentalConsent, MinorNoParentalConsentRequired, NotAdult and Adult. Refer to the legal age group property definitions for further information. Returned only on $select.
            ## @return a string
            ## 
            def legal_age_group_classification
                return @legal_age_group_classification
            end
            ## 
            ## Sets the legalAgeGroupClassification property value. Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on ageGroup and consentProvidedForMinor properties. Allowed values: null, MinorWithOutParentalConsent, MinorWithParentalConsent, MinorNoParentalConsentRequired, NotAdult and Adult. Refer to the legal age group property definitions for further information. Returned only on $select.
            ## @param value Value to set for the legal_age_group_classification property.
            ## @return a void
            ## 
            def legal_age_group_classification=(value)
                @legal_age_group_classification = value
            end
            ## 
            ## Gets the licenseAssignmentStates property value. State of license assignments for this user. Also indicates licenses that are directly-assigned and those that the user has inherited through group memberships. Read-only. Returned only on $select.
            ## @return a license_assignment_state
            ## 
            def license_assignment_states
                return @license_assignment_states
            end
            ## 
            ## Sets the licenseAssignmentStates property value. State of license assignments for this user. Also indicates licenses that are directly-assigned and those that the user has inherited through group memberships. Read-only. Returned only on $select.
            ## @param value Value to set for the license_assignment_states property.
            ## @return a void
            ## 
            def license_assignment_states=(value)
                @license_assignment_states = value
            end
            ## 
            ## Gets the licenseDetails property value. A collection of this user's license details. Read-only.
            ## @return a license_details
            ## 
            def license_details
                return @license_details
            end
            ## 
            ## Sets the licenseDetails property value. A collection of this user's license details. Read-only.
            ## @param value Value to set for the license_details property.
            ## @return a void
            ## 
            def license_details=(value)
                @license_details = value
            end
            ## 
            ## Gets the mail property value. The SMTP address for the user, for example, jeff@contoso.onmicrosoft.com. Changes to this property will also update the user's proxyAddresses collection to include the value as an SMTP address. This property cannot contain accent characters.  NOTE: We do not recommend updating this property for Azure AD B2C user profiles. Use the otherMails property instead. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, endsWith, and eq on null values).
            ## @return a string
            ## 
            def mail
                return @mail
            end
            ## 
            ## Sets the mail property value. The SMTP address for the user, for example, jeff@contoso.onmicrosoft.com. Changes to this property will also update the user's proxyAddresses collection to include the value as an SMTP address. This property cannot contain accent characters.  NOTE: We do not recommend updating this property for Azure AD B2C user profiles. Use the otherMails property instead. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, endsWith, and eq on null values).
            ## @param value Value to set for the mail property.
            ## @return a void
            ## 
            def mail=(value)
                @mail = value
            end
            ## 
            ## Gets the mailFolders property value. The user's mail folders. Read-only. Nullable.
            ## @return a mail_folder
            ## 
            def mail_folders
                return @mail_folders
            end
            ## 
            ## Sets the mailFolders property value. The user's mail folders. Read-only. Nullable.
            ## @param value Value to set for the mail_folders property.
            ## @return a void
            ## 
            def mail_folders=(value)
                @mail_folders = value
            end
            ## 
            ## Gets the mailNickname property value. The mail alias for the user. This property must be specified when a user is created. Maximum length is 64 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. The mail alias for the user. This property must be specified when a user is created. Maximum length is 64 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the mail_nickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the mailboxSettings property value. Settings for the primary mailbox of the signed-in user. You can get or update settings for sending automatic replies to incoming messages, locale and time zone. Returned only on $select.
            ## @return a mailbox_settings
            ## 
            def mailbox_settings
                return @mailbox_settings
            end
            ## 
            ## Sets the mailboxSettings property value. Settings for the primary mailbox of the signed-in user. You can get or update settings for sending automatic replies to incoming messages, locale and time zone. Returned only on $select.
            ## @param value Value to set for the mailbox_settings property.
            ## @return a void
            ## 
            def mailbox_settings=(value)
                @mailbox_settings = value
            end
            ## 
            ## Gets the managedAppRegistrations property value. Zero or more managed app registrations that belong to the user.
            ## @return a managed_app_registration
            ## 
            def managed_app_registrations
                return @managed_app_registrations
            end
            ## 
            ## Sets the managedAppRegistrations property value. Zero or more managed app registrations that belong to the user.
            ## @param value Value to set for the managed_app_registrations property.
            ## @return a void
            ## 
            def managed_app_registrations=(value)
                @managed_app_registrations = value
            end
            ## 
            ## Gets the managedDevices property value. The managed devices associated with the user.
            ## @return a managed_device
            ## 
            def managed_devices
                return @managed_devices
            end
            ## 
            ## Sets the managedDevices property value. The managed devices associated with the user.
            ## @param value Value to set for the managed_devices property.
            ## @return a void
            ## 
            def managed_devices=(value)
                @managed_devices = value
            end
            ## 
            ## Gets the manager property value. The user or contact that is this user's manager. Read-only. (HTTP Methods: GET, PUT, DELETE.). Supports $expand.
            ## @return a directory_object
            ## 
            def manager
                return @manager
            end
            ## 
            ## Sets the manager property value. The user or contact that is this user's manager. Read-only. (HTTP Methods: GET, PUT, DELETE.). Supports $expand.
            ## @param value Value to set for the manager property.
            ## @return a void
            ## 
            def manager=(value)
                @manager = value
            end
            ## 
            ## Gets the memberOf property value. The groups and directory roles that the user is a member of. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. The groups and directory roles that the user is a member of. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the member_of property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the messages property value. The messages in a mailbox or folder. Read-only. Nullable.
            ## @return a message
            ## 
            def messages
                return @messages
            end
            ## 
            ## Sets the messages property value. The messages in a mailbox or folder. Read-only. Nullable.
            ## @param value Value to set for the messages property.
            ## @return a void
            ## 
            def messages=(value)
                @messages = value
            end
            ## 
            ## Gets the mobilePhone property value. The primary cellular telephone number for the user. Read-only for users synced from on-premises directory. Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def mobile_phone
                return @mobile_phone
            end
            ## 
            ## Sets the mobilePhone property value. The primary cellular telephone number for the user. Read-only for users synced from on-premises directory. Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the mobile_phone property.
            ## @return a void
            ## 
            def mobile_phone=(value)
                @mobile_phone = value
            end
            ## 
            ## Gets the mySite property value. The URL for the user's personal site. Returned only on $select.
            ## @return a string
            ## 
            def my_site
                return @my_site
            end
            ## 
            ## Sets the mySite property value. The URL for the user's personal site. Returned only on $select.
            ## @param value Value to set for the my_site property.
            ## @return a void
            ## 
            def my_site=(value)
                @my_site = value
            end
            ## 
            ## Gets the oauth2PermissionGrants property value. The oauth2PermissionGrants property
            ## @return a o_auth2_permission_grant
            ## 
            def oauth2_permission_grants
                return @oauth2_permission_grants
            end
            ## 
            ## Sets the oauth2PermissionGrants property value. The oauth2PermissionGrants property
            ## @param value Value to set for the oauth2_permission_grants property.
            ## @return a void
            ## 
            def oauth2_permission_grants=(value)
                @oauth2_permission_grants = value
            end
            ## 
            ## Gets the officeLocation property value. The office location in the user's place of business. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def office_location
                return @office_location
            end
            ## 
            ## Sets the officeLocation property value. The office location in the user's place of business. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the office_location property.
            ## @return a void
            ## 
            def office_location=(value)
                @office_location = value
            end
            ## 
            ## Gets the onPremisesDistinguishedName property value. Contains the on-premises Active Directory distinguished name or DN. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select.
            ## @return a string
            ## 
            def on_premises_distinguished_name
                return @on_premises_distinguished_name
            end
            ## 
            ## Sets the onPremisesDistinguishedName property value. Contains the on-premises Active Directory distinguished name or DN. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select.
            ## @param value Value to set for the on_premises_distinguished_name property.
            ## @return a void
            ## 
            def on_premises_distinguished_name=(value)
                @on_premises_distinguished_name = value
            end
            ## 
            ## Gets the onPremisesDomainName property value. Contains the on-premises domainFQDN, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select.
            ## @return a string
            ## 
            def on_premises_domain_name
                return @on_premises_domain_name
            end
            ## 
            ## Sets the onPremisesDomainName property value. Contains the on-premises domainFQDN, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select.
            ## @param value Value to set for the on_premises_domain_name property.
            ## @return a void
            ## 
            def on_premises_domain_name=(value)
                @on_premises_domain_name = value
            end
            ## 
            ## Gets the onPremisesExtensionAttributes property value. Contains extensionAttributes1-15 for the user. These extension attributes are also known as Exchange custom attributes 1-15. For an onPremisesSyncEnabled user, the source of authority for this set of properties is the on-premises and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties can be set during creation or update of a user object.  For a cloud-only user previously synced from on-premises Active Directory, these properties are read-only in Microsoft Graph but can be fully managed through the Exchange Admin Center or the Exchange Online V2 module in PowerShell. Returned only on $select. Supports $filter (eq, ne, not, in).
            ## @return a on_premises_extension_attributes
            ## 
            def on_premises_extension_attributes
                return @on_premises_extension_attributes
            end
            ## 
            ## Sets the onPremisesExtensionAttributes property value. Contains extensionAttributes1-15 for the user. These extension attributes are also known as Exchange custom attributes 1-15. For an onPremisesSyncEnabled user, the source of authority for this set of properties is the on-premises and is read-only. For a cloud-only user (where onPremisesSyncEnabled is false), these properties can be set during creation or update of a user object.  For a cloud-only user previously synced from on-premises Active Directory, these properties are read-only in Microsoft Graph but can be fully managed through the Exchange Admin Center or the Exchange Online V2 module in PowerShell. Returned only on $select. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the on_premises_extension_attributes property.
            ## @return a void
            ## 
            def on_premises_extension_attributes=(value)
                @on_premises_extension_attributes = value
            end
            ## 
            ## Gets the onPremisesImmutableId property value. This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user's userPrincipalName (UPN) property. NOTE: The $ and _ characters cannot be used when specifying this property. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in)..
            ## @return a string
            ## 
            def on_premises_immutable_id
                return @on_premises_immutable_id
            end
            ## 
            ## Sets the onPremisesImmutableId property value. This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user's userPrincipalName (UPN) property. NOTE: The $ and _ characters cannot be used when specifying this property. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in)..
            ## @param value Value to set for the on_premises_immutable_id property.
            ## @return a void
            ## 
            def on_premises_immutable_id=(value)
                @on_premises_immutable_id = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. Indicates the last time at which the object was synced with the on-premises directory; for example: 2013-02-16T03:04:54Z. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in).
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. Indicates the last time at which the object was synced with the on-premises directory; for example: 2013-02-16T03:04:54Z. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in).
            ## @param value Value to set for the on_premises_last_sync_date_time property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesProvisioningErrors property value. Errors when using Microsoft synchronization product during provisioning. Returned only on $select. Supports $filter (eq, not, ge, le).
            ## @return a on_premises_provisioning_error
            ## 
            def on_premises_provisioning_errors
                return @on_premises_provisioning_errors
            end
            ## 
            ## Sets the onPremisesProvisioningErrors property value. Errors when using Microsoft synchronization product during provisioning. Returned only on $select. Supports $filter (eq, not, ge, le).
            ## @param value Value to set for the on_premises_provisioning_errors property.
            ## @return a void
            ## 
            def on_premises_provisioning_errors=(value)
                @on_premises_provisioning_errors = value
            end
            ## 
            ## Gets the onPremisesSamAccountName property value. Contains the on-premises samAccountName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            ## @return a string
            ## 
            def on_premises_sam_account_name
                return @on_premises_sam_account_name
            end
            ## 
            ## Sets the onPremisesSamAccountName property value. Contains the on-premises samAccountName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            ## @param value Value to set for the on_premises_sam_account_name property.
            ## @return a void
            ## 
            def on_premises_sam_account_name=(value)
                @on_premises_sam_account_name = value
            end
            ## 
            ## Gets the onPremisesSecurityIdentifier property value. Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only. Returned only on $select.  Supports $filter (eq including on null values).
            ## @return a string
            ## 
            def on_premises_security_identifier
                return @on_premises_security_identifier
            end
            ## 
            ## Sets the onPremisesSecurityIdentifier property value. Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only. Returned only on $select.  Supports $filter (eq including on null values).
            ## @param value Value to set for the on_premises_security_identifier property.
            ## @return a void
            ## 
            def on_premises_security_identifier=(value)
                @on_premises_security_identifier = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. true if this user object is currently being synced from an on-premises Active Directory (AD); otherwise the user isn't being synced and can be managed in Azure Active Directory (Azure AD). Read-only. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. true if this user object is currently being synced from an on-premises Active Directory (AD); otherwise the user isn't being synced and can be managed in Azure Active Directory (Azure AD). Read-only. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @param value Value to set for the on_premises_sync_enabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the onPremisesUserPrincipalName property value. Contains the on-premises userPrincipalName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            ## @return a string
            ## 
            def on_premises_user_principal_name
                return @on_premises_user_principal_name
            end
            ## 
            ## Sets the onPremisesUserPrincipalName property value. Contains the on-premises userPrincipalName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            ## @param value Value to set for the on_premises_user_principal_name property.
            ## @return a void
            ## 
            def on_premises_user_principal_name=(value)
                @on_premises_user_principal_name = value
            end
            ## 
            ## Gets the onenote property value. The onenote property
            ## @return a onenote
            ## 
            def onenote
                return @onenote
            end
            ## 
            ## Sets the onenote property value. The onenote property
            ## @param value Value to set for the onenote property.
            ## @return a void
            ## 
            def onenote=(value)
                @onenote = value
            end
            ## 
            ## Gets the onlineMeetings property value. The onlineMeetings property
            ## @return a online_meeting
            ## 
            def online_meetings
                return @online_meetings
            end
            ## 
            ## Sets the onlineMeetings property value. The onlineMeetings property
            ## @param value Value to set for the online_meetings property.
            ## @return a void
            ## 
            def online_meetings=(value)
                @online_meetings = value
            end
            ## 
            ## Gets the otherMails property value. A list of additional email addresses for the user; for example: ['bob@contoso.com', 'Robert@fabrikam.com']. NOTE: This property cannot contain accent characters. Returned only on $select. Supports $filter (eq, not, ge, le, in, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def other_mails
                return @other_mails
            end
            ## 
            ## Sets the otherMails property value. A list of additional email addresses for the user; for example: ['bob@contoso.com', 'Robert@fabrikam.com']. NOTE: This property cannot contain accent characters. Returned only on $select. Supports $filter (eq, not, ge, le, in, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the other_mails property.
            ## @return a void
            ## 
            def other_mails=(value)
                @other_mails = value
            end
            ## 
            ## Gets the outlook property value. The outlook property
            ## @return a outlook_user
            ## 
            def outlook
                return @outlook
            end
            ## 
            ## Sets the outlook property value. The outlook property
            ## @param value Value to set for the outlook property.
            ## @return a void
            ## 
            def outlook=(value)
                @outlook = value
            end
            ## 
            ## Gets the ownedDevices property value. Devices that are owned by the user. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            ## @return a directory_object
            ## 
            def owned_devices
                return @owned_devices
            end
            ## 
            ## Sets the ownedDevices property value. Devices that are owned by the user. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            ## @param value Value to set for the owned_devices property.
            ## @return a void
            ## 
            def owned_devices=(value)
                @owned_devices = value
            end
            ## 
            ## Gets the ownedObjects property value. Directory objects that are owned by the user. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def owned_objects
                return @owned_objects
            end
            ## 
            ## Sets the ownedObjects property value. Directory objects that are owned by the user. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the owned_objects property.
            ## @return a void
            ## 
            def owned_objects=(value)
                @owned_objects = value
            end
            ## 
            ## Gets the passwordPolicies property value. Specifies password policies for the user. This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified. DisablePasswordExpiration can also be specified. The two may be specified together; for example: DisablePasswordExpiration, DisableStrongPassword. Returned only on $select. For more information on the default password policies, see Azure AD pasword policies. Supports $filter (ne, not, and eq on null values).
            ## @return a string
            ## 
            def password_policies
                return @password_policies
            end
            ## 
            ## Sets the passwordPolicies property value. Specifies password policies for the user. This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified. DisablePasswordExpiration can also be specified. The two may be specified together; for example: DisablePasswordExpiration, DisableStrongPassword. Returned only on $select. For more information on the default password policies, see Azure AD pasword policies. Supports $filter (ne, not, and eq on null values).
            ## @param value Value to set for the password_policies property.
            ## @return a void
            ## 
            def password_policies=(value)
                @password_policies = value
            end
            ## 
            ## Gets the passwordProfile property value. Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the passwordPolicies property. By default, a strong password is required. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @return a password_profile
            ## 
            def password_profile
                return @password_profile
            end
            ## 
            ## Sets the passwordProfile property value. Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the passwordPolicies property. By default, a strong password is required. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @param value Value to set for the password_profile property.
            ## @return a void
            ## 
            def password_profile=(value)
                @password_profile = value
            end
            ## 
            ## Gets the pastProjects property value. A list for the user to enumerate their past projects. Returned only on $select.
            ## @return a string
            ## 
            def past_projects
                return @past_projects
            end
            ## 
            ## Sets the pastProjects property value. A list for the user to enumerate their past projects. Returned only on $select.
            ## @param value Value to set for the past_projects property.
            ## @return a void
            ## 
            def past_projects=(value)
                @past_projects = value
            end
            ## 
            ## Gets the people property value. People that are relevant to the user. Read-only. Nullable.
            ## @return a person
            ## 
            def people
                return @people
            end
            ## 
            ## Sets the people property value. People that are relevant to the user. Read-only. Nullable.
            ## @param value Value to set for the people property.
            ## @return a void
            ## 
            def people=(value)
                @people = value
            end
            ## 
            ## Gets the photo property value. The user's profile photo. Read-only.
            ## @return a profile_photo
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. The user's profile photo. Read-only.
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Gets the photos property value. The photos property
            ## @return a profile_photo
            ## 
            def photos
                return @photos
            end
            ## 
            ## Sets the photos property value. The photos property
            ## @param value Value to set for the photos property.
            ## @return a void
            ## 
            def photos=(value)
                @photos = value
            end
            ## 
            ## Gets the planner property value. Entry-point to the Planner resource that might exist for a user. Read-only.
            ## @return a planner_user
            ## 
            def planner
                return @planner
            end
            ## 
            ## Sets the planner property value. Entry-point to the Planner resource that might exist for a user. Read-only.
            ## @param value Value to set for the planner property.
            ## @return a void
            ## 
            def planner=(value)
                @planner = value
            end
            ## 
            ## Gets the postalCode property value. The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. Maximum length is 40 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def postal_code
                return @postal_code
            end
            ## 
            ## Sets the postalCode property value. The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. Maximum length is 40 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the postal_code property.
            ## @return a void
            ## 
            def postal_code=(value)
                @postal_code = value
            end
            ## 
            ## Gets the preferredDataLocation property value. The preferred data location for the user. For more information, see OneDrive Online Multi-Geo.
            ## @return a string
            ## 
            def preferred_data_location
                return @preferred_data_location
            end
            ## 
            ## Sets the preferredDataLocation property value. The preferred data location for the user. For more information, see OneDrive Online Multi-Geo.
            ## @param value Value to set for the preferred_data_location property.
            ## @return a void
            ## 
            def preferred_data_location=(value)
                @preferred_data_location = value
            end
            ## 
            ## Gets the preferredLanguage property value. The preferred language for the user. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values)
            ## @return a string
            ## 
            def preferred_language
                return @preferred_language
            end
            ## 
            ## Sets the preferredLanguage property value. The preferred language for the user. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values)
            ## @param value Value to set for the preferred_language property.
            ## @return a void
            ## 
            def preferred_language=(value)
                @preferred_language = value
            end
            ## 
            ## Gets the preferredName property value. The preferred name for the user. Not Supported. This attribute returns an empty string.Returned only on $select.
            ## @return a string
            ## 
            def preferred_name
                return @preferred_name
            end
            ## 
            ## Sets the preferredName property value. The preferred name for the user. Not Supported. This attribute returns an empty string.Returned only on $select.
            ## @param value Value to set for the preferred_name property.
            ## @return a void
            ## 
            def preferred_name=(value)
                @preferred_name = value
            end
            ## 
            ## Gets the presence property value. The presence property
            ## @return a presence
            ## 
            def presence
                return @presence
            end
            ## 
            ## Sets the presence property value. The presence property
            ## @param value Value to set for the presence property.
            ## @return a void
            ## 
            def presence=(value)
                @presence = value
            end
            ## 
            ## Gets the provisionedPlans property value. The plans that are provisioned for the user. Read-only. Not nullable. Returned only on $select. Supports $filter (eq, not, ge, le).
            ## @return a provisioned_plan
            ## 
            def provisioned_plans
                return @provisioned_plans
            end
            ## 
            ## Sets the provisionedPlans property value. The plans that are provisioned for the user. Read-only. Not nullable. Returned only on $select. Supports $filter (eq, not, ge, le).
            ## @param value Value to set for the provisioned_plans property.
            ## @return a void
            ## 
            def provisioned_plans=(value)
                @provisioned_plans = value
            end
            ## 
            ## Gets the proxyAddresses property value. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. Changes to the mail property will also update this collection to include the value as an SMTP address. For more information, see mail and proxyAddresses properties. The proxy address prefixed with SMTP (capitalized) is the primary proxy address while those prefixed with smtp are the secondary proxy addresses. For Azure AD B2C accounts, this property has a limit of ten unique addresses. Read-only in Microsoft Graph; you can update this property only through the Microsoft 365 admin center. Not nullable. Returned only on $select. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def proxy_addresses
                return @proxy_addresses
            end
            ## 
            ## Sets the proxyAddresses property value. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. Changes to the mail property will also update this collection to include the value as an SMTP address. For more information, see mail and proxyAddresses properties. The proxy address prefixed with SMTP (capitalized) is the primary proxy address while those prefixed with smtp are the secondary proxy addresses. For Azure AD B2C accounts, this property has a limit of ten unique addresses. Read-only in Microsoft Graph; you can update this property only through the Microsoft 365 admin center. Not nullable. Returned only on $select. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the proxy_addresses property.
            ## @return a void
            ## 
            def proxy_addresses=(value)
                @proxy_addresses = value
            end
            ## 
            ## Gets the registeredDevices property value. Devices that are registered for the user. Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def registered_devices
                return @registered_devices
            end
            ## 
            ## Sets the registeredDevices property value. Devices that are registered for the user. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the registered_devices property.
            ## @return a void
            ## 
            def registered_devices=(value)
                @registered_devices = value
            end
            ## 
            ## Gets the responsibilities property value. A list for the user to enumerate their responsibilities. Returned only on $select.
            ## @return a string
            ## 
            def responsibilities
                return @responsibilities
            end
            ## 
            ## Sets the responsibilities property value. A list for the user to enumerate their responsibilities. Returned only on $select.
            ## @param value Value to set for the responsibilities property.
            ## @return a void
            ## 
            def responsibilities=(value)
                @responsibilities = value
            end
            ## 
            ## Gets the schools property value. A list for the user to enumerate the schools they have attended. Returned only on $select.
            ## @return a string
            ## 
            def schools
                return @schools
            end
            ## 
            ## Sets the schools property value. A list for the user to enumerate the schools they have attended. Returned only on $select.
            ## @param value Value to set for the schools property.
            ## @return a void
            ## 
            def schools=(value)
                @schools = value
            end
            ## 
            ## Gets the scopedRoleMemberOf property value. The scopedRoleMemberOf property
            ## @return a scoped_role_membership
            ## 
            def scoped_role_member_of
                return @scoped_role_member_of
            end
            ## 
            ## Sets the scopedRoleMemberOf property value. The scopedRoleMemberOf property
            ## @param value Value to set for the scoped_role_member_of property.
            ## @return a void
            ## 
            def scoped_role_member_of=(value)
                @scoped_role_member_of = value
            end
            ## 
            ## Gets the securityIdentifier property value. Security identifier (SID) of the user, used in Windows scenarios. Read-only. Returned by default. Supports $select and $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def security_identifier
                return @security_identifier
            end
            ## 
            ## Sets the securityIdentifier property value. Security identifier (SID) of the user, used in Windows scenarios. Read-only. Returned by default. Supports $select and $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the security_identifier property.
            ## @return a void
            ## 
            def security_identifier=(value)
                @security_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("aboutMe", @about_me)
                writer.write_boolean_value("accountEnabled", @account_enabled)
                writer.write_collection_of_object_values("activities", @activities)
                writer.write_string_value("ageGroup", @age_group)
                writer.write_collection_of_object_values("agreementAcceptances", @agreement_acceptances)
                writer.write_collection_of_object_values("appRoleAssignments", @app_role_assignments)
                writer.write_collection_of_object_values("assignedLicenses", @assigned_licenses)
                writer.write_collection_of_object_values("assignedPlans", @assigned_plans)
                writer.write_object_value("authentication", @authentication)
                writer.write_object_value("authorizationInfo", @authorization_info)
                writer.write_date_time_value("birthday", @birthday)
                writer.write_collection_of_primitive_values("businessPhones", @business_phones)
                writer.write_object_value("calendar", @calendar)
                writer.write_collection_of_object_values("calendarGroups", @calendar_groups)
                writer.write_collection_of_object_values("calendarView", @calendar_view)
                writer.write_collection_of_object_values("calendars", @calendars)
                writer.write_collection_of_object_values("chats", @chats)
                writer.write_string_value("city", @city)
                writer.write_string_value("companyName", @company_name)
                writer.write_string_value("consentProvidedForMinor", @consent_provided_for_minor)
                writer.write_collection_of_object_values("contactFolders", @contact_folders)
                writer.write_collection_of_object_values("contacts", @contacts)
                writer.write_string_value("country", @country)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("createdObjects", @created_objects)
                writer.write_string_value("creationType", @creation_type)
                writer.write_string_value("department", @department)
                writer.write_number_value("deviceEnrollmentLimit", @device_enrollment_limit)
                writer.write_collection_of_object_values("deviceManagementTroubleshootingEvents", @device_management_troubleshooting_events)
                writer.write_collection_of_object_values("directReports", @direct_reports)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_collection_of_object_values("drives", @drives)
                writer.write_date_time_value("employeeHireDate", @employee_hire_date)
                writer.write_string_value("employeeId", @employee_id)
                writer.write_date_time_value("employeeLeaveDateTime", @employee_leave_date_time)
                writer.write_object_value("employeeOrgData", @employee_org_data)
                writer.write_string_value("employeeType", @employee_type)
                writer.write_collection_of_object_values("events", @events)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_string_value("externalUserState", @external_user_state)
                writer.write_date_time_value("externalUserStateChangeDateTime", @external_user_state_change_date_time)
                writer.write_string_value("faxNumber", @fax_number)
                writer.write_collection_of_object_values("followedSites", @followed_sites)
                writer.write_string_value("givenName", @given_name)
                writer.write_date_time_value("hireDate", @hire_date)
                writer.write_collection_of_object_values("identities", @identities)
                writer.write_collection_of_primitive_values("imAddresses", @im_addresses)
                writer.write_object_value("inferenceClassification", @inference_classification)
                writer.write_object_value("insights", @insights)
                writer.write_collection_of_primitive_values("interests", @interests)
                writer.write_boolean_value("isResourceAccount", @is_resource_account)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_collection_of_object_values("joinedTeams", @joined_teams)
                writer.write_date_time_value("lastPasswordChangeDateTime", @last_password_change_date_time)
                writer.write_string_value("legalAgeGroupClassification", @legal_age_group_classification)
                writer.write_collection_of_object_values("licenseAssignmentStates", @license_assignment_states)
                writer.write_collection_of_object_values("licenseDetails", @license_details)
                writer.write_string_value("mail", @mail)
                writer.write_collection_of_object_values("mailFolders", @mail_folders)
                writer.write_string_value("mailNickname", @mail_nickname)
                writer.write_object_value("mailboxSettings", @mailbox_settings)
                writer.write_collection_of_object_values("managedAppRegistrations", @managed_app_registrations)
                writer.write_collection_of_object_values("managedDevices", @managed_devices)
                writer.write_object_value("manager", @manager)
                writer.write_collection_of_object_values("memberOf", @member_of)
                writer.write_collection_of_object_values("messages", @messages)
                writer.write_string_value("mobilePhone", @mobile_phone)
                writer.write_string_value("mySite", @my_site)
                writer.write_collection_of_object_values("oauth2PermissionGrants", @oauth2_permission_grants)
                writer.write_string_value("officeLocation", @office_location)
                writer.write_string_value("onPremisesDistinguishedName", @on_premises_distinguished_name)
                writer.write_string_value("onPremisesDomainName", @on_premises_domain_name)
                writer.write_object_value("onPremisesExtensionAttributes", @on_premises_extension_attributes)
                writer.write_string_value("onPremisesImmutableId", @on_premises_immutable_id)
                writer.write_date_time_value("onPremisesLastSyncDateTime", @on_premises_last_sync_date_time)
                writer.write_collection_of_object_values("onPremisesProvisioningErrors", @on_premises_provisioning_errors)
                writer.write_string_value("onPremisesSamAccountName", @on_premises_sam_account_name)
                writer.write_string_value("onPremisesSecurityIdentifier", @on_premises_security_identifier)
                writer.write_boolean_value("onPremisesSyncEnabled", @on_premises_sync_enabled)
                writer.write_string_value("onPremisesUserPrincipalName", @on_premises_user_principal_name)
                writer.write_object_value("onenote", @onenote)
                writer.write_collection_of_object_values("onlineMeetings", @online_meetings)
                writer.write_collection_of_primitive_values("otherMails", @other_mails)
                writer.write_object_value("outlook", @outlook)
                writer.write_collection_of_object_values("ownedDevices", @owned_devices)
                writer.write_collection_of_object_values("ownedObjects", @owned_objects)
                writer.write_string_value("passwordPolicies", @password_policies)
                writer.write_object_value("passwordProfile", @password_profile)
                writer.write_collection_of_primitive_values("pastProjects", @past_projects)
                writer.write_collection_of_object_values("people", @people)
                writer.write_object_value("photo", @photo)
                writer.write_collection_of_object_values("photos", @photos)
                writer.write_object_value("planner", @planner)
                writer.write_string_value("postalCode", @postal_code)
                writer.write_string_value("preferredDataLocation", @preferred_data_location)
                writer.write_string_value("preferredLanguage", @preferred_language)
                writer.write_string_value("preferredName", @preferred_name)
                writer.write_object_value("presence", @presence)
                writer.write_collection_of_object_values("provisionedPlans", @provisioned_plans)
                writer.write_collection_of_primitive_values("proxyAddresses", @proxy_addresses)
                writer.write_collection_of_object_values("registeredDevices", @registered_devices)
                writer.write_collection_of_primitive_values("responsibilities", @responsibilities)
                writer.write_collection_of_primitive_values("schools", @schools)
                writer.write_collection_of_object_values("scopedRoleMemberOf", @scoped_role_member_of)
                writer.write_string_value("securityIdentifier", @security_identifier)
                writer.write_object_value("settings", @settings)
                writer.write_boolean_value("showInAddressList", @show_in_address_list)
                writer.write_date_time_value("signInSessionsValidFromDateTime", @sign_in_sessions_valid_from_date_time)
                writer.write_collection_of_primitive_values("skills", @skills)
                writer.write_string_value("state", @state)
                writer.write_string_value("streetAddress", @street_address)
                writer.write_string_value("surname", @surname)
                writer.write_object_value("teamwork", @teamwork)
                writer.write_object_value("todo", @todo)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
                writer.write_string_value("usageLocation", @usage_location)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_string_value("userType", @user_type)
            end
            ## 
            ## Gets the settings property value. The settings property
            ## @return a user_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings property
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the showInAddressList property value. Do not use in Microsoft Graph. Manage this property through the Microsoft 365 admin center instead. Represents whether the user should be included in the Outlook global address list. See Known issue.
            ## @return a boolean
            ## 
            def show_in_address_list
                return @show_in_address_list
            end
            ## 
            ## Sets the showInAddressList property value. Do not use in Microsoft Graph. Manage this property through the Microsoft 365 admin center instead. Represents whether the user should be included in the Outlook global address list. See Known issue.
            ## @param value Value to set for the show_in_address_list property.
            ## @return a void
            ## 
            def show_in_address_list=(value)
                @show_in_address_list = value
            end
            ## 
            ## Gets the signInSessionsValidFromDateTime property value. Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. Read-only. Use revokeSignInSessions to reset. Returned only on $select.
            ## @return a date_time
            ## 
            def sign_in_sessions_valid_from_date_time
                return @sign_in_sessions_valid_from_date_time
            end
            ## 
            ## Sets the signInSessionsValidFromDateTime property value. Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. Read-only. Use revokeSignInSessions to reset. Returned only on $select.
            ## @param value Value to set for the sign_in_sessions_valid_from_date_time property.
            ## @return a void
            ## 
            def sign_in_sessions_valid_from_date_time=(value)
                @sign_in_sessions_valid_from_date_time = value
            end
            ## 
            ## Gets the skills property value. A list for the user to enumerate their skills. Returned only on $select.
            ## @return a string
            ## 
            def skills
                return @skills
            end
            ## 
            ## Sets the skills property value. A list for the user to enumerate their skills. Returned only on $select.
            ## @param value Value to set for the skills property.
            ## @return a void
            ## 
            def skills=(value)
                @skills = value
            end
            ## 
            ## Gets the state property value. The state or province in the user's address. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state or province in the user's address. Maximum length is 128 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the streetAddress property value. The street address of the user's place of business. Maximum length is 1024 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def street_address
                return @street_address
            end
            ## 
            ## Sets the streetAddress property value. The street address of the user's place of business. Maximum length is 1024 characters. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the street_address property.
            ## @return a void
            ## 
            def street_address=(value)
                @street_address = value
            end
            ## 
            ## Gets the surname property value. The user's surname (family name or last name). Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def surname
                return @surname
            end
            ## 
            ## Sets the surname property value. The user's surname (family name or last name). Maximum length is 64 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the surname property.
            ## @return a void
            ## 
            def surname=(value)
                @surname = value
            end
            ## 
            ## Gets the teamwork property value. The teamwork property
            ## @return a user_teamwork
            ## 
            def teamwork
                return @teamwork
            end
            ## 
            ## Sets the teamwork property value. The teamwork property
            ## @param value Value to set for the teamwork property.
            ## @return a void
            ## 
            def teamwork=(value)
                @teamwork = value
            end
            ## 
            ## Gets the todo property value. Represents the To Do services available to a user.
            ## @return a todo
            ## 
            def todo
                return @todo
            end
            ## 
            ## Sets the todo property value. Represents the To Do services available to a user.
            ## @param value Value to set for the todo property.
            ## @return a void
            ## 
            def todo=(value)
                @todo = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. The groups, including nested groups, and directory roles that a user is a member of. Nullable.
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. The groups, including nested groups, and directory roles that a user is a member of. Nullable.
            ## @param value Value to set for the transitive_member_of property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
            ## 
            ## Gets the usageLocation property value. A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: US, JP, and GB. Not nullable. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def usage_location
                return @usage_location
            end
            ## 
            ## Sets the usageLocation property value. A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: US, JP, and GB. Not nullable. Returned only on $select. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the usage_location property.
            ## @return a void
            ## 
            def usage_location=(value)
                @usage_location = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the verifiedDomains property of organization.NOTE: This property cannot contain accent characters. Only the following characters are allowed A - Z, a - z, 0 - 9, ' . - _ ! # ^ ~. For the complete list of allowed characters, see username policies. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, endsWith) and $orderBy.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the verifiedDomains property of organization.NOTE: This property cannot contain accent characters. Only the following characters are allowed A - Z, a - z, 0 - 9, ' . - _ ! # ^ ~. For the complete list of allowed characters, see username policies. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, endsWith) and $orderBy.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. A string value that can be used to classify user types in your directory, such as Member and Guest. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values). NOTE: For more information about the permissions for member and guest users, see What are the default user permissions in Azure Active Directory?
            ## @return a string
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. A string value that can be used to classify user types in your directory, such as Member and Guest. Returned only on $select. Supports $filter (eq, ne, not, in, and eq on null values). NOTE: For more information about the permissions for member and guest users, see What are the default user permissions in Azure Active Directory?
            ## @param value Value to set for the user_type property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
