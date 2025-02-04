require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Shift < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Draft changes in the shift. Draft changes are only visible to managers. The changes are visible to employees when they're shared, which copies the changes from the draftShift to the sharedShift property.
            @draft_shift
            ## 
            # The shift is marked for deletion, a process that is finalized when the schedule is shared.
            @is_staged_for_deletion
            ## 
            # ID of the scheduling group the shift is part of. Required.
            @scheduling_group_id
            ## 
            # The shared version of this shift that is viewable by both employees and managers. Updates to the sharedShift property send notifications to users in the Teams client.
            @shared_shift
            ## 
            # ID of the user assigned to the shift. Required.
            @user_id
            ## 
            ## Instantiates a new Shift and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.shift"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a shift
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Shift.new
            end
            ## 
            ## Gets the draftShift property value. Draft changes in the shift. Draft changes are only visible to managers. The changes are visible to employees when they're shared, which copies the changes from the draftShift to the sharedShift property.
            ## @return a shift_item
            ## 
            def draft_shift
                return @draft_shift
            end
            ## 
            ## Sets the draftShift property value. Draft changes in the shift. Draft changes are only visible to managers. The changes are visible to employees when they're shared, which copies the changes from the draftShift to the sharedShift property.
            ## @param value Value to set for the draftShift property.
            ## @return a void
            ## 
            def draft_shift=(value)
                @draft_shift = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "draftShift" => lambda {|n| @draft_shift = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ShiftItem.create_from_discriminator_value(pn) }) },
                    "isStagedForDeletion" => lambda {|n| @is_staged_for_deletion = n.get_boolean_value() },
                    "schedulingGroupId" => lambda {|n| @scheduling_group_id = n.get_string_value() },
                    "sharedShift" => lambda {|n| @shared_shift = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ShiftItem.create_from_discriminator_value(pn) }) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isStagedForDeletion property value. The shift is marked for deletion, a process that is finalized when the schedule is shared.
            ## @return a boolean
            ## 
            def is_staged_for_deletion
                return @is_staged_for_deletion
            end
            ## 
            ## Sets the isStagedForDeletion property value. The shift is marked for deletion, a process that is finalized when the schedule is shared.
            ## @param value Value to set for the isStagedForDeletion property.
            ## @return a void
            ## 
            def is_staged_for_deletion=(value)
                @is_staged_for_deletion = value
            end
            ## 
            ## Gets the schedulingGroupId property value. ID of the scheduling group the shift is part of. Required.
            ## @return a string
            ## 
            def scheduling_group_id
                return @scheduling_group_id
            end
            ## 
            ## Sets the schedulingGroupId property value. ID of the scheduling group the shift is part of. Required.
            ## @param value Value to set for the schedulingGroupId property.
            ## @return a void
            ## 
            def scheduling_group_id=(value)
                @scheduling_group_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("draftShift", @draft_shift)
                writer.write_boolean_value("isStagedForDeletion", @is_staged_for_deletion)
                writer.write_string_value("schedulingGroupId", @scheduling_group_id)
                writer.write_object_value("sharedShift", @shared_shift)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the sharedShift property value. The shared version of this shift that is viewable by both employees and managers. Updates to the sharedShift property send notifications to users in the Teams client.
            ## @return a shift_item
            ## 
            def shared_shift
                return @shared_shift
            end
            ## 
            ## Sets the sharedShift property value. The shared version of this shift that is viewable by both employees and managers. Updates to the sharedShift property send notifications to users in the Teams client.
            ## @param value Value to set for the sharedShift property.
            ## @return a void
            ## 
            def shared_shift=(value)
                @shared_shift = value
            end
            ## 
            ## Gets the userId property value. ID of the user assigned to the shift. Required.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. ID of the user assigned to the shift. Required.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
