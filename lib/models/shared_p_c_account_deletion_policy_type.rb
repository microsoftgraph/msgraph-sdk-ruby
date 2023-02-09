module MicrosoftGraph
    module Models
        ## 
        # Possible values for when accounts are deleted on a shared PC.
        SharedPCAccountDeletionPolicyType = {
            Immediate: :Immediate,
            DiskSpaceThreshold: :DiskSpaceThreshold,
            DiskSpaceThresholdOrInactiveThreshold: :DiskSpaceThresholdOrInactiveThreshold,
        }
    end
end
