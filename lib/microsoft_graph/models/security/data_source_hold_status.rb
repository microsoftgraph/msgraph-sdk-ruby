module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the admin singleton.
    DataSourceHoldStatus = {
        NotApplied: :NotApplied,
        Applied: :Applied,
        Applying: :Applying,
        Removing: :Removing,
        Partial: :Partial,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
