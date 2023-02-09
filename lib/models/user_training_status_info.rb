require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserTrainingStatusInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Date and time of assignment of the training to the user.
            @assigned_date_time
            ## 
            # Date and time of completion of the training by the user.
            @completion_date_time
            ## 
            # Display name of the assigned training.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status of the training assigned to the user. Possible values are: unknown, assigned, inProgress, completed, overdue, unknownFutureValue.
            @training_status
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
            ## Gets the assignedDateTime property value. Date and time of assignment of the training to the user.
            ## @return a date_time
            ## 
            def assigned_date_time
                return @assigned_date_time
            end
            ## 
            ## Sets the assignedDateTime property value. Date and time of assignment of the training to the user.
            ## @param value Value to set for the assigned_date_time property.
            ## @return a void
            ## 
            def assigned_date_time=(value)
                @assigned_date_time = value
            end
            ## 
            ## Gets the completionDateTime property value. Date and time of completion of the training by the user.
            ## @return a date_time
            ## 
            def completion_date_time
                return @completion_date_time
            end
            ## 
            ## Sets the completionDateTime property value. Date and time of completion of the training by the user.
            ## @param value Value to set for the completion_date_time property.
            ## @return a void
            ## 
            def completion_date_time=(value)
                @completion_date_time = value
            end
            ## 
            ## Instantiates a new userTrainingStatusInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_training_status_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserTrainingStatusInfo.new
            end
            ## 
            ## Gets the displayName property value. Display name of the assigned training.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the assigned training.
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
                    "assignedDateTime" => lambda {|n| @assigned_date_time = n.get_date_time_value() },
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "trainingStatus" => lambda {|n| @training_status = n.get_enum_value(MicrosoftGraph::Models::TrainingStatus) },
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
                writer.write_date_time_value("assignedDateTime", @assigned_date_time)
                writer.write_date_time_value("completionDateTime", @completion_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("trainingStatus", @training_status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trainingStatus property value. The status of the training assigned to the user. Possible values are: unknown, assigned, inProgress, completed, overdue, unknownFutureValue.
            ## @return a training_status
            ## 
            def training_status
                return @training_status
            end
            ## 
            ## Sets the trainingStatus property value. The status of the training assigned to the user. Possible values are: unknown, assigned, inProgress, completed, overdue, unknownFutureValue.
            ## @param value Value to set for the training_status property.
            ## @return a void
            ## 
            def training_status=(value)
                @training_status = value
            end
        end
    end
end
