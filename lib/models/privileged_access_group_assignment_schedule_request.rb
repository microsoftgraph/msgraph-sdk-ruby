require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessGroupAssignmentScheduleRequest < MicrosoftGraph::Models::PrivilegedAccessScheduleRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of a membership or ownership assignment relationship to the group. Required. The possible values are: owner, member, unknownFutureValue.
            @access_id
            ## 
            # When the request activates a membership or ownership assignment in PIM for groups, this object represents the eligibility policy for the group. Otherwise, it is null. Supports $expand.
            @activated_using
            ## 
            # References the group that is the scope of the membership or ownership assignment request through PIM for groups. Supports $expand.
            @group
            ## 
            # The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Required.
            @group_id
            ## 
            # References the principal that's in the scope of this membership or ownership assignment request through the group that's governed by PIM. Supports $expand.
            @principal
            ## 
            # The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Supports $filter (eq, ne).
            @principal_id
            ## 
            # Schedule created by this request. Supports $expand.
            @target_schedule
            ## 
            # The identifier of the schedule that's created from the membership or ownership assignment request. Supports $filter (eq, ne).
            @target_schedule_id
            ## 
            ## Gets the accessId property value. The identifier of a membership or ownership assignment relationship to the group. Required. The possible values are: owner, member, unknownFutureValue.
            ## @return a privileged_access_group_relationships
            ## 
            def access_id
                return @access_id
            end
            ## 
            ## Sets the accessId property value. The identifier of a membership or ownership assignment relationship to the group. Required. The possible values are: owner, member, unknownFutureValue.
            ## @param value Value to set for the accessId property.
            ## @return a void
            ## 
            def access_id=(value)
                @access_id = value
            end
            ## 
            ## Gets the activatedUsing property value. When the request activates a membership or ownership assignment in PIM for groups, this object represents the eligibility policy for the group. Otherwise, it is null. Supports $expand.
            ## @return a privileged_access_group_eligibility_schedule
            ## 
            def activated_using
                return @activated_using
            end
            ## 
            ## Sets the activatedUsing property value. When the request activates a membership or ownership assignment in PIM for groups, this object represents the eligibility policy for the group. Otherwise, it is null. Supports $expand.
            ## @param value Value to set for the activatedUsing property.
            ## @return a void
            ## 
            def activated_using=(value)
                @activated_using = value
            end
            ## 
            ## Instantiates a new privilegedAccessGroupAssignmentScheduleRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.privilegedAccessGroupAssignmentScheduleRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_group_assignment_schedule_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessGroupAssignmentScheduleRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessId" => lambda {|n| @access_id = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupRelationships) },
                    "activatedUsing" => lambda {|n| @activated_using = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrivilegedAccessGroupEligibilitySchedule.create_from_discriminator_value(pn) }) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                    "targetSchedule" => lambda {|n| @target_schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrivilegedAccessGroupEligibilitySchedule.create_from_discriminator_value(pn) }) },
                    "targetScheduleId" => lambda {|n| @target_schedule_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. References the group that is the scope of the membership or ownership assignment request through PIM for groups. Supports $expand.
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. References the group that is the scope of the membership or ownership assignment request through PIM for groups. Supports $expand.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the groupId property value. The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Required.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The identifier of the group representing the scope of the membership or ownership assignment through PIM for groups. Required.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the principal property value. References the principal that's in the scope of this membership or ownership assignment request through the group that's governed by PIM. Supports $expand.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. References the principal that's in the scope of this membership or ownership assignment request through the group that's governed by PIM. Supports $expand.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The identifier of the principal whose membership or ownership assignment to the group is managed through PIM for groups. Supports $filter (eq, ne).
            ## @param value Value to set for the principalId property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("accessId", @access_id)
                writer.write_object_value("activatedUsing", @activated_using)
                writer.write_object_value("group", @group)
                writer.write_string_value("groupId", @group_id)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
                writer.write_object_value("targetSchedule", @target_schedule)
                writer.write_string_value("targetScheduleId", @target_schedule_id)
            end
            ## 
            ## Gets the targetSchedule property value. Schedule created by this request. Supports $expand.
            ## @return a privileged_access_group_eligibility_schedule
            ## 
            def target_schedule
                return @target_schedule
            end
            ## 
            ## Sets the targetSchedule property value. Schedule created by this request. Supports $expand.
            ## @param value Value to set for the targetSchedule property.
            ## @return a void
            ## 
            def target_schedule=(value)
                @target_schedule = value
            end
            ## 
            ## Gets the targetScheduleId property value. The identifier of the schedule that's created from the membership or ownership assignment request. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def target_schedule_id
                return @target_schedule_id
            end
            ## 
            ## Sets the targetScheduleId property value. The identifier of the schedule that's created from the membership or ownership assignment request. Supports $filter (eq, ne).
            ## @param value Value to set for the targetScheduleId property.
            ## @return a void
            ## 
            def target_schedule_id=(value)
                @target_schedule_id = value
            end
        end
    end
end
