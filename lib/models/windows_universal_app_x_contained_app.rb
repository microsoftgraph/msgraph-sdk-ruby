require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsUniversalAppXContainedApp < MicrosoftGraph::Models::MobileContainedApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The app user model ID of the contained app of a WindowsUniversalAppX app.
            @app_user_model_id
            ## 
            ## Gets the appUserModelId property value. The app user model ID of the contained app of a WindowsUniversalAppX app.
            ## @return a string
            ## 
            def app_user_model_id
                return @app_user_model_id
            end
            ## 
            ## Sets the appUserModelId property value. The app user model ID of the contained app of a WindowsUniversalAppX app.
            ## @param value Value to set for the app_user_model_id property.
            ## @return a void
            ## 
            def app_user_model_id=(value)
                @app_user_model_id = value
            end
            ## 
            ## Instantiates a new WindowsUniversalAppXContainedApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUniversalAppXContainedApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_universal_app_x_contained_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUniversalAppXContainedApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appUserModelId" => lambda {|n| @app_user_model_id = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appUserModelId", @app_user_model_id)
            end
        end
    end
end
