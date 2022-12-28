module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
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
