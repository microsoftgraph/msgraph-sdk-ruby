module MicrosoftGraph
    module Models
        ## 
        # Contains all supported file system detection type.
        Win32LobAppFileSystemOperationType = {
            NotConfigured: :NotConfigured,
            Exists: :Exists,
            ModifiedDate: :ModifiedDate,
            CreatedDate: :CreatedDate,
            Version: :Version,
            SizeInMB: :SizeInMB,
        }
    end
end
