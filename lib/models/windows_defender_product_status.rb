module MicrosoftGraph
    module Models
        ## 
        # Product Status of Windows Defender
        WindowsDefenderProductStatus = {
            NoStatus: :NoStatus,
            ServiceNotRunning: :ServiceNotRunning,
            ServiceStartedWithoutMalwareProtection: :ServiceStartedWithoutMalwareProtection,
            PendingFullScanDueToThreatAction: :PendingFullScanDueToThreatAction,
            PendingRebootDueToThreatAction: :PendingRebootDueToThreatAction,
            PendingManualStepsDueToThreatAction: :PendingManualStepsDueToThreatAction,
            AvSignaturesOutOfDate: :AvSignaturesOutOfDate,
            AsSignaturesOutOfDate: :AsSignaturesOutOfDate,
            NoQuickScanHappenedForSpecifiedPeriod: :NoQuickScanHappenedForSpecifiedPeriod,
            NoFullScanHappenedForSpecifiedPeriod: :NoFullScanHappenedForSpecifiedPeriod,
            SystemInitiatedScanInProgress: :SystemInitiatedScanInProgress,
            SystemInitiatedCleanInProgress: :SystemInitiatedCleanInProgress,
            SamplesPendingSubmission: :SamplesPendingSubmission,
            ProductRunningInEvaluationMode: :ProductRunningInEvaluationMode,
            ProductRunningInNonGenuineMode: :ProductRunningInNonGenuineMode,
            ProductExpired: :ProductExpired,
            OfflineScanRequired: :OfflineScanRequired,
            ServiceShutdownAsPartOfSystemShutdown: :ServiceShutdownAsPartOfSystemShutdown,
            ThreatRemediationFailedCritically: :ThreatRemediationFailedCritically,
            ThreatRemediationFailedNonCritically: :ThreatRemediationFailedNonCritically,
            NoStatusFlagsSet: :NoStatusFlagsSet,
            PlatformOutOfDate: :PlatformOutOfDate,
            PlatformUpdateInProgress: :PlatformUpdateInProgress,
            PlatformAboutToBeOutdated: :PlatformAboutToBeOutdated,
            SignatureOrPlatformEndOfLifeIsPastOrIsImpending: :SignatureOrPlatformEndOfLifeIsPastOrIsImpending,
            WindowsSModeSignaturesInUseOnNonWin10SInstall: :WindowsSModeSignaturesInUseOnNonWin10SInstall,
        }
    end
end
