require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppsInstallationOptionsForWindows
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether users can install Microsoft 365 apps, including Skype for Business, on their Windows devices. The default value is true.
            @is_microsoft365_apps_enabled
            ## 
            # Specifies whether users can install Microsoft Project on their Windows devices. The default value is true.
            @is_project_enabled
            ## 
            # Specifies whether users can install Skype for Business (standalone) on their Windows devices. The default value is true.
            @is_skype_for_business_enabled
            ## 
            # Specifies whether users can install Visio on their Windows devices. The default value is true.
            @is_visio_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AppsInstallationOptionsForWindows and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apps_installation_options_for_windows
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppsInstallationOptionsForWindows.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isMicrosoft365AppsEnabled" => lambda {|n| @is_microsoft365_apps_enabled = n.get_boolean_value() },
                    "isProjectEnabled" => lambda {|n| @is_project_enabled = n.get_boolean_value() },
                    "isSkypeForBusinessEnabled" => lambda {|n| @is_skype_for_business_enabled = n.get_boolean_value() },
                    "isVisioEnabled" => lambda {|n| @is_visio_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isMicrosoft365AppsEnabled property value. Specifies whether users can install Microsoft 365 apps, including Skype for Business, on their Windows devices. The default value is true.
            ## @return a boolean
            ## 
            def is_microsoft365_apps_enabled
                return @is_microsoft365_apps_enabled
            end
            ## 
            ## Sets the isMicrosoft365AppsEnabled property value. Specifies whether users can install Microsoft 365 apps, including Skype for Business, on their Windows devices. The default value is true.
            ## @param value Value to set for the isMicrosoft365AppsEnabled property.
            ## @return a void
            ## 
            def is_microsoft365_apps_enabled=(value)
                @is_microsoft365_apps_enabled = value
            end
            ## 
            ## Gets the isProjectEnabled property value. Specifies whether users can install Microsoft Project on their Windows devices. The default value is true.
            ## @return a boolean
            ## 
            def is_project_enabled
                return @is_project_enabled
            end
            ## 
            ## Sets the isProjectEnabled property value. Specifies whether users can install Microsoft Project on their Windows devices. The default value is true.
            ## @param value Value to set for the isProjectEnabled property.
            ## @return a void
            ## 
            def is_project_enabled=(value)
                @is_project_enabled = value
            end
            ## 
            ## Gets the isSkypeForBusinessEnabled property value. Specifies whether users can install Skype for Business (standalone) on their Windows devices. The default value is true.
            ## @return a boolean
            ## 
            def is_skype_for_business_enabled
                return @is_skype_for_business_enabled
            end
            ## 
            ## Sets the isSkypeForBusinessEnabled property value. Specifies whether users can install Skype for Business (standalone) on their Windows devices. The default value is true.
            ## @param value Value to set for the isSkypeForBusinessEnabled property.
            ## @return a void
            ## 
            def is_skype_for_business_enabled=(value)
                @is_skype_for_business_enabled = value
            end
            ## 
            ## Gets the isVisioEnabled property value. Specifies whether users can install Visio on their Windows devices. The default value is true.
            ## @return a boolean
            ## 
            def is_visio_enabled
                return @is_visio_enabled
            end
            ## 
            ## Sets the isVisioEnabled property value. Specifies whether users can install Visio on their Windows devices. The default value is true.
            ## @param value Value to set for the isVisioEnabled property.
            ## @return a void
            ## 
            def is_visio_enabled=(value)
                @is_visio_enabled = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isMicrosoft365AppsEnabled", @is_microsoft365_apps_enabled)
                writer.write_boolean_value("isProjectEnabled", @is_project_enabled)
                writer.write_boolean_value("isSkypeForBusinessEnabled", @is_skype_for_business_enabled)
                writer.write_boolean_value("isVisioEnabled", @is_visio_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
