require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Fido2CombinationConfiguration < MicrosoftGraph::Models::AuthenticationCombinationConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of AAGUIDs allowed to be used as part of the specified authentication method combinations.
            @allowed_a_a_g_u_i_ds
            ## 
            ## Gets the allowedAAGUIDs property value. A list of AAGUIDs allowed to be used as part of the specified authentication method combinations.
            ## @return a string
            ## 
            def allowed_a_a_g_u_i_ds
                return @allowed_a_a_g_u_i_ds
            end
            ## 
            ## Sets the allowedAAGUIDs property value. A list of AAGUIDs allowed to be used as part of the specified authentication method combinations.
            ## @param value Value to set for the allowedAAGUIDs property.
            ## @return a void
            ## 
            def allowed_a_a_g_u_i_ds=(value)
                @allowed_a_a_g_u_i_ds = value
            end
            ## 
            ## Instantiates a new Fido2CombinationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fido2CombinationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a fido2_combination_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Fido2CombinationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedAAGUIDs" => lambda {|n| @allowed_a_a_g_u_i_ds = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("allowedAAGUIDs", @allowed_a_a_g_u_i_ds)
            end
        end
    end
end
