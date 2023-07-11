require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentRequestCallbackData < MicrosoftGraph::Models::CustomExtensionData
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The customExtensionStageInstanceDetail property
            @custom_extension_stage_instance_detail
            ## 
            # The customExtensionStageInstanceId property
            @custom_extension_stage_instance_id
            ## 
            # The stage property
            @stage
            ## 
            # The state property
            @state
            ## 
            ## Instantiates a new accessPackageAssignmentRequestCallbackData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessPackageAssignmentRequestCallbackData"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_request_callback_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentRequestCallbackData.new
            end
            ## 
            ## Gets the customExtensionStageInstanceDetail property value. The customExtensionStageInstanceDetail property
            ## @return a string
            ## 
            def custom_extension_stage_instance_detail
                return @custom_extension_stage_instance_detail
            end
            ## 
            ## Sets the customExtensionStageInstanceDetail property value. The customExtensionStageInstanceDetail property
            ## @param value Value to set for the custom_extension_stage_instance_detail property.
            ## @return a void
            ## 
            def custom_extension_stage_instance_detail=(value)
                @custom_extension_stage_instance_detail = value
            end
            ## 
            ## Gets the customExtensionStageInstanceId property value. The customExtensionStageInstanceId property
            ## @return a string
            ## 
            def custom_extension_stage_instance_id
                return @custom_extension_stage_instance_id
            end
            ## 
            ## Sets the customExtensionStageInstanceId property value. The customExtensionStageInstanceId property
            ## @param value Value to set for the custom_extension_stage_instance_id property.
            ## @return a void
            ## 
            def custom_extension_stage_instance_id=(value)
                @custom_extension_stage_instance_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customExtensionStageInstanceDetail" => lambda {|n| @custom_extension_stage_instance_detail = n.get_string_value() },
                    "customExtensionStageInstanceId" => lambda {|n| @custom_extension_stage_instance_id = n.get_string_value() },
                    "stage" => lambda {|n| @stage = n.get_enum_value(MicrosoftGraph::Models::AccessPackageCustomExtensionStage) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("customExtensionStageInstanceDetail", @custom_extension_stage_instance_detail)
                writer.write_string_value("customExtensionStageInstanceId", @custom_extension_stage_instance_id)
                writer.write_enum_value("stage", @stage)
                writer.write_string_value("state", @state)
            end
            ## 
            ## Gets the stage property value. The stage property
            ## @return a access_package_custom_extension_stage
            ## 
            def stage
                return @stage
            end
            ## 
            ## Sets the stage property value. The stage property
            ## @param value Value to set for the stage property.
            ## @return a void
            ## 
            def stage=(value)
                @stage = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
