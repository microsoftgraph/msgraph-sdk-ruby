require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Shift < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The draft version of this shift that is viewable by managers. Required.
            @draft_shift
            ## 
            # ID of the scheduling group the shift is part of. Required.
            @scheduling_group_id
            ## 
            # The shared version of this shift that is viewable by both employees and managers. Required.
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
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shift
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Shift.new
            end
            ## 
            ## Gets the draftShift property value. The draft version of this shift that is viewable by managers. Required.
            ## @return a shift_item
            ## 
            def draft_shift
                return @draft_shift
            end
            ## 
            ## Sets the draftShift property value. The draft version of this shift that is viewable by managers. Required.
            ## @param value Value to set for the draft_shift property.
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
                    "schedulingGroupId" => lambda {|n| @scheduling_group_id = n.get_string_value() },
                    "sharedShift" => lambda {|n| @shared_shift = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ShiftItem.create_from_discriminator_value(pn) }) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
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
            ## @param value Value to set for the scheduling_group_id property.
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
                writer.write_string_value("schedulingGroupId", @scheduling_group_id)
                writer.write_object_value("sharedShift", @shared_shift)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the sharedShift property value. The shared version of this shift that is viewable by both employees and managers. Required.
            ## @return a shift_item
            ## 
            def shared_shift
                return @shared_shift
            end
            ## 
            ## Sets the sharedShift property value. The shared version of this shift that is viewable by both employees and managers. Required.
            ## @param value Value to set for the shared_shift property.
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
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
