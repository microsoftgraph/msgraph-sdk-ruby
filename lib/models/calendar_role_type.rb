module MicrosoftGraph
    module Models
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
end
