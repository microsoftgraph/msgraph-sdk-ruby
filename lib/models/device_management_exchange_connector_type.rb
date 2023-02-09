module MicrosoftGraph
    module Models
        ## 
        # The type of Exchange Connector.
        DeviceManagementExchangeConnectorType = {
            OnPremises: :OnPremises,
            Hosted: :Hosted,
            ServiceToService: :ServiceToService,
            Dedicated: :Dedicated,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
