module MicrosoftGraph
    module Models
        PrintJobStateDetail = {
            UploadPending: :UploadPending,
            Transforming: :Transforming,
            CompletedSuccessfully: :CompletedSuccessfully,
            CompletedWithWarnings: :CompletedWithWarnings,
            CompletedWithErrors: :CompletedWithErrors,
            ReleaseWait: :ReleaseWait,
            Interpreting: :Interpreting,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
