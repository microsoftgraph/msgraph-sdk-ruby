require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttackSimulationOperation < MicrosoftGraph::Models::LongRunningOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The percentageCompleted property
            @percentage_completed
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The type property
            @type
            ## 
            ## Instantiates a new attackSimulationOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "percentageCompleted" => lambda {|n| @percentage_completed = n.get_number_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::AttackSimulationOperationType) },
                })
            end
            ## 
            ## Gets the percentageCompleted property value. The percentageCompleted property
            ## @return a integer
            ## 
            def percentage_completed
                return @percentage_completed
            end
            ## 
            ## Sets the percentageCompleted property value. The percentageCompleted property
            ## @param value Value to set for the percentageCompleted property.
            ## @return a void
            ## 
            def percentage_completed=(value)
                @percentage_completed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("percentageCompleted", @percentage_completed)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a attack_simulation_operation_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
