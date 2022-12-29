module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of chat entities.
    ChatMessageType = {
        Message: :Message,
        ChatEvent: :ChatEvent,
        Typing: :Typing,
        UnknownFutureValue: :UnknownFutureValue,
        SystemEventMessage: :SystemEventMessage,
    }
end
