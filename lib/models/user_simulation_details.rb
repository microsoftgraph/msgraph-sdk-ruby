require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserSimulationDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Number of trainings assigned to a user in an attack simulation and training campaign.
            @assigned_trainings_count
            ## 
            # Number of trainings completed by a user in an attack simulation and training campaign.
            @completed_trainings_count
            ## 
            # Date and time of the compromising online action by a user in an attack simulation and training campaign.
            @compromised_date_time
            ## 
            # Number of trainings in progress by a user in an attack simulation and training campaign.
            @in_progress_trainings_count
            ## 
            # Indicates whether a user was compromised in an attack simulation and training campaign.
            @is_compromised
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Date and time when a user reported the delivered payload as phishing in the attack simulation and training campaign.
            @reported_phish_date_time
            ## 
            # List of simulation events of a user in the attack simulation and training campaign.
            @simulation_events
            ## 
            # User in an attack simulation and training campaign.
            @simulation_user
            ## 
            # List of training events of a user in the attack simulation and training campaign.
            @training_events
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
            ## Gets the assignedTrainingsCount property value. Number of trainings assigned to a user in an attack simulation and training campaign.
            ## @return a integer
            ## 
            def assigned_trainings_count
                return @assigned_trainings_count
            end
            ## 
            ## Sets the assignedTrainingsCount property value. Number of trainings assigned to a user in an attack simulation and training campaign.
            ## @param value Value to set for the assigned_trainings_count property.
            ## @return a void
            ## 
            def assigned_trainings_count=(value)
                @assigned_trainings_count = value
            end
            ## 
            ## Gets the completedTrainingsCount property value. Number of trainings completed by a user in an attack simulation and training campaign.
            ## @return a integer
            ## 
            def completed_trainings_count
                return @completed_trainings_count
            end
            ## 
            ## Sets the completedTrainingsCount property value. Number of trainings completed by a user in an attack simulation and training campaign.
            ## @param value Value to set for the completed_trainings_count property.
            ## @return a void
            ## 
            def completed_trainings_count=(value)
                @completed_trainings_count = value
            end
            ## 
            ## Gets the compromisedDateTime property value. Date and time of the compromising online action by a user in an attack simulation and training campaign.
            ## @return a date_time
            ## 
            def compromised_date_time
                return @compromised_date_time
            end
            ## 
            ## Sets the compromisedDateTime property value. Date and time of the compromising online action by a user in an attack simulation and training campaign.
            ## @param value Value to set for the compromised_date_time property.
            ## @return a void
            ## 
            def compromised_date_time=(value)
                @compromised_date_time = value
            end
            ## 
            ## Instantiates a new userSimulationDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_simulation_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSimulationDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignedTrainingsCount" => lambda {|n| @assigned_trainings_count = n.get_number_value() },
                    "completedTrainingsCount" => lambda {|n| @completed_trainings_count = n.get_number_value() },
                    "compromisedDateTime" => lambda {|n| @compromised_date_time = n.get_date_time_value() },
                    "inProgressTrainingsCount" => lambda {|n| @in_progress_trainings_count = n.get_number_value() },
                    "isCompromised" => lambda {|n| @is_compromised = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reportedPhishDateTime" => lambda {|n| @reported_phish_date_time = n.get_date_time_value() },
                    "simulationEvents" => lambda {|n| @simulation_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserSimulationEventInfo.create_from_discriminator_value(pn) }) },
                    "simulationUser" => lambda {|n| @simulation_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttackSimulationUser.create_from_discriminator_value(pn) }) },
                    "trainingEvents" => lambda {|n| @training_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserTrainingEventInfo.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the inProgressTrainingsCount property value. Number of trainings in progress by a user in an attack simulation and training campaign.
            ## @return a integer
            ## 
            def in_progress_trainings_count
                return @in_progress_trainings_count
            end
            ## 
            ## Sets the inProgressTrainingsCount property value. Number of trainings in progress by a user in an attack simulation and training campaign.
            ## @param value Value to set for the in_progress_trainings_count property.
            ## @return a void
            ## 
            def in_progress_trainings_count=(value)
                @in_progress_trainings_count = value
            end
            ## 
            ## Gets the isCompromised property value. Indicates whether a user was compromised in an attack simulation and training campaign.
            ## @return a boolean
            ## 
            def is_compromised
                return @is_compromised
            end
            ## 
            ## Sets the isCompromised property value. Indicates whether a user was compromised in an attack simulation and training campaign.
            ## @param value Value to set for the is_compromised property.
            ## @return a void
            ## 
            def is_compromised=(value)
                @is_compromised = value
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
            ## Gets the reportedPhishDateTime property value. Date and time when a user reported the delivered payload as phishing in the attack simulation and training campaign.
            ## @return a date_time
            ## 
            def reported_phish_date_time
                return @reported_phish_date_time
            end
            ## 
            ## Sets the reportedPhishDateTime property value. Date and time when a user reported the delivered payload as phishing in the attack simulation and training campaign.
            ## @param value Value to set for the reported_phish_date_time property.
            ## @return a void
            ## 
            def reported_phish_date_time=(value)
                @reported_phish_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("assignedTrainingsCount", @assigned_trainings_count)
                writer.write_number_value("completedTrainingsCount", @completed_trainings_count)
                writer.write_date_time_value("compromisedDateTime", @compromised_date_time)
                writer.write_number_value("inProgressTrainingsCount", @in_progress_trainings_count)
                writer.write_boolean_value("isCompromised", @is_compromised)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("reportedPhishDateTime", @reported_phish_date_time)
                writer.write_collection_of_object_values("simulationEvents", @simulation_events)
                writer.write_object_value("simulationUser", @simulation_user)
                writer.write_collection_of_object_values("trainingEvents", @training_events)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the simulationEvents property value. List of simulation events of a user in the attack simulation and training campaign.
            ## @return a user_simulation_event_info
            ## 
            def simulation_events
                return @simulation_events
            end
            ## 
            ## Sets the simulationEvents property value. List of simulation events of a user in the attack simulation and training campaign.
            ## @param value Value to set for the simulation_events property.
            ## @return a void
            ## 
            def simulation_events=(value)
                @simulation_events = value
            end
            ## 
            ## Gets the simulationUser property value. User in an attack simulation and training campaign.
            ## @return a attack_simulation_user
            ## 
            def simulation_user
                return @simulation_user
            end
            ## 
            ## Sets the simulationUser property value. User in an attack simulation and training campaign.
            ## @param value Value to set for the simulation_user property.
            ## @return a void
            ## 
            def simulation_user=(value)
                @simulation_user = value
            end
            ## 
            ## Gets the trainingEvents property value. List of training events of a user in the attack simulation and training campaign.
            ## @return a user_training_event_info
            ## 
            def training_events
                return @training_events
            end
            ## 
            ## Sets the trainingEvents property value. List of training events of a user in the attack simulation and training campaign.
            ## @param value Value to set for the training_events property.
            ## @return a void
            ## 
            def training_events=(value)
                @training_events = value
            end
        end
    end
end
