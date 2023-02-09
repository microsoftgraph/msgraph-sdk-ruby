module MicrosoftGraph
    module Models
        ## 
        # Possible ways of adding a mobile device to management.
        DeviceEnrollmentType = {
            Unknown: :Unknown,
            UserEnrollment: :UserEnrollment,
            DeviceEnrollmentManager: :DeviceEnrollmentManager,
            AppleBulkWithUser: :AppleBulkWithUser,
            AppleBulkWithoutUser: :AppleBulkWithoutUser,
            WindowsAzureADJoin: :WindowsAzureADJoin,
            WindowsBulkUserless: :WindowsBulkUserless,
            WindowsAutoEnrollment: :WindowsAutoEnrollment,
            WindowsBulkAzureDomainJoin: :WindowsBulkAzureDomainJoin,
            WindowsCoManagement: :WindowsCoManagement,
            WindowsAzureADJoinUsingDeviceAuth: :WindowsAzureADJoinUsingDeviceAuth,
            AppleUserEnrollment: :AppleUserEnrollment,
            AppleUserEnrollmentWithServiceAccount: :AppleUserEnrollmentWithServiceAccount,
        }
    end
end
