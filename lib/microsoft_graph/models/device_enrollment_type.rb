module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreementAcceptance entities.
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
