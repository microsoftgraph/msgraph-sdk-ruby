require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiInteractionLink < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the link.
            @display_name
            ## 
            # Information about a link in an app chat or Business Chat (BizChat) interaction.
            @link_type
            ## 
            # The URL of the link.
            @link_url
            ## 
            ## Instantiates a new AiInteractionLink and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_interaction_link
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiInteractionLink.new
            end
            ## 
            ## Gets the displayName property value. The name of the link.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the link.
            ## @param value Value to set for the displayName property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "linkType" => lambda {|n| @link_type = n.get_string_value() },
                    "linkUrl" => lambda {|n| @link_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the linkType property value. Information about a link in an app chat or Business Chat (BizChat) interaction.
            ## @return a string
            ## 
            def link_type
                return @link_type
            end
            ## 
            ## Sets the linkType property value. Information about a link in an app chat or Business Chat (BizChat) interaction.
            ## @param value Value to set for the linkType property.
            ## @return a void
            ## 
            def link_type=(value)
                @link_type = value
            end
            ## 
            ## Gets the linkUrl property value. The URL of the link.
            ## @return a string
            ## 
            def link_url
                return @link_url
            end
            ## 
            ## Sets the linkUrl property value. The URL of the link.
            ## @param value Value to set for the linkUrl property.
            ## @return a void
            ## 
            def link_url=(value)
                @link_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("linkType", @link_type)
                writer.write_string_value("linkUrl", @link_url)
            end
        end
    end
end
