module MicrosoftGraph
    module Models
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
end
