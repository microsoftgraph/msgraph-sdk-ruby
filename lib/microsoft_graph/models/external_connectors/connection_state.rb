module MicrosoftGraph::Models::ExternalConnectors
    ## 
    # Provides operations to manage the appCatalogs singleton.
    ConnectionState = {
        Draft: :Draft,
        Ready: :Ready,
        Obsolete: :Obsolete,
        LimitExceeded: :LimitExceeded,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
