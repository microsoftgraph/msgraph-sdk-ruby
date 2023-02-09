require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserTrainingEventInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Display name of the training.
            @display_name
            ## 
            # Latest status of the training assigned to the user. Possible values are: unknown, assigned, inProgress, completed, overdue, unknownFutureValue.
            @latest_training_status
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Event details of the training when it was assigned to the user.
            @training_assigned_properties
            ## 
            # Event details of the training when it was completed by the user.
            @training_completed_properties
            ## 
            # Event details of the training when it was updated/in-progress by the user.
            @training_updated_properties
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
            ## Instantiates a new userTrainingEventInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_training_event_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserTrainingEventInfo.new
            end
            ## 
            ## Gets the displayName property value. Display name of the training.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the training.
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
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "latestTrainingStatus" => lambda {|n| @latest_training_status = n.get_enum_value(MicrosoftGraph::Models::TrainingStatus) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "trainingAssignedProperties" => lambda {|n| @training_assigned_properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserTrainingContentEventInfo.create_from_discriminator_value(pn) }) },
                    "trainingCompletedProperties" => lambda {|n| @training_completed_properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserTrainingContentEventInfo.create_from_discriminator_value(pn) }) },
                    "trainingUpdatedProperties" => lambda {|n| @training_updated_properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserTrainingContentEventInfo.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the latestTrainingStatus property value. Latest status of the training assigned to the user. Possible values are: unknown, assigned, inProgress, completed, overdue, unknownFutureValue.
            ## @return a training_status
            ## 
            def latest_training_status
                return @latest_training_status
            end
            ## 
            ## Sets the latestTrainingStatus property value. Latest status of the training assigned to the user. Possible values are: unknown, assigned, inProgress, completed, overdue, unknownFutureValue.
            ## @param value Value to set for the latest_training_status property.
            ## @return a void
            ## 
            def latest_training_status=(value)
                @latest_training_status = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("latestTrainingStatus", @latest_training_status)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("trainingAssignedProperties", @training_assigned_properties)
                writer.write_object_value("trainingCompletedProperties", @training_completed_properties)
                writer.write_object_value("trainingUpdatedProperties", @training_updated_properties)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trainingAssignedProperties property value. Event details of the training when it was assigned to the user.
            ## @return a user_training_content_event_info
            ## 
            def training_assigned_properties
                return @training_assigned_properties
            end
            ## 
            ## Sets the trainingAssignedProperties property value. Event details of the training when it was assigned to the user.
            ## @param value Value to set for the training_assigned_properties property.
            ## @return a void
            ## 
            def training_assigned_properties=(value)
                @training_assigned_properties = value
            end
            ## 
            ## Gets the trainingCompletedProperties property value. Event details of the training when it was completed by the user.
            ## @return a user_training_content_event_info
            ## 
            def training_completed_properties
                return @training_completed_properties
            end
            ## 
            ## Sets the trainingCompletedProperties property value. Event details of the training when it was completed by the user.
            ## @param value Value to set for the training_completed_properties property.
            ## @return a void
            ## 
            def training_completed_properties=(value)
                @training_completed_properties = value
            end
            ## 
            ## Gets the trainingUpdatedProperties property value. Event details of the training when it was updated/in-progress by the user.
            ## @return a user_training_content_event_info
            ## 
            def training_updated_properties
                return @training_updated_properties
            end
            ## 
            ## Sets the trainingUpdatedProperties property value. Event details of the training when it was updated/in-progress by the user.
            ## @param value Value to set for the training_updated_properties property.
            ## @return a void
            ## 
            def training_updated_properties=(value)
                @training_updated_properties = value
            end
        end
    end
end
