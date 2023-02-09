require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RubricLevel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The description of this rubric level.
            @description
            ## 
            # The name of this rubric level.
            @display_name
            ## 
            # Null if this is a no-points rubric; educationAssignmentPointsGradeType if it is a points rubric.
            @grading
            ## 
            # The ID of this resource.
            @level_id
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new rubricLevel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rubric_level
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RubricLevel.new
            end
            ## 
            ## Gets the description property value. The description of this rubric level.
            ## @return a education_item_body
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of this rubric level.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of this rubric level.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of this rubric level.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationItemBody.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "grading" => lambda {|n| @grading = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentGradeType.create_from_discriminator_value(pn) }) },
                    "levelId" => lambda {|n| @level_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the grading property value. Null if this is a no-points rubric; educationAssignmentPointsGradeType if it is a points rubric.
            ## @return a education_assignment_grade_type
            ## 
            def grading
                return @grading
            end
            ## 
            ## Sets the grading property value. Null if this is a no-points rubric; educationAssignmentPointsGradeType if it is a points rubric.
            ## @param value Value to set for the grading property.
            ## @return a void
            ## 
            def grading=(value)
                @grading = value
            end
            ## 
            ## Gets the levelId property value. The ID of this resource.
            ## @return a string
            ## 
            def level_id
                return @level_id
            end
            ## 
            ## Sets the levelId property value. The ID of this resource.
            ## @param value Value to set for the level_id property.
            ## @return a void
            ## 
            def level_id=(value)
                @level_id = value
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
                writer.write_object_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("grading", @grading)
                writer.write_string_value("levelId", @level_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
