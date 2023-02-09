module MicrosoftGraph
    module Models
        ## 
        # Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0).
        DetectedAppPlatformType = {
            Unknown: :Unknown,
            Windows: :Windows,
            WindowsMobile: :WindowsMobile,
            WindowsHolographic: :WindowsHolographic,
            Ios: :Ios,
            MacOS: :MacOS,
            ChromeOS: :ChromeOS,
            AndroidOSP: :AndroidOSP,
            AndroidDeviceAdministrator: :AndroidDeviceAdministrator,
            AndroidWorkProfile: :AndroidWorkProfile,
            AndroidDedicatedAndFullyManaged: :AndroidDedicatedAndFullyManaged,
        }
    end
end
