require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AssignedTrainingInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Number of users who were assigned the training in an attack simulation and training campaign.
            @assigned_user_count
            ## 
            # Number of users who completed the training in an attack simulation and training campaign.
            @completed_user_count
            ## 
            # Display name of the training in an attack simulation and training campaign.
            @display_name
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the assignedUserCount property value. Number of users who were assigned the training in an attack simulation and training campaign.
            ## @return a integer
            ## 
            def assigned_user_count
                return @assigned_user_count
            end
            ## 
            ## Sets the assignedUserCount property value. Number of users who were assigned the training in an attack simulation and training campaign.
            ## @param value Value to set for the assigned_user_count property.
            ## @return a void
            ## 
            def assigned_user_count=(value)
                @assigned_user_count = value
            end
            ## 
            ## Gets the completedUserCount property value. Number of users who completed the training in an attack simulation and training campaign.
            ## @return a integer
            ## 
            def completed_user_count
                return @completed_user_count
            end
            ## 
            ## Sets the completedUserCount property value. Number of users who completed the training in an attack simulation and training campaign.
            ## @param value Value to set for the completed_user_count property.
            ## @return a void
            ## 
            def completed_user_count=(value)
                @completed_user_count = value
            end
            ## 
            ## Instantiates a new assignedTrainingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a assigned_training_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignedTrainingInfo.new
            end
            ## 
            ## Gets the displayName property value. Display name of the training in an attack simulation and training campaign.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the training in an attack simulation and training campaign.
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
                    "assignedUserCount" => lambda {|n| @assigned_user_count = n.get_number_value() },
                    "completedUserCount" => lambda {|n| @completed_user_count = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_number_value("assignedUserCount", @assigned_user_count)
                writer.write_number_value("completedUserCount", @completed_user_count)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
