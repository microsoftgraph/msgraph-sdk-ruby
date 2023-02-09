module MicrosoftGraph
    module Models
        ## 
        # Possible values for prompting user for samples submission.
        DefenderPromptForSampleSubmission = {
            UserDefined: :UserDefined,
            AlwaysPrompt: :AlwaysPrompt,
            PromptBeforeSendingPersonalData: :PromptBeforeSendingPersonalData,
            NeverSendData: :NeverSendData,
            SendAllDataWithoutPrompting: :SendAllDataWithoutPrompting,
        }
    end
end
