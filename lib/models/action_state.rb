module MicrosoftGraph
    module Models
        ## 
        # State of the action on the device
        ActionState = {
            None: :None,
            Pending: :Pending,
            Canceled: :Canceled,
            Active: :Active,
            Done: :Done,
            Failed: :Failed,
            NotSupported: :NotSupported,
        }
    end
end
