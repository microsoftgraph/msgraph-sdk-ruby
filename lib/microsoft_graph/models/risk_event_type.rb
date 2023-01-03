module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
    RiskEventType = {
        UnlikelyTravel: :UnlikelyTravel,
        AnonymizedIPAddress: :AnonymizedIPAddress,
        MaliciousIPAddress: :MaliciousIPAddress,
        UnfamiliarFeatures: :UnfamiliarFeatures,
        MalwareInfectedIPAddress: :MalwareInfectedIPAddress,
        SuspiciousIPAddress: :SuspiciousIPAddress,
        LeakedCredentials: :LeakedCredentials,
        InvestigationsThreatIntelligence: :InvestigationsThreatIntelligence,
        Generic: :Generic,
        AdminConfirmedUserCompromised: :AdminConfirmedUserCompromised,
        McasImpossibleTravel: :McasImpossibleTravel,
        McasSuspiciousInboxManipulationRules: :McasSuspiciousInboxManipulationRules,
        InvestigationsThreatIntelligenceSigninLinked: :InvestigationsThreatIntelligenceSigninLinked,
        MaliciousIPAddressValidCredentialsBlockedIP: :MaliciousIPAddressValidCredentialsBlockedIP,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
