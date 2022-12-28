module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreementAcceptance entities.
    ResponseType = {
        None: :None,
        Organizer: :Organizer,
        TentativelyAccepted: :TentativelyAccepted,
        Accepted: :Accepted,
        Declined: :Declined,
        NotResponded: :NotResponded,
    }
end
