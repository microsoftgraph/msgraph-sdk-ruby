require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppsInstallationOptionsForMac
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether users can install Microsoft 365 apps on their MAC devices. The default value is true.
            @is_microsoft365_apps_enabled
            ## 
            # Specifies whether users can install Skype for Business on their MAC devices running OS X El Capitan 10.11 or later. The default value is true.
            @is_skype_for_business_enabled
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
            ## Instantiates a new AppsInstallationOptionsForMac and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apps_installation_options_for_mac
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppsInstallationOptionsForMac.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isMicrosoft365AppsEnabled" => lambda {|n| @is_microsoft365_apps_enabled = n.get_boolean_value() },
                    "isSkypeForBusinessEnabled" => lambda {|n| @is_skype_for_business_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isMicrosoft365AppsEnabled property value. Specifies whether users can install Microsoft 365 apps on their MAC devices. The default value is true.
            ## @return a boolean
            ## 
            def is_microsoft365_apps_enabled
                return @is_microsoft365_apps_enabled
            end
            ## 
            ## Sets the isMicrosoft365AppsEnabled property value. Specifies whether users can install Microsoft 365 apps on their MAC devices. The default value is true.
            ## @param value Value to set for the isMicrosoft365AppsEnabled property.
            ## @return a void
            ## 
            def is_microsoft365_apps_enabled=(value)
                @is_microsoft365_apps_enabled = value
            end
            ## 
            ## Gets the isSkypeForBusinessEnabled property value. Specifies whether users can install Skype for Business on their MAC devices running OS X El Capitan 10.11 or later. The default value is true.
            ## @return a boolean
            ## 
            def is_skype_for_business_enabled
                return @is_skype_for_business_enabled
            end
            ## 
            ## Sets the isSkypeForBusinessEnabled property value. Specifies whether users can install Skype for Business on their MAC devices running OS X El Capitan 10.11 or later. The default value is true.
            ## @param value Value to set for the isSkypeForBusinessEnabled property.
            ## @return a void
            ## 
            def is_skype_for_business_enabled=(value)
                @is_skype_for_business_enabled = value
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
                writer.write_boolean_value("isSkypeForBusinessEnabled", @is_skype_for_business_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
