require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OpenShift < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Draft changes in the openShift are only visible to managers until they're shared.
            @draft_open_shift
            ## 
            # The openShift is marked for deletion, a process that is finalized when the schedule is shared.
            @is_staged_for_deletion
            ## 
            # The ID of the schedulingGroup that contains the openShift.
            @scheduling_group_id
            ## 
            # The shared version of this openShift that is viewable by both employees and managers.
            @shared_open_shift
            ## 
            ## Instantiates a new OpenShift and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.openShift"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a open_shift
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenShift.new
            end
            ## 
            ## Gets the draftOpenShift property value. Draft changes in the openShift are only visible to managers until they're shared.
            ## @return a open_shift_item
            ## 
            def draft_open_shift
                return @draft_open_shift
            end
            ## 
            ## Sets the draftOpenShift property value. Draft changes in the openShift are only visible to managers until they're shared.
            ## @param value Value to set for the draftOpenShift property.
            ## @return a void
            ## 
            def draft_open_shift=(value)
                @draft_open_shift = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "draftOpenShift" => lambda {|n| @draft_open_shift = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OpenShiftItem.create_from_discriminator_value(pn) }) },
                    "isStagedForDeletion" => lambda {|n| @is_staged_for_deletion = n.get_boolean_value() },
                    "schedulingGroupId" => lambda {|n| @scheduling_group_id = n.get_string_value() },
                    "sharedOpenShift" => lambda {|n| @shared_open_shift = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OpenShiftItem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isStagedForDeletion property value. The openShift is marked for deletion, a process that is finalized when the schedule is shared.
            ## @return a boolean
            ## 
            def is_staged_for_deletion
                return @is_staged_for_deletion
            end
            ## 
            ## Sets the isStagedForDeletion property value. The openShift is marked for deletion, a process that is finalized when the schedule is shared.
            ## @param value Value to set for the isStagedForDeletion property.
            ## @return a void
            ## 
            def is_staged_for_deletion=(value)
                @is_staged_for_deletion = value
            end
            ## 
            ## Gets the schedulingGroupId property value. The ID of the schedulingGroup that contains the openShift.
            ## @return a string
            ## 
            def scheduling_group_id
                return @scheduling_group_id
            end
            ## 
            ## Sets the schedulingGroupId property value. The ID of the schedulingGroup that contains the openShift.
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
                writer.write_object_value("draftOpenShift", @draft_open_shift)
                writer.write_boolean_value("isStagedForDeletion", @is_staged_for_deletion)
                writer.write_string_value("schedulingGroupId", @scheduling_group_id)
                writer.write_object_value("sharedOpenShift", @shared_open_shift)
            end
            ## 
            ## Gets the sharedOpenShift property value. The shared version of this openShift that is viewable by both employees and managers.
            ## @return a open_shift_item
            ## 
            def shared_open_shift
                return @shared_open_shift
            end
            ## 
            ## Sets the sharedOpenShift property value. The shared version of this openShift that is viewable by both employees and managers.
            ## @param value Value to set for the sharedOpenShift property.
            ## @return a void
            ## 
            def shared_open_shift=(value)
                @shared_open_shift = value
            end
        end
    end
end
