module MicrosoftGraph
    module Models
        ## 
        # Possible values for the install intent chosen by the admin.
        InstallIntent = {
            Available: :Available,
            Required: :Required,
            Uninstall: :Uninstall,
            AvailableWithoutEnrollment: :AvailableWithoutEnrollment,
        }
    end
end
