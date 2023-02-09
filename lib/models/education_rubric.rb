require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationRubric < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user who created this resource.
            @created_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # The description of this rubric.
            @description
            ## 
            # The name of this rubric.
            @display_name
            ## 
            # The grading type of this rubric -- null for a no-points rubric, or educationAssignmentPointsGradeType for a points rubric.
            @grading
            ## 
            # The last user to modify the resource.
            @last_modified_by
            ## 
            # Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @last_modified_date_time
            ## 
            # The collection of levels making up this rubric.
            @levels
            ## 
            # The collection of qualities making up this rubric.
            @qualities
            ## 
            ## Instantiates a new educationRubric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The user who created this resource.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The user who created this resource.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_rubric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationRubric.new
            end
            ## 
            ## Gets the description property value. The description of this rubric.
            ## @return a education_item_body
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of this rubric.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of this rubric.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of this rubric.
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
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationItemBody.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "grading" => lambda {|n| @grading = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentGradeType.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "levels" => lambda {|n| @levels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricLevel.create_from_discriminator_value(pn) }) },
                    "qualities" => lambda {|n| @qualities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricQuality.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the grading property value. The grading type of this rubric -- null for a no-points rubric, or educationAssignmentPointsGradeType for a points rubric.
            ## @return a education_assignment_grade_type
            ## 
            def grading
                return @grading
            end
            ## 
            ## Sets the grading property value. The grading type of this rubric -- null for a no-points rubric, or educationAssignmentPointsGradeType for a points rubric.
            ## @param value Value to set for the grading property.
            ## @return a void
            ## 
            def grading=(value)
                @grading = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The last user to modify the resource.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The last user to modify the resource.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the levels property value. The collection of levels making up this rubric.
            ## @return a rubric_level
            ## 
            def levels
                return @levels
            end
            ## 
            ## Sets the levels property value. The collection of levels making up this rubric.
            ## @param value Value to set for the levels property.
            ## @return a void
            ## 
            def levels=(value)
                @levels = value
            end
            ## 
            ## Gets the qualities property value. The collection of qualities making up this rubric.
            ## @return a rubric_quality
            ## 
            def qualities
                return @qualities
            end
            ## 
            ## Sets the qualities property value. The collection of qualities making up this rubric.
            ## @param value Value to set for the qualities property.
            ## @return a void
            ## 
            def qualities=(value)
                @qualities = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("grading", @grading)
                writer.write_collection_of_object_values("levels", @levels)
                writer.write_collection_of_object_values("qualities", @qualities)
            end
        end
    end
end
