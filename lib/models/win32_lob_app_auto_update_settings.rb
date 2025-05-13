require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties used to perform the auto-update of an application.
        class Win32LobAppAutoUpdateSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Contains value for auto-update superseded apps.
            @auto_update_superseded_apps_state
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
            ## Gets the autoUpdateSupersededAppsState property value. Contains value for auto-update superseded apps.
            ## @return a win32_lob_auto_update_superseded_apps_state
            ## 
            def auto_update_superseded_apps_state
                return @auto_update_superseded_apps_state
            end
            ## 
            ## Sets the autoUpdateSupersededAppsState property value. Contains value for auto-update superseded apps.
            ## @param value Value to set for the autoUpdateSupersededAppsState property.
            ## @return a void
            ## 
            def auto_update_superseded_apps_state=(value)
                @auto_update_superseded_apps_state = value
            end
            ## 
            ## Instantiates a new Win32LobAppAutoUpdateSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_auto_update_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppAutoUpdateSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "autoUpdateSupersededAppsState" => lambda {|n| @auto_update_superseded_apps_state = n.get_enum_value(MicrosoftGraph::Models::Win32LobAutoUpdateSupersededAppsState) },
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
                writer.write_enum_value("autoUpdateSupersededAppsState", @auto_update_superseded_apps_state)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
