module MicrosoftGraph
    module Models
        ## 
        # Which branch devices will receive their updates from
        WindowsUpdateType = {
            UserDefined: :UserDefined,
            All: :All,
            BusinessReadyOnly: :BusinessReadyOnly,
            WindowsInsiderBuildFast: :WindowsInsiderBuildFast,
            WindowsInsiderBuildSlow: :WindowsInsiderBuildSlow,
            WindowsInsiderBuildRelease: :WindowsInsiderBuildRelease,
        }
    end
end
