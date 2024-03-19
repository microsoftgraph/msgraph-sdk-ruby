require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcManagementGroupAssignmentTarget < MicrosoftGraph::Models::CloudPcManagementAssignmentTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The groupId property
            @group_id
            ## 
            # The servicePlanId property
            @service_plan_id
            ## 
            ## Instantiates a new CloudPcManagementGroupAssignmentTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcManagementGroupAssignmentTarget"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_management_group_assignment_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcManagementGroupAssignmentTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "servicePlanId" => lambda {|n| @service_plan_id = n.get_string_value() },
                })
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("groupId", @group_id)
                writer.write_string_value("servicePlanId", @service_plan_id)
            end
            ## 
            ## Gets the servicePlanId property value. The servicePlanId property
            ## @return a string
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. The servicePlanId property
            ## @param value Value to set for the servicePlanId property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
        end
    end
end
