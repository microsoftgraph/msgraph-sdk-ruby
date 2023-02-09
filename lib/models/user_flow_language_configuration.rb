require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserFlowLanguageConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of pages with the default content to display in a user flow for a specified language. This collection does not allow any kind of modification.
            @default_pages
            ## 
            # The language name to display. This property is read-only.
            @display_name
            ## 
            # Indicates whether the language is enabled within the user flow.
            @is_enabled
            ## 
            # Collection of pages with the overrides messages to display in a user flow for a specified language. This collection only allows to modify the content of the page, any other modification is not allowed (creation or deletion of pages).
            @overrides_pages
            ## 
            ## Instantiates a new userFlowLanguageConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_flow_language_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserFlowLanguageConfiguration.new
            end
            ## 
            ## Gets the defaultPages property value. Collection of pages with the default content to display in a user flow for a specified language. This collection does not allow any kind of modification.
            ## @return a user_flow_language_page
            ## 
            def default_pages
                return @default_pages
            end
            ## 
            ## Sets the defaultPages property value. Collection of pages with the default content to display in a user flow for a specified language. This collection does not allow any kind of modification.
            ## @param value Value to set for the default_pages property.
            ## @return a void
            ## 
            def default_pages=(value)
                @default_pages = value
            end
            ## 
            ## Gets the displayName property value. The language name to display. This property is read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The language name to display. This property is read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultPages" => lambda {|n| @default_pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserFlowLanguagePage.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "overridesPages" => lambda {|n| @overrides_pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserFlowLanguagePage.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether the language is enabled within the user flow.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether the language is enabled within the user flow.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the overridesPages property value. Collection of pages with the overrides messages to display in a user flow for a specified language. This collection only allows to modify the content of the page, any other modification is not allowed (creation or deletion of pages).
            ## @return a user_flow_language_page
            ## 
            def overrides_pages
                return @overrides_pages
            end
            ## 
            ## Sets the overridesPages property value. Collection of pages with the overrides messages to display in a user flow for a specified language. This collection only allows to modify the content of the page, any other modification is not allowed (creation or deletion of pages).
            ## @param value Value to set for the overrides_pages property.
            ## @return a void
            ## 
            def overrides_pages=(value)
                @overrides_pages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("defaultPages", @default_pages)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_collection_of_object_values("overridesPages", @overrides_pages)
            end
        end
    end
end
