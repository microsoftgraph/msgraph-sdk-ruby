module MicrosoftGraph
    module Models
        module Security
            EvidenceRole = {
                Unknown: :Unknown,
                Contextual: :Contextual,
                Scanned: :Scanned,
                Source: :Source,
                Destination: :Destination,
                Created: :Created,
                Added: :Added,
                Compromised: :Compromised,
                Edited: :Edited,
                Attacked: :Attacked,
                Attacker: :Attacker,
                CommandAndControl: :CommandAndControl,
                Loaded: :Loaded,
                Suspicious: :Suspicious,
                PolicyViolator: :PolicyViolator,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
