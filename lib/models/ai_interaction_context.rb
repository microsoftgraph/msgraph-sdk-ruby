require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AiInteractionContext < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The full file URL where the interaction happened.
            @context_reference
            ## 
            # The type of the file.
            @context_type
            ## 
            # The name of the file.
            @display_name
            ## 
            ## Instantiates a new AiInteractionContext and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contextReference property value. The full file URL where the interaction happened.
            ## @return a string
            ## 
            def context_reference
                return @context_reference
            end
            ## 
            ## Sets the contextReference property value. The full file URL where the interaction happened.
            ## @param value Value to set for the contextReference property.
            ## @return a void
            ## 
            def context_reference=(value)
                @context_reference = value
            end
            ## 
            ## Gets the contextType property value. The type of the file.
            ## @return a string
            ## 
            def context_type
                return @context_type
            end
            ## 
            ## Sets the contextType property value. The type of the file.
            ## @param value Value to set for the contextType property.
            ## @return a void
            ## 
            def context_type=(value)
                @context_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ai_interaction_context
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AiInteractionContext.new
            end
            ## 
            ## Gets the displayName property value. The name of the file.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the file.
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
                    "contextReference" => lambda {|n| @context_reference = n.get_string_value() },
                    "contextType" => lambda {|n| @context_type = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_string_value("contextReference", @context_reference)
                writer.write_string_value("contextType", @context_type)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
