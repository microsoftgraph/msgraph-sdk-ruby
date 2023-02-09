module MicrosoftGraph
    module Models
        ## 
        # Allow the device to send diagnostic and usage telemetry data, such as Watson.
        DiagnosticDataSubmissionMode = {
            UserDefined: :UserDefined,
            None: :None,
            Basic: :Basic,
            Enhanced: :Enhanced,
            Full: :Full,
        }
    end
end
