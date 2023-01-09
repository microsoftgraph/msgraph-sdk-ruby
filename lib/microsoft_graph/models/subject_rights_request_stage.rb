module MicrosoftGraph::Models
    SubjectRightsRequestStage = {
        ContentRetrieval: :ContentRetrieval,
        ContentReview: :ContentReview,
        GenerateReport: :GenerateReport,
        ContentDeletion: :ContentDeletion,
        CaseResolved: :CaseResolved,
        ContentEstimate: :ContentEstimate,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
