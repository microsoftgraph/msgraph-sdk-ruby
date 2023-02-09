require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RiskyUserHistoryItem < MicrosoftGraph::Models::RiskyUser
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activity related to user risk level change.
            @activity
            ## 
            # The ID of actor that does the operation.
            @initiated_by
            ## 
            # The ID of the user.
            @user_id
            ## 
            ## Gets the activity property value. The activity related to user risk level change.
            ## @return a risk_user_activity
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. The activity related to user risk level change.
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Instantiates a new riskyUserHistoryItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a risky_user_history_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RiskyUserHistoryItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activity" => lambda {|n| @activity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RiskUserActivity.create_from_discriminator_value(pn) }) },
                    "initiatedBy" => lambda {|n| @initiated_by = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiatedBy property value. The ID of actor that does the operation.
            ## @return a string
            ## 
            def initiated_by
                return @initiated_by
            end
            ## 
            ## Sets the initiatedBy property value. The ID of actor that does the operation.
            ## @param value Value to set for the initiated_by property.
            ## @return a void
            ## 
            def initiated_by=(value)
                @initiated_by = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("activity", @activity)
                writer.write_string_value("initiatedBy", @initiated_by)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. The ID of the user.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The ID of the user.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
