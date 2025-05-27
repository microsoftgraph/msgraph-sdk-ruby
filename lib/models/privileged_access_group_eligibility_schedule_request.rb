require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessGroupEligibilityScheduleRequest < MicrosoftGraph::Models::PrivilegedAccessScheduleRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of membership or ownership eligibility relationship to the group. Required. The possible values are: owner, member, unknownFutureValue.
            @access_id
            ## 
            # References the group that is the scope of the membership or ownership eligibility request through PIM for groups. Supports $expand and $select nested in $expand for select properties like id, displayName, and mail.
            @group
            ## 
            # The identifier of the group representing the scope of the membership and ownership eligibility through PIM for groups. Required.
            @group_id
            ## 
            # References the principal that's in the scope of the membership or ownership eligibility request through the group that's governed by PIM. Supports $expand and $select nested in $expand for id only.
            @principal
            ## 
            # The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.
            @principal_id
            ## 
            # Schedule created by this request.
            @target_schedule
            ## 
            # The identifier of the schedule that's created from the eligibility request. Optional.
            @target_schedule_id
            ## 
            ## Gets the accessId property value. The identifier of membership or ownership eligibility relationship to the group. Required. The possible values are: owner, member, unknownFutureValue.
            ## @return a privileged_access_group_relationships
            ## 
            def access_id
                return @access_id
            end
            ## 
            ## Sets the accessId property value. The identifier of membership or ownership eligibility relationship to the group. Required. The possible values are: owner, member, unknownFutureValue.
            ## @param value Value to set for the accessId property.
            ## @return a void
            ## 
            def access_id=(value)
                @access_id = value
            end
            ## 
            ## Instantiates a new PrivilegedAccessGroupEligibilityScheduleRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_group_eligibility_schedule_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessGroupEligibilityScheduleRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessId" => lambda {|n| @access_id = n.get_enum_value(MicrosoftGraph::Models::PrivilegedAccessGroupRelationships) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "principal" => lambda {|n| @principal = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                    "targetSchedule" => lambda {|n| @target_schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrivilegedAccessGroupEligibilitySchedule.create_from_discriminator_value(pn) }) },
                    "targetScheduleId" => lambda {|n| @target_schedule_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. References the group that is the scope of the membership or ownership eligibility request through PIM for groups. Supports $expand and $select nested in $expand for select properties like id, displayName, and mail.
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. References the group that is the scope of the membership or ownership eligibility request through PIM for groups. Supports $expand and $select nested in $expand for select properties like id, displayName, and mail.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the groupId property value. The identifier of the group representing the scope of the membership and ownership eligibility through PIM for groups. Required.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The identifier of the group representing the scope of the membership and ownership eligibility through PIM for groups. Required.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the principal property value. References the principal that's in the scope of the membership or ownership eligibility request through the group that's governed by PIM. Supports $expand and $select nested in $expand for id only.
            ## @return a directory_object
            ## 
            def principal
                return @principal
            end
            ## 
            ## Sets the principal property value. References the principal that's in the scope of the membership or ownership eligibility request through the group that's governed by PIM. Supports $expand and $select nested in $expand for id only.
            ## @param value Value to set for the principal property.
            ## @return a void
            ## 
            def principal=(value)
                @principal = value
            end
            ## 
            ## Gets the principalId property value. The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.
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
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
                writer.write_object_value("targetSchedule", @target_schedule)
                writer.write_string_value("targetScheduleId", @target_schedule_id)
            end
            ## 
            ## Gets the targetSchedule property value. Schedule created by this request.
            ## @return a privileged_access_group_eligibility_schedule
            ## 
            def target_schedule
                return @target_schedule
            end
            ## 
            ## Sets the targetSchedule property value. Schedule created by this request.
            ## @param value Value to set for the targetSchedule property.
            ## @return a void
            ## 
            def target_schedule=(value)
                @target_schedule = value
            end
            ## 
            ## Gets the targetScheduleId property value. The identifier of the schedule that's created from the eligibility request. Optional.
            ## @return a string
            ## 
            def target_schedule_id
                return @target_schedule_id
            end
            ## 
            ## Sets the targetScheduleId property value. The identifier of the schedule that's created from the eligibility request. Optional.
            ## @param value Value to set for the targetScheduleId property.
            ## @return a void
            ## 
            def target_schedule_id=(value)
                @target_schedule_id = value
            end
        end
    end
end
