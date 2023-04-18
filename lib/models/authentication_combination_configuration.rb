require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationCombinationConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appliesToCombinations property
            @applies_to_combinations
            ## 
            ## Gets the appliesToCombinations property value. The appliesToCombinations property
            ## @return a authentication_method_modes
            ## 
            def applies_to_combinations
                return @applies_to_combinations
            end
            ## 
            ## Sets the appliesToCombinations property value. The appliesToCombinations property
            ## @param value Value to set for the applies_to_combinations property.
            ## @return a void
            ## 
            def applies_to_combinations=(value)
                @applies_to_combinations = value
            end
            ## 
            ## Instantiates a new AuthenticationCombinationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_combination_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.fido2CombinationConfiguration"
                            return Fido2CombinationConfiguration.new
                    end
                end
                return AuthenticationCombinationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appliesToCombinations" => lambda {|n| @applies_to_combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("appliesToCombinations", @applies_to_combinations)
            end
        end
    end
end
