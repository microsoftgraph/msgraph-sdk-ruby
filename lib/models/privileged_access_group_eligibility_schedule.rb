require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessGroupEligibilitySchedule < MicrosoftGraph::Models::PrivilegedAccessSchedule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the membership or ownership eligibility to the group that is governed by PIM. Required. The possible values are: owner, member. Supports $filter (eq).
            @access_id
            ## 
            # References the group that is the scope of the membership or ownership eligibility through PIM for groups. Supports $expand.
            @group
            ## 
            # The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Required. Supports $filter (eq).
            @group_id
            ## 
            # Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the schedule. Required. The possible values are: direct, group, unknownFutureValue. Supports $filter (eq).
            @member_type
            ## 
            # References the principal that's in the scope of this membership or ownership eligibility request to the group that's governed by PIM. Supports $expand.
            @principal
            ## 
            # The identifier of the principal whose membership or ownership eligibility is granted through PIM for groups. Required. Supports $filter (eq).
            @principal_id
            ## 
            ## Gets the accessId property value. The identifier of the membership or ownership eligibility to the group that is governed by PIM. Required. The possible values are: owner, member. Supports $filter (eq).
            ## @return a privileged_access_group_eligibility_schedule_access_id
            ## 
            def access_id
                return @access_id
            end
            ## 
            ## Sets the accessId property value. The identifier of the membership or ownership eligibility to the group that is governed by PIM. Required. The possible values are: owner, member. Supports $filter (eq).
            ## @param value Value to set for the accessId property.
            ## @return a void
            ## 
            def access_id=(value)
                @access_id = value
            end
            ## 
            ## Instantiates a new privilegedAccessGroupEligibilitySchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.privilegedAccessGroupEligibilitySchedule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_group_eligibility_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessGroupEligibilitySchedule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessId" => lambda {|n| @access_id = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupEligibilityScheduleAccessId) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "memberType" => lambda {|n| @member_type = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupEligibilityScheduleMemberType) },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. References the group that is the scope of the membership or ownership eligibility through PIM for groups. Supports $expand.
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. References the group that is the scope of the membership or ownership eligibility through PIM for groups. Supports $expand.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the groupId property value. The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Required. Supports $filter (eq).
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Required. Supports $filter (eq).
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the memberType property value. Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the schedule. Required. The possible values are: direct, group, unknownFutureValue. Supports $filter (eq).
            ## @return a privileged_access_group_eligibility_schedule_member_type
            ## 
            def member_type
                return @member_type
            end
            ## 
            ## Sets the memberType property value. Indicates whether the assignment is derived from a group assignment. It can further imply whether the caller can manage the schedule. Required. The possible values are: direct, group, unknownFutureValue. Supports $filter (eq).
            ## @param value Value to set for the memberType property.
            ## @return a void
            ## 
            def member_type=(value)
                @member_type = value
            end
            ## 
            ## Gets the principal property value. References the principal that's in the scope of this membership or ownership eligibility request to the group that's governed by PIM. Supports $expand.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. References the principal that's in the scope of this membership or ownership eligibility request to the group that's governed by PIM. Supports $expand.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. The identifier of the principal whose membership or ownership eligibility is granted through PIM for groups. Required. Supports $filter (eq).
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The identifier of the principal whose membership or ownership eligibility is granted through PIM for groups. Required. Supports $filter (eq).
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
                writer.write_object_value("group", @group)
                writer.write_string_value("groupId", @group_id)
                writer.write_enum_value("memberType", @member_type)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
            end
        end
    end
end
