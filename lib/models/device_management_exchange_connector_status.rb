module MicrosoftGraph
    module Models
        ## 
        # The current status of the Exchange Connector.
        DeviceManagementExchangeConnectorStatus = {
            None: :None,
            ConnectionPending: :ConnectionPending,
            Connected: :Connected,
            Disconnected: :Disconnected,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
