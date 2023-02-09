module MicrosoftGraph
    module Models
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
end
