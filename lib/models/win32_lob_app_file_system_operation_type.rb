module MicrosoftGraph
    module Models
        ## 
        # A list of possible operations for rules used to make determinations about an application based on files or folders. Unless noted, can be used with either detection or requirement rules.
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
