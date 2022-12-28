module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    RegistryHive = {
        Unknown: :Unknown,
        CurrentConfig: :CurrentConfig,
        CurrentUser: :CurrentUser,
        LocalMachineSam: :LocalMachineSam,
        LocalMachineSecurity: :LocalMachineSecurity,
        LocalMachineSoftware: :LocalMachineSoftware,
        LocalMachineSystem: :LocalMachineSystem,
        UsersDefault: :UsersDefault,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
