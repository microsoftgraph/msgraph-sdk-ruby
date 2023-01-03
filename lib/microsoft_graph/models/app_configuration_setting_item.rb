require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    ## 
    # Contains properties for App configuration setting item.
    class AppConfigurationSettingItem
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # app configuration key.
        @app_config_key
        ## 
        # App configuration key types.
        @app_config_key_type
        ## 
        # app configuration key value.
        @app_config_key_value
        ## 
        # The OdataType property
        @odata_type
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the appConfigKey property value. app configuration key.
        ## @return a string
        ## 
        def app_config_key
            return @app_config_key
        end
        ## 
        ## Sets the appConfigKey property value. app configuration key.
        ## @param value Value to set for the appConfigKey property.
        ## @return a void
        ## 
        def app_config_key=(value)
            @app_config_key = value
        end
        ## 
        ## Gets the appConfigKeyType property value. App configuration key types.
        ## @return a mdm_app_config_key_type
        ## 
        def app_config_key_type
            return @app_config_key_type
        end
        ## 
        ## Sets the appConfigKeyType property value. App configuration key types.
        ## @param value Value to set for the appConfigKeyType property.
        ## @return a void
        ## 
        def app_config_key_type=(value)
            @app_config_key_type = value
        end
        ## 
        ## Gets the appConfigKeyValue property value. app configuration key value.
        ## @return a string
        ## 
        def app_config_key_value
            return @app_config_key_value
        end
        ## 
        ## Sets the appConfigKeyValue property value. app configuration key value.
        ## @param value Value to set for the appConfigKeyValue property.
        ## @return a void
        ## 
        def app_config_key_value=(value)
            @app_config_key_value = value
        end
        ## 
        ## Instantiates a new appConfigurationSettingItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a app_configuration_setting_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AppConfigurationSettingItem.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "appConfigKey" => lambda {|n| @app_config_key = n.get_string_value() },
                "appConfigKeyType" => lambda {|n| @app_config_key_type = n.get_enum_value(MicrosoftGraph::Models::MdmAppConfigKeyType) },
                "appConfigKeyValue" => lambda {|n| @app_config_key_value = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_string_value("appConfigKey", @app_config_key)
            writer.write_enum_value("appConfigKeyType", @app_config_key_type)
            writer.write_string_value("appConfigKeyValue", @app_config_key_value)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
