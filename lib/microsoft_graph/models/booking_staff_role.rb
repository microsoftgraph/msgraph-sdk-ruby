module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the admin singleton.
    BookingStaffRole = {
        Guest: :Guest,
        Administrator: :Administrator,
        Viewer: :Viewer,
        ExternalGuest: :ExternalGuest,
        UnknownFutureValue: :UnknownFutureValue,
        Scheduler: :Scheduler,
        TeamMember: :TeamMember,
    }
end
