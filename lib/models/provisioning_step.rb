require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProvisioningStep
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Summary of what occurred during the step.
            @description
            ## 
            # Details of what occurred during the step.
            @details
            ## 
            # Name of the step.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Type of step. Possible values are: import, scoping, matching, processing, referenceResolution, export, unknownFutureValue.
            @provisioning_step_type
            ## 
            # Status of the step. Possible values are: success, warning,  failure, skipped, unknownFutureValue.
            @status
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new provisioningStep and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a provisioning_step
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProvisioningStep.new
            end
            ## 
            ## Gets the description property value. Summary of what occurred during the step.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Summary of what occurred during the step.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the details property value. Details of what occurred during the step.
            ## @return a details_info
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Details of what occurred during the step.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "details" => lambda {|n| @details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DetailsInfo.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "provisioningStepType" => lambda {|n| @provisioning_step_type = n.get_enum_value(MicrosoftGraph::Models::ProvisioningStepType) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ProvisioningResult) },
                }
            end
            ## 
            ## Gets the name property value. Name of the step.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the step.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the provisioningStepType property value. Type of step. Possible values are: import, scoping, matching, processing, referenceResolution, export, unknownFutureValue.
            ## @return a provisioning_step_type
            ## 
            def provisioning_step_type
                return @provisioning_step_type
            end
            ## 
            ## Sets the provisioningStepType property value. Type of step. Possible values are: import, scoping, matching, processing, referenceResolution, export, unknownFutureValue.
            ## @param value Value to set for the provisioning_step_type property.
            ## @return a void
            ## 
            def provisioning_step_type=(value)
                @provisioning_step_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("description", @description)
                writer.write_object_value("details", @details)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("provisioningStepType", @provisioning_step_type)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. Status of the step. Possible values are: success, warning,  failure, skipped, unknownFutureValue.
            ## @return a provisioning_result
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the step. Possible values are: success, warning,  failure, skipped, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
