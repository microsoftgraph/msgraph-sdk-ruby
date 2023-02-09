require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Approval < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of stages in the approval decision.
            @stages
            ## 
            ## Instantiates a new approval and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a approval
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Approval.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "stages" => lambda {|n| @stages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ApprovalStage.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("stages", @stages)
            end
            ## 
            ## Gets the stages property value. A collection of stages in the approval decision.
            ## @return a approval_stage
            ## 
            def stages
                return @stages
            end
            ## 
            ## Sets the stages property value. A collection of stages in the approval decision.
            ## @param value Value to set for the stages property.
            ## @return a void
            ## 
            def stages=(value)
                @stages = value
            end
        end
    end
end
