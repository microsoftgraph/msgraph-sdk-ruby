require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class GroupAssignmentTarget < MicrosoftGraph::Models::DeviceAndAppManagementAssignmentTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The group Id that is the target of the assignment.
            @group_id
            ## 
            ## Instantiates a new GroupAssignmentTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupAssignmentTarget"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group_assignment_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.exclusionGroupAssignmentTarget"
                            return ExclusionGroupAssignmentTarget.new
                    end
                end
                return GroupAssignmentTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupId property value. The group Id that is the target of the assignment.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The group Id that is the target of the assignment.
            ## @param value Value to set for the group_id property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("groupId", @group_id)
            end
        end
    end
end
