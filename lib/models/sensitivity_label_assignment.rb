require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SensitivityLabelAssignment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The assignmentMethod property
            @assignment_method
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier for the sensitivity label assigned to the file.
            @sensitivity_label_id
            ## 
            # The unique identifier for the tenant that hosts the file when this label is applied.
            @tenant_id
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
            ## Gets the assignmentMethod property value. The assignmentMethod property
            ## @return a sensitivity_label_assignment_method
            ## 
            def assignment_method
                return @assignment_method
            end
            ## 
            ## Sets the assignmentMethod property value. The assignmentMethod property
            ## @param value Value to set for the assignment_method property.
            ## @return a void
            ## 
            def assignment_method=(value)
                @assignment_method = value
            end
            ## 
            ## Instantiates a new SensitivityLabelAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sensitivity_label_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SensitivityLabelAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignmentMethod" => lambda {|n| @assignment_method = n.get_enum_value(MicrosoftGraph::Models::SensitivityLabelAssignmentMethod) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sensitivityLabelId" => lambda {|n| @sensitivity_label_id = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                }
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
            ## Gets the sensitivityLabelId property value. The unique identifier for the sensitivity label assigned to the file.
            ## @return a string
            ## 
            def sensitivity_label_id
                return @sensitivity_label_id
            end
            ## 
            ## Sets the sensitivityLabelId property value. The unique identifier for the sensitivity label assigned to the file.
            ## @param value Value to set for the sensitivity_label_id property.
            ## @return a void
            ## 
            def sensitivity_label_id=(value)
                @sensitivity_label_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("assignmentMethod", @assignment_method)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sensitivityLabelId", @sensitivity_label_id)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantId property value. The unique identifier for the tenant that hosts the file when this label is applied.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The unique identifier for the tenant that hosts the file when this label is applied.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
