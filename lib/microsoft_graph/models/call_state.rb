module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    CallState = {
        Incoming: :Incoming,
        Establishing: :Establishing,
        Established: :Established,
        Hold: :Hold,
        Transferring: :Transferring,
        TransferAccepted: :TransferAccepted,
        Redirecting: :Redirecting,
        Terminating: :Terminating,
        Terminated: :Terminated,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
