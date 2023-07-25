require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class CustomTaskExtensionCallbackData < MicrosoftGraph::Models::CustomExtensionData
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Operation status that's provided by the Azure Logic App indicating whenever the Azure Logic App has run successfully or not. Supported values: completed, failed, unknownFutureValue.
                @operation_status
                ## 
                ## Instantiates a new customTaskExtensionCallbackData and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackData"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a custom_task_extension_callback_data
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CustomTaskExtensionCallbackData.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "operationStatus" => lambda {|n| @operation_status = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernance::CustomTaskExtensionOperationStatus) },
                    })
                end
                ## 
                ## Gets the operationStatus property value. Operation status that's provided by the Azure Logic App indicating whenever the Azure Logic App has run successfully or not. Supported values: completed, failed, unknownFutureValue.
                ## @return a custom_task_extension_operation_status
                ## 
                def operation_status
                    return @operation_status
                end
                ## 
                ## Sets the operationStatus property value. Operation status that's provided by the Azure Logic App indicating whenever the Azure Logic App has run successfully or not. Supported values: completed, failed, unknownFutureValue.
                ## @param value Value to set for the operationStatus property.
                ## @return a void
                ## 
                def operation_status=(value)
                    @operation_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("operationStatus", @operation_status)
                end
            end
        end
    end
end
