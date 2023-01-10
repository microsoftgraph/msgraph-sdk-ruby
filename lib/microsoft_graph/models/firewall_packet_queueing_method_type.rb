module MicrosoftGraph::Models
    ## 
    # Possible values for firewallPacketQueueingMethod
    FirewallPacketQueueingMethodType = {
        DeviceDefault: :DeviceDefault,
        Disabled: :Disabled,
        QueueInbound: :QueueInbound,
        QueueOutbound: :QueueOutbound,
        QueueBoth: :QueueBoth,
    }
end
