module MicrosoftGraph
    module Models
        ## 
        # Storage locations where managed apps can potentially store their data
        ManagedAppDataStorageLocation = {
            OneDriveForBusiness: :OneDriveForBusiness,
            SharePoint: :SharePoint,
            Box: :Box,
            LocalStorage: :LocalStorage,
        }
    end
end
