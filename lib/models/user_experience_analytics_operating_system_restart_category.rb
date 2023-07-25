module MicrosoftGraph
    module Models
        ## 
        # Operating System restart category.
        UserExperienceAnalyticsOperatingSystemRestartCategory = {
            Unknown: :Unknown,
            RestartWithUpdate: :RestartWithUpdate,
            RestartWithoutUpdate: :RestartWithoutUpdate,
            BlueScreen: :BlueScreen,
            ShutdownWithUpdate: :ShutdownWithUpdate,
            ShutdownWithoutUpdate: :ShutdownWithoutUpdate,
            LongPowerButtonPress: :LongPowerButtonPress,
            BootError: :BootError,
            Update: :Update,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
