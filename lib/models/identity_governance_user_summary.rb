require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceUserSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of failed tasks for users in a user summary.
            @failed_tasks
            ## 
            # The number of failed users in a user summary.
            @failed_users
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of successful users in a user summary.
            @successful_users
            ## 
            # The total tasks of users in a user summary.
            @total_tasks
            ## 
            # The total number of users in a user summary
            @total_users
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new identityGovernanceUserSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_user_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceUserSummary.new
            end
            ## 
            ## Gets the failedTasks property value. The number of failed tasks for users in a user summary.
            ## @return a integer
            ## 
            def failed_tasks
                return @failed_tasks
            end
            ## 
            ## Sets the failedTasks property value. The number of failed tasks for users in a user summary.
            ## @param value Value to set for the failedTasks property.
            ## @return a void
            ## 
            def failed_tasks=(value)
                @failed_tasks = value
            end
            ## 
            ## Gets the failedUsers property value. The number of failed users in a user summary.
            ## @return a integer
            ## 
            def failed_users
                return @failed_users
            end
            ## 
            ## Sets the failedUsers property value. The number of failed users in a user summary.
            ## @param value Value to set for the failedUsers property.
            ## @return a void
            ## 
            def failed_users=(value)
                @failed_users = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedTasks" => lambda {|n| @failed_tasks = n.get_number_value() },
                    "failedUsers" => lambda {|n| @failed_users = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulUsers" => lambda {|n| @successful_users = n.get_number_value() },
                    "totalTasks" => lambda {|n| @total_tasks = n.get_number_value() },
                    "totalUsers" => lambda {|n| @total_users = n.get_number_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_number_value("failedTasks", @failed_tasks)
                writer.write_number_value("failedUsers", @failed_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("successfulUsers", @successful_users)
                writer.write_number_value("totalTasks", @total_tasks)
                writer.write_number_value("totalUsers", @total_users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulUsers property value. The number of successful users in a user summary.
            ## @return a integer
            ## 
            def successful_users
                return @successful_users
            end
            ## 
            ## Sets the successfulUsers property value. The number of successful users in a user summary.
            ## @param value Value to set for the successfulUsers property.
            ## @return a void
            ## 
            def successful_users=(value)
                @successful_users = value
            end
            ## 
            ## Gets the totalTasks property value. The total tasks of users in a user summary.
            ## @return a integer
            ## 
            def total_tasks
                return @total_tasks
            end
            ## 
            ## Sets the totalTasks property value. The total tasks of users in a user summary.
            ## @param value Value to set for the totalTasks property.
            ## @return a void
            ## 
            def total_tasks=(value)
                @total_tasks = value
            end
            ## 
            ## Gets the totalUsers property value. The total number of users in a user summary
            ## @return a integer
            ## 
            def total_users
                return @total_users
            end
            ## 
            ## Sets the totalUsers property value. The total number of users in a user summary
            ## @param value Value to set for the totalUsers property.
            ## @return a void
            ## 
            def total_users=(value)
                @total_users = value
            end
        end
    end
end
