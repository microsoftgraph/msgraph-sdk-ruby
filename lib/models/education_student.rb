require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationStudent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Birth date of the student.
            @birth_date
            ## 
            # ID of the student in the source system.
            @external_id
            ## 
            # The possible values are: female, male, other, unknownFutureValue.
            @gender
            ## 
            # Current grade level of the student.
            @grade
            ## 
            # Year the student is graduating from the school.
            @graduation_year
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Student Number.
            @student_number
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
            ## Gets the birthDate property value. Birth date of the student.
            ## @return a date
            ## 
            def birth_date
                return @birth_date
            end
            ## 
            ## Sets the birthDate property value. Birth date of the student.
            ## @param value Value to set for the birth_date property.
            ## @return a void
            ## 
            def birth_date=(value)
                @birth_date = value
            end
            ## 
            ## Instantiates a new educationStudent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_student
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationStudent.new
            end
            ## 
            ## Gets the externalId property value. ID of the student in the source system.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. ID of the student in the source system.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## Gets the gender property value. The possible values are: female, male, other, unknownFutureValue.
            ## @return a education_gender
            ## 
            def gender
                return @gender
            end
            ## 
            ## Sets the gender property value. The possible values are: female, male, other, unknownFutureValue.
            ## @param value Value to set for the gender property.
            ## @return a void
            ## 
            def gender=(value)
                @gender = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "birthDate" => lambda {|n| @birth_date = n.get_date_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "gender" => lambda {|n| @gender = n.get_enum_value(MicrosoftGraph::Models::EducationGender) },
                    "grade" => lambda {|n| @grade = n.get_string_value() },
                    "graduationYear" => lambda {|n| @graduation_year = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "studentNumber" => lambda {|n| @student_number = n.get_string_value() },
                }
            end
            ## 
            ## Gets the grade property value. Current grade level of the student.
            ## @return a string
            ## 
            def grade
                return @grade
            end
            ## 
            ## Sets the grade property value. Current grade level of the student.
            ## @param value Value to set for the grade property.
            ## @return a void
            ## 
            def grade=(value)
                @grade = value
            end
            ## 
            ## Gets the graduationYear property value. Year the student is graduating from the school.
            ## @return a string
            ## 
            def graduation_year
                return @graduation_year
            end
            ## 
            ## Sets the graduationYear property value. Year the student is graduating from the school.
            ## @param value Value to set for the graduation_year property.
            ## @return a void
            ## 
            def graduation_year=(value)
                @graduation_year = value
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
                writer.write_date_value("birthDate", @birth_date)
                writer.write_string_value("externalId", @external_id)
                writer.write_enum_value("gender", @gender)
                writer.write_string_value("grade", @grade)
                writer.write_string_value("graduationYear", @graduation_year)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("studentNumber", @student_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the studentNumber property value. Student Number.
            ## @return a string
            ## 
            def student_number
                return @student_number
            end
            ## 
            ## Sets the studentNumber property value. Student Number.
            ## @param value Value to set for the student_number property.
            ## @return a void
            ## 
            def student_number=(value)
                @student_number = value
            end
        end
    end
end
