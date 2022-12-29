module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
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
