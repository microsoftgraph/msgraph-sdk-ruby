require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessGroupAssignmentScheduleInstance < MicrosoftGraph::Models::PrivilegedAccessScheduleInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessId property
            @access_id
            ## 
            # The activatedUsing property
            @activated_using
            ## 
            # The assignmentScheduleId property
            @assignment_schedule_id
            ## 
            # The assignmentType property
            @assignment_type
            ## 
            # The group property
            @group
            ## 
            # The groupId property
            @group_id
            ## 
            # The memberType property
            @member_type
            ## 
            # The principal property
            @principal
            ## 
            # The principalId property
            @principal_id
            ## 
            ## Gets the accessId property value. The accessId property
            ## @return a privileged_access_group_relationships
            ## 
            def access_id
                return @access_id
            end
            ## 
            ## Sets the accessId property value. The accessId property
            ## @param value Value to set for the accessId property.
            ## @return a void
            ## 
            def access_id=(value)
                @access_id = value
            end
            ## 
            ## Gets the activatedUsing property value. The activatedUsing property
            ## @return a privileged_access_group_eligibility_schedule_instance
            ## 
            def activated_using
                return @activated_using
            end
            ## 
            ## Sets the activatedUsing property value. The activatedUsing property
            ## @param value Value to set for the activatedUsing property.
            ## @return a void
            ## 
            def activated_using=(value)
                @activated_using = value
            end
            ## 
            ## Gets the assignmentScheduleId property value. The assignmentScheduleId property
            ## @return a string
            ## 
            def assignment_schedule_id
                return @assignment_schedule_id
            end
            ## 
            ## Sets the assignmentScheduleId property value. The assignmentScheduleId property
            ## @param value Value to set for the assignmentScheduleId property.
            ## @return a void
            ## 
            def assignment_schedule_id=(value)
                @assignment_schedule_id = value
            end
            ## 
            ## Gets the assignmentType property value. The assignmentType property
            ## @return a privileged_access_group_assignment_type
            ## 
            def assignment_type
                return @assignment_type
            end
            ## 
            ## Sets the assignmentType property value. The assignmentType property
            ## @param value Value to set for the assignmentType property.
            ## @return a void
            ## 
            def assignment_type=(value)
                @assignment_type = value
            end
            ## 
            ## Instantiates a new privilegedAccessGroupAssignmentScheduleInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_group_assignment_schedule_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessGroupAssignmentScheduleInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessId" => lambda {|n| @access_id = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupRelationships) },
                    "activatedUsing" => lambda {|n| @activated_using = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrivilegedAccessGroupEligibilityScheduleInstance.create_from_discriminator_value(pn) }) },
                    "assignmentScheduleId" => lambda {|n| @assignment_schedule_id = n.get_string_value() },
                    "assignmentType" => lambda {|n| @assignment_type = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupAssignmentType) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "memberType" => lambda {|n| @member_type = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupMemberType) },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. The group property
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The group property
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the groupId property value. The groupId property
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The groupId property
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the memberType property value. The memberType property
            ## @return a privileged_access_group_member_type
            ## 
            def member_type
                return @member_type
            end
            ## 
            ## Sets the memberType property value. The memberType property
            ## @param value Value to set for the memberType property.
            ## @return a void
            ## 
            def member_type=(value)
                @member_type = value
            end
            ## 
            ## Gets the principal property value. The principal property
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. The principal property
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. The principalId property
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The principalId property
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
                writer.write_string_value("assignmentScheduleId", @assignment_schedule_id)
                writer.write_enum_value("assignmentType", @assignment_type)
                writer.write_object_value("group", @group)
                writer.write_string_value("groupId", @group_id)
                writer.write_enum_value("memberType", @member_type)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
            end
        end
    end
end
