module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
    MeetingMessageType = {
        None: :None,
        MeetingRequest: :MeetingRequest,
        MeetingCancelled: :MeetingCancelled,
        MeetingAccepted: :MeetingAccepted,
        MeetingTenativelyAccepted: :MeetingTenativelyAccepted,
        MeetingDeclined: :MeetingDeclined,
    }
end
