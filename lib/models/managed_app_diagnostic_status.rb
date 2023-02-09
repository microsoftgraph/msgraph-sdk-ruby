require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents diagnostics status.
        class ManagedAppDiagnosticStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Instruction on how to mitigate a failed validation
            @mitigation_instruction
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state of the operation
            @state
            ## 
            # The validation friendly name
            @validation_name
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
            ## Instantiates a new managedAppDiagnosticStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_diagnostic_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAppDiagnosticStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "mitigationInstruction" => lambda {|n| @mitigation_instruction = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "validationName" => lambda {|n| @validation_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the mitigationInstruction property value. Instruction on how to mitigate a failed validation
            ## @return a string
            ## 
            def mitigation_instruction
                return @mitigation_instruction
            end
            ## 
            ## Sets the mitigationInstruction property value. Instruction on how to mitigate a failed validation
            ## @param value Value to set for the mitigation_instruction property.
            ## @return a void
            ## 
            def mitigation_instruction=(value)
                @mitigation_instruction = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("mitigationInstruction", @mitigation_instruction)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("state", @state)
                writer.write_string_value("validationName", @validation_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state of the operation
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state of the operation
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the validationName property value. The validation friendly name
            ## @return a string
            ## 
            def validation_name
                return @validation_name
            end
            ## 
            ## Sets the validationName property value. The validation friendly name
            ## @param value Value to set for the validation_name property.
            ## @return a void
            ## 
            def validation_name=(value)
                @validation_name = value
            end
        end
    end
end
