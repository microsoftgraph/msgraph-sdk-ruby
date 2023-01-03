module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
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
