module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    CalendarRoleType = {
        None: :None,
        FreeBusyRead: :FreeBusyRead,
        LimitedRead: :LimitedRead,
        Read: :Read,
        Write: :Write,
        DelegateWithoutPrivateEventAccess: :DelegateWithoutPrivateEventAccess,
        DelegateWithPrivateEventAccess: :DelegateWithPrivateEventAccess,
        Custom: :Custom,
    }
end
