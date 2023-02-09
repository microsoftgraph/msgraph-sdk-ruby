require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsMicrosoftEdgeApp < MicrosoftGraph::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The enum to specify the channels for Microsoft Edge apps.
            @channel
            ## 
            # The language locale to use when the Edge app displays text to the user.
            @display_language_locale
            ## 
            ## Gets the channel property value. The enum to specify the channels for Microsoft Edge apps.
            ## @return a microsoft_edge_channel
            ## 
            def channel
                return @channel
            end
            ## 
            ## Sets the channel property value. The enum to specify the channels for Microsoft Edge apps.
            ## @param value Value to set for the channel property.
            ## @return a void
            ## 
            def channel=(value)
                @channel = value
            end
            ## 
            ## Instantiates a new WindowsMicrosoftEdgeApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsMicrosoftEdgeApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_microsoft_edge_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsMicrosoftEdgeApp.new
            end
            ## 
            ## Gets the displayLanguageLocale property value. The language locale to use when the Edge app displays text to the user.
            ## @return a string
            ## 
            def display_language_locale
                return @display_language_locale
            end
            ## 
            ## Sets the displayLanguageLocale property value. The language locale to use when the Edge app displays text to the user.
            ## @param value Value to set for the display_language_locale property.
            ## @return a void
            ## 
            def display_language_locale=(value)
                @display_language_locale = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "channel" => lambda {|n| @channel = n.get_enum_value(MicrosoftGraph::Models::MicrosoftEdgeChannel) },
                    "displayLanguageLocale" => lambda {|n| @display_language_locale = n.get_string_value() },
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
                writer.write_enum_value("channel", @channel)
                writer.write_string_value("displayLanguageLocale", @display_language_locale)
            end
        end
    end
end
