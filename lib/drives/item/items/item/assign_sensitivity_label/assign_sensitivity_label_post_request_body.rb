require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/sensitivity_label_assignment_method'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './assign_sensitivity_label'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module AssignSensitivityLabel
                        class AssignSensitivityLabelPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The assignmentMethod property
                            @assignment_method
                            ## 
                            # The justificationText property
                            @justification_text
                            ## 
                            # The sensitivityLabelId property
                            @sensitivity_label_id
                            ## 
                            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @return a i_dictionary
                            ## 
                            def additional_data
                                return @additional_data
                            end
                            ## 
                            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
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
                            ## @param value Value to set for the assignmentMethod property.
                            ## @return a void
                            ## 
                            def assignment_method=(value)
                                @assignment_method = value
                            end
                            ## 
                            ## Instantiates a new AssignSensitivityLabelPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a assign_sensitivity_label_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return AssignSensitivityLabelPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "assignmentMethod" => lambda {|n| @assignment_method = n.get_enum_value(MicrosoftGraph::Models::SensitivityLabelAssignmentMethod) },
                                    "justificationText" => lambda {|n| @justification_text = n.get_string_value() },
                                    "sensitivityLabelId" => lambda {|n| @sensitivity_label_id = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Gets the justificationText property value. The justificationText property
                            ## @return a string
                            ## 
                            def justification_text
                                return @justification_text
                            end
                            ## 
                            ## Sets the justificationText property value. The justificationText property
                            ## @param value Value to set for the justificationText property.
                            ## @return a void
                            ## 
                            def justification_text=(value)
                                @justification_text = value
                            end
                            ## 
                            ## Gets the sensitivityLabelId property value. The sensitivityLabelId property
                            ## @return a string
                            ## 
                            def sensitivity_label_id
                                return @sensitivity_label_id
                            end
                            ## 
                            ## Sets the sensitivityLabelId property value. The sensitivityLabelId property
                            ## @param value Value to set for the sensitivityLabelId property.
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
                                writer.write_string_value("justificationText", @justification_text)
                                writer.write_string_value("sensitivityLabelId", @sensitivity_label_id)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
