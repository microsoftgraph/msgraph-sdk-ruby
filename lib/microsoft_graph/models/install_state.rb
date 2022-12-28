module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    InstallState = {
        NotApplicable: :NotApplicable,
        Installed: :Installed,
        Failed: :Failed,
        NotInstalled: :NotInstalled,
        UninstallFailed: :UninstallFailed,
        Unknown: :Unknown,
    }
end
