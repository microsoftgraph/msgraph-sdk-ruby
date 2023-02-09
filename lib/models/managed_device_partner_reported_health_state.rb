module MicrosoftGraph
    module Models
        ## 
        # Available health states for the Device Health API
        ManagedDevicePartnerReportedHealthState = {
            Unknown: :Unknown,
            Activated: :Activated,
            Deactivated: :Deactivated,
            Secured: :Secured,
            LowSeverity: :LowSeverity,
            MediumSeverity: :MediumSeverity,
            HighSeverity: :HighSeverity,
            Unresponsive: :Unresponsive,
            Compromised: :Compromised,
            Misconfigured: :Misconfigured,
        }
    end
end
