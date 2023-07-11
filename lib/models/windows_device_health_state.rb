module MicrosoftGraph
    module Models
        ## 
        # Computer endpoint protection state
        WindowsDeviceHealthState = {
            Clean: :Clean,
            FullScanPending: :FullScanPending,
            RebootPending: :RebootPending,
            ManualStepsPending: :ManualStepsPending,
            OfflineScanPending: :OfflineScanPending,
            Critical: :Critical,
        }
    end
end
