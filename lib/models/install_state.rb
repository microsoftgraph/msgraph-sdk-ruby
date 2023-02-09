module MicrosoftGraph
    module Models
        ## 
        # Possible values for install state.
        InstallState = {
            NotApplicable: :NotApplicable,
            Installed: :Installed,
            Failed: :Failed,
            NotInstalled: :NotInstalled,
            UninstallFailed: :UninstallFailed,
            Unknown: :Unknown,
        }
    end
end
