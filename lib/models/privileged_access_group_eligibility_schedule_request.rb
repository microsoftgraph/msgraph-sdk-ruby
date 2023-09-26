require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessGroupEligibilityScheduleRequest < MicrosoftGraph::Models::PrivilegedAccessScheduleRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessId property
            @access_id
            ## 
            # The group property
            @group
            ## 
            # The groupId property
            @group_id
            ## 
            # The principal property
            @principal
            ## 
            # The principalId property
            @principal_id
            ## 
            # The targetSchedule property
            @target_schedule
            ## 
            # The targetScheduleId property
            @target_schedule_id
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
            ## Instantiates a new privilegedAccessGroupEligibilityScheduleRequest and sets the default values.
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
                writer.write_object_value("group", @group)
                writer.write_string_value("groupId", @group_id)
                writer.write_object_value("principal", @principal)
                writer.write_string_value("principalId", @principal_id)
                writer.write_object_value("targetSchedule", @target_schedule)
                writer.write_string_value("targetScheduleId", @target_schedule_id)
            end
            ## 
            ## Gets the targetSchedule property value. The targetSchedule property
            ## @return a privileged_access_group_eligibility_schedule
            ## 
            def target_schedule
                return @target_schedule
            end
            ## 
            ## Sets the targetSchedule property value. The targetSchedule property
            ## @param value Value to set for the targetSchedule property.
            ## @return a void
            ## 
            def target_schedule=(value)
                @target_schedule = value
            end
            ## 
            ## Gets the targetScheduleId property value. The targetScheduleId property
            ## @return a string
            ## 
            def target_schedule_id
                return @target_schedule_id
            end
            ## 
            ## Sets the targetScheduleId property value. The targetScheduleId property
            ## @param value Value to set for the targetScheduleId property.
            ## @return a void
            ## 
            def target_schedule_id=(value)
                @target_schedule_id = value
            end
        end
    end
end
