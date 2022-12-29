module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    DefenderPromptForSampleSubmission = {
        UserDefined: :UserDefined,
        AlwaysPrompt: :AlwaysPrompt,
        PromptBeforeSendingPersonalData: :PromptBeforeSendingPersonalData,
        NeverSendData: :NeverSendData,
        SendAllDataWithoutPrompting: :SendAllDataWithoutPrompting,
    }
end
