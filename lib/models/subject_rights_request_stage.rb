module MicrosoftGraph
    module Models
        SubjectRightsRequestStage = {
            ContentRetrieval: :ContentRetrieval,
            ContentReview: :ContentReview,
            GenerateReport: :GenerateReport,
            ContentDeletion: :ContentDeletion,
            CaseResolved: :CaseResolved,
            ContentEstimate: :ContentEstimate,
            UnknownFutureValue: :UnknownFutureValue,
            Approval: :Approval,
        }
    end
end
