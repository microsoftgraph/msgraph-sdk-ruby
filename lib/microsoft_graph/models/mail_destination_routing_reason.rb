module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    MailDestinationRoutingReason = {
        None: :None,
        MailFlowRule: :MailFlowRule,
        SafeSender: :SafeSender,
        BlockedSender: :BlockedSender,
        AdvancedSpamFiltering: :AdvancedSpamFiltering,
        DomainAllowList: :DomainAllowList,
        DomainBlockList: :DomainBlockList,
        NotInAddressBook: :NotInAddressBook,
        FirstTimeSender: :FirstTimeSender,
        AutoPurgeToInbox: :AutoPurgeToInbox,
        AutoPurgeToJunk: :AutoPurgeToJunk,
        AutoPurgeToDeleted: :AutoPurgeToDeleted,
        Outbound: :Outbound,
        NotJunk: :NotJunk,
        Junk: :Junk,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
