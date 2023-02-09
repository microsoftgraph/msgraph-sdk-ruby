module MicrosoftGraph
    module Models
        module Security
            AlertDetermination = {
                Unknown: :Unknown,
                Apt: :Apt,
                Malware: :Malware,
                SecurityPersonnel: :SecurityPersonnel,
                SecurityTesting: :SecurityTesting,
                UnwantedSoftware: :UnwantedSoftware,
                Other: :Other,
                MultiStagedAttack: :MultiStagedAttack,
                CompromisedAccount: :CompromisedAccount,
                Phishing: :Phishing,
                MaliciousUserActivity: :MaliciousUserActivity,
                NotMalicious: :NotMalicious,
                NotEnoughDataToValidate: :NotEnoughDataToValidate,
                ConfirmedActivity: :ConfirmedActivity,
                LineOfBusinessApplication: :LineOfBusinessApplication,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
