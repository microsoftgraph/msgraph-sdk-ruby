module MicrosoftGraph
    module Models
        ## 
        # Defender’s default action to take on detected Malware threats.
        DefenderThreatAction = {
            DeviceDefault: :DeviceDefault,
            Clean: :Clean,
            Quarantine: :Quarantine,
            Remove: :Remove,
            Allow: :Allow,
            UserDefined: :UserDefined,
            Block: :Block,
        }
    end
end
