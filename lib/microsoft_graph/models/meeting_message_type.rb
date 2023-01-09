module MicrosoftGraph::Models
    MeetingMessageType = {
        None: :None,
        MeetingRequest: :MeetingRequest,
        MeetingCancelled: :MeetingCancelled,
        MeetingAccepted: :MeetingAccepted,
        MeetingTenativelyAccepted: :MeetingTenativelyAccepted,
        MeetingDeclined: :MeetingDeclined,
    }
end
