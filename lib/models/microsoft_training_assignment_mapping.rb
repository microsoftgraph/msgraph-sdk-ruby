require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftTrainingAssignmentMapping < MicrosoftGraph::Models::TrainingSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignedTo property
            @assigned_to
            ## 
            # The training property
            @training
            ## 
            ## Gets the assignedTo property value. The assignedTo property
            ## @return a training_assigned_to
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The assignedTo property
            ## @param value Value to set for the assignedTo property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Instantiates a new microsoftTrainingAssignmentMapping and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftTrainingAssignmentMapping"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_training_assignment_mapping
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftTrainingAssignmentMapping.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedTo" => lambda {|n| @assigned_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TrainingAssignedTo.create_from_discriminator_value(pn) }) },
                    "training" => lambda {|n| @training = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Training.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("assignedTo", @assigned_to)
                writer.write_object_value("training", @training)
            end
            ## 
            ## Gets the training property value. The training property
            ## @return a training
            ## 
            def training
                return @training
            end
            ## 
            ## Sets the training property value. The training property
            ## @param value Value to set for the training property.
            ## @return a void
            ## 
            def training=(value)
                @training = value
            end
        end
    end
end
