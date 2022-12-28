module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreementAcceptance entities.
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
