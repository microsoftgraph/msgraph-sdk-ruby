module MicrosoftGraph::Models
    ## 
    # Delivery optimization mode for peer distribution
    WindowsDeliveryOptimizationMode = {
        UserDefined: :UserDefined,
        HttpOnly: :HttpOnly,
        HttpWithPeeringNat: :HttpWithPeeringNat,
        HttpWithPeeringPrivateGroup: :HttpWithPeeringPrivateGroup,
        HttpWithInternetPeering: :HttpWithInternetPeering,
        SimpleDownload: :SimpleDownload,
        BypassMode: :BypassMode,
    }
end
