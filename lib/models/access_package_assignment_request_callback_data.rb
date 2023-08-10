require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentRequestCallbackData < MicrosoftGraph::Models::CustomExtensionData
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Details for the callback.
            @custom_extension_stage_instance_detail
            ## 
            # Unique identifier of the callout to the custom extension.
            @custom_extension_stage_instance_id
            ## 
            # Indicates the stage at which the custom callout extension will be executed. The possible values are: assignmentRequestCreated, assignmentRequestApproved, assignmentRequestGranted, assignmentRequestRemoved, assignmentFourteenDaysBeforeExpiration, assignmentOneDayBeforeExpiration, unknownFutureValue.
            @stage
            ## 
            # Allow the extension to be able to deny or cancel the request submitted by the requestor. The supported values are Denied and Canceled. This property can only be set for an assignmentRequestCreated stage.
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
            ## Gets the customExtensionStageInstanceDetail property value. Details for the callback.
            ## @return a string
            ## 
            def custom_extension_stage_instance_detail
                return @custom_extension_stage_instance_detail
            end
            ## 
            ## Sets the customExtensionStageInstanceDetail property value. Details for the callback.
            ## @param value Value to set for the customExtensionStageInstanceDetail property.
            ## @return a void
            ## 
            def custom_extension_stage_instance_detail=(value)
                @custom_extension_stage_instance_detail = value
            end
            ## 
            ## Gets the customExtensionStageInstanceId property value. Unique identifier of the callout to the custom extension.
            ## @return a string
            ## 
            def custom_extension_stage_instance_id
                return @custom_extension_stage_instance_id
            end
            ## 
            ## Sets the customExtensionStageInstanceId property value. Unique identifier of the callout to the custom extension.
            ## @param value Value to set for the customExtensionStageInstanceId property.
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
            ## Gets the stage property value. Indicates the stage at which the custom callout extension will be executed. The possible values are: assignmentRequestCreated, assignmentRequestApproved, assignmentRequestGranted, assignmentRequestRemoved, assignmentFourteenDaysBeforeExpiration, assignmentOneDayBeforeExpiration, unknownFutureValue.
            ## @return a access_package_custom_extension_stage
            ## 
            def stage
                return @stage
            end
            ## 
            ## Sets the stage property value. Indicates the stage at which the custom callout extension will be executed. The possible values are: assignmentRequestCreated, assignmentRequestApproved, assignmentRequestGranted, assignmentRequestRemoved, assignmentFourteenDaysBeforeExpiration, assignmentOneDayBeforeExpiration, unknownFutureValue.
            ## @param value Value to set for the stage property.
            ## @return a void
            ## 
            def stage=(value)
                @stage = value
            end
            ## 
            ## Gets the state property value. Allow the extension to be able to deny or cancel the request submitted by the requestor. The supported values are Denied and Canceled. This property can only be set for an assignmentRequestCreated stage.
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Allow the extension to be able to deny or cancel the request submitted by the requestor. The supported values are Denied and Canceled. This property can only be set for an assignmentRequestCreated stage.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
