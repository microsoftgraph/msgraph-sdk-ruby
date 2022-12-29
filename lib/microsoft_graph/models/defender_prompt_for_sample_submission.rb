module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceManagement singleton.
    DefenderPromptForSampleSubmission = {
        UserDefined: :UserDefined,
        AlwaysPrompt: :AlwaysPrompt,
        PromptBeforeSendingPersonalData: :PromptBeforeSendingPersonalData,
        NeverSendData: :NeverSendData,
        SendAllDataWithoutPrompting: :SendAllDataWithoutPrompting,
    }
end
