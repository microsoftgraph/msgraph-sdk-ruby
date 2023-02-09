module MicrosoftGraph
    module Models
        ## 
        # Indicates the type of return code.
        Win32LobAppReturnCodeType = {
            Failed: :Failed,
            Success: :Success,
            SoftReboot: :SoftReboot,
            HardReboot: :HardReboot,
            Retry_escaped: :Retry_escaped,
        }
    end
end
