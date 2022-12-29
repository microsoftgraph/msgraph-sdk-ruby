module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the collection of application entities.
    DataSourceHoldStatus = {
        NotApplied: :NotApplied,
        Applied: :Applied,
        Applying: :Applying,
        Removing: :Removing,
        Partial: :Partial,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
