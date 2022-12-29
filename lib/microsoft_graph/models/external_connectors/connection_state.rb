module MicrosoftGraph::Models::ExternalConnectors
    ## 
    # Provides operations to manage the collection of externalConnection entities.
    ConnectionState = {
        Draft: :Draft,
        Ready: :Ready,
        Obsolete: :Obsolete,
        LimitExceeded: :LimitExceeded,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
