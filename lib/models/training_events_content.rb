require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TrainingEventsContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # List of assigned trainings and their information in an attack simulation and training campaign.
            @assigned_trainings_infos
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Number of users who were assigned trainings in an attack simulation and training campaign.
            @trainings_assigned_user_count
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the assignedTrainingsInfos property value. List of assigned trainings and their information in an attack simulation and training campaign.
            ## @return a assigned_training_info
            ## 
            def assigned_trainings_infos
                return @assigned_trainings_infos
            end
            ## 
            ## Sets the assignedTrainingsInfos property value. List of assigned trainings and their information in an attack simulation and training campaign.
            ## @param value Value to set for the assigned_trainings_infos property.
            ## @return a void
            ## 
            def assigned_trainings_infos=(value)
                @assigned_trainings_infos = value
            end
            ## 
            ## Instantiates a new trainingEventsContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a training_events_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingEventsContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignedTrainingsInfos" => lambda {|n| @assigned_trainings_infos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedTrainingInfo.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "trainingsAssignedUserCount" => lambda {|n| @trainings_assigned_user_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("assignedTrainingsInfos", @assigned_trainings_infos)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("trainingsAssignedUserCount", @trainings_assigned_user_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trainingsAssignedUserCount property value. Number of users who were assigned trainings in an attack simulation and training campaign.
            ## @return a integer
            ## 
            def trainings_assigned_user_count
                return @trainings_assigned_user_count
            end
            ## 
            ## Sets the trainingsAssignedUserCount property value. Number of users who were assigned trainings in an attack simulation and training campaign.
            ## @param value Value to set for the trainings_assigned_user_count property.
            ## @return a void
            ## 
            def trainings_assigned_user_count=(value)
                @trainings_assigned_user_count = value
            end
        end
    end
end
