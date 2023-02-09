require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsWebApp < MicrosoftGraph::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the Windows web app URL. Example: 'https://www.contoso.com'
            @app_url
            ## 
            ## Gets the appUrl property value. Indicates the Windows web app URL. Example: 'https://www.contoso.com'
            ## @return a string
            ## 
            def app_url
                return @app_url
            end
            ## 
            ## Sets the appUrl property value. Indicates the Windows web app URL. Example: 'https://www.contoso.com'
            ## @param value Value to set for the app_url property.
            ## @return a void
            ## 
            def app_url=(value)
                @app_url = value
            end
            ## 
            ## Instantiates a new WindowsWebApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsWebApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_web_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsWebApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appUrl" => lambda {|n| @app_url = n.get_string_value() },
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
                writer.write_string_value("appUrl", @app_url)
            end
        end
    end
end
