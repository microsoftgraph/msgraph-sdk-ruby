require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftCustomTrainingSetting < MicrosoftGraph::Models::TrainingSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The completion date and time of the training. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @completion_date_time
            ## 
            # The mapping details of the associated training.
            @training_assignment_mappings
            ## 
            # The training completion duration that needs to be provided before scheduling the training. Possible values are: week, fortnite, month, unknownFutureValue.
            @training_completion_duration
            ## 
            ## Gets the completionDateTime property value. The completion date and time of the training. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def completion_date_time
                return @completion_date_time
            end
            ## 
            ## Sets the completionDateTime property value. The completion date and time of the training. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the completionDateTime property.
            ## @return a void
            ## 
            def completion_date_time=(value)
                @completion_date_time = value
            end
            ## 
            ## Instantiates a new MicrosoftCustomTrainingSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftCustomTrainingSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_custom_training_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftCustomTrainingSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "trainingAssignmentMappings" => lambda {|n| @training_assignment_mappings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MicrosoftTrainingAssignmentMapping.create_from_discriminator_value(pn) }) },
                    "trainingCompletionDuration" => lambda {|n| @training_completion_duration = n.get_enum_value(MicrosoftGraph::Models::TrainingCompletionDuration) },
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
                writer.write_date_time_value("completionDateTime", @completion_date_time)
                writer.write_collection_of_object_values("trainingAssignmentMappings", @training_assignment_mappings)
                writer.write_enum_value("trainingCompletionDuration", @training_completion_duration)
            end
            ## 
            ## Gets the trainingAssignmentMappings property value. The mapping details of the associated training.
            ## @return a microsoft_training_assignment_mapping
            ## 
            def training_assignment_mappings
                return @training_assignment_mappings
            end
            ## 
            ## Sets the trainingAssignmentMappings property value. The mapping details of the associated training.
            ## @param value Value to set for the trainingAssignmentMappings property.
            ## @return a void
            ## 
            def training_assignment_mappings=(value)
                @training_assignment_mappings = value
            end
            ## 
            ## Gets the trainingCompletionDuration property value. The training completion duration that needs to be provided before scheduling the training. Possible values are: week, fortnite, month, unknownFutureValue.
            ## @return a training_completion_duration
            ## 
            def training_completion_duration
                return @training_completion_duration
            end
            ## 
            ## Sets the trainingCompletionDuration property value. The training completion duration that needs to be provided before scheduling the training. Possible values are: week, fortnite, month, unknownFutureValue.
            ## @param value Value to set for the trainingCompletionDuration property.
            ## @return a void
            ## 
            def training_completion_duration=(value)
                @training_completion_duration = value
            end
        end
    end
end
