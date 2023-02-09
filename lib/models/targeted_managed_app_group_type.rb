module MicrosoftGraph
    module Models
        ## 
        # Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps
        TargetedManagedAppGroupType = {
            SelectedPublicApps: :SelectedPublicApps,
            AllCoreMicrosoftApps: :AllCoreMicrosoftApps,
            AllMicrosoftApps: :AllMicrosoftApps,
            AllApps: :AllApps,
        }
    end
end
