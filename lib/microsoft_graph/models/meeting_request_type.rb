module MicrosoftGraph::Models
    MeetingRequestType = {
        None: :None,
        NewMeetingRequest: :NewMeetingRequest,
        FullUpdate: :FullUpdate,
        InformationalUpdate: :InformationalUpdate,
        SilentUpdate: :SilentUpdate,
        Outdated: :Outdated,
        PrincipalWantsCopy: :PrincipalWantsCopy,
    }
end
