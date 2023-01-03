module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
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
