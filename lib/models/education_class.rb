require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationClass < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # All categories associated with this class. Nullable.
            @assignment_categories
            ## 
            # Specifies class-level defaults respected by new assignments created in the class.
            @assignment_defaults
            ## 
            # Specifies class-level assignments settings.
            @assignment_settings
            ## 
            # All assignments associated with this class. Nullable.
            @assignments
            ## 
            # Class code used by the school to identify the class.
            @class_code
            ## 
            # The course property
            @course
            ## 
            # Entity who created the class
            @created_by
            ## 
            # Description of the class.
            @description
            ## 
            # Name of the class.
            @display_name
            ## 
            # ID of the class from the syncing system.
            @external_id
            ## 
            # Name of the class in the syncing system.
            @external_name
            ## 
            # How this class was created. Possible values are: sis, manual.
            @external_source
            ## 
            # The name of the external source this resources was generated from.
            @external_source_detail
            ## 
            # Grade level of the class.
            @grade
            ## 
            # The underlying Microsoft 365 group object.
            @group
            ## 
            # Mail name for sending email to all members, if this is enabled.
            @mail_nickname
            ## 
            # All users in the class. Nullable.
            @members
            ## 
            # All schools that this class is associated with. Nullable.
            @schools
            ## 
            # All teachers in the class. Nullable.
            @teachers
            ## 
            # Term for this class.
            @term
            ## 
            ## Gets the assignmentCategories property value. All categories associated with this class. Nullable.
            ## @return a education_category
            ## 
            def assignment_categories
                return @assignment_categories
            end
            ## 
            ## Sets the assignmentCategories property value. All categories associated with this class. Nullable.
            ## @param value Value to set for the assignment_categories property.
            ## @return a void
            ## 
            def assignment_categories=(value)
                @assignment_categories = value
            end
            ## 
            ## Gets the assignmentDefaults property value. Specifies class-level defaults respected by new assignments created in the class.
            ## @return a education_assignment_defaults
            ## 
            def assignment_defaults
                return @assignment_defaults
            end
            ## 
            ## Sets the assignmentDefaults property value. Specifies class-level defaults respected by new assignments created in the class.
            ## @param value Value to set for the assignment_defaults property.
            ## @return a void
            ## 
            def assignment_defaults=(value)
                @assignment_defaults = value
            end
            ## 
            ## Gets the assignmentSettings property value. Specifies class-level assignments settings.
            ## @return a education_assignment_settings
            ## 
            def assignment_settings
                return @assignment_settings
            end
            ## 
            ## Sets the assignmentSettings property value. Specifies class-level assignments settings.
            ## @param value Value to set for the assignment_settings property.
            ## @return a void
            ## 
            def assignment_settings=(value)
                @assignment_settings = value
            end
            ## 
            ## Gets the assignments property value. All assignments associated with this class. Nullable.
            ## @return a education_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. All assignments associated with this class. Nullable.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the classCode property value. Class code used by the school to identify the class.
            ## @return a string
            ## 
            def class_code
                return @class_code
            end
            ## 
            ## Sets the classCode property value. Class code used by the school to identify the class.
            ## @param value Value to set for the class_code property.
            ## @return a void
            ## 
            def class_code=(value)
                @class_code = value
            end
            ## 
            ## Instantiates a new educationClass and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the course property value. The course property
            ## @return a education_course
            ## 
            def course
                return @course
            end
            ## 
            ## Sets the course property value. The course property
            ## @param value Value to set for the course property.
            ## @return a void
            ## 
            def course=(value)
                @course = value
            end
            ## 
            ## Gets the createdBy property value. Entity who created the class
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Entity who created the class
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_class
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationClass.new
            end
            ## 
            ## Gets the description property value. Description of the class.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the class.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Name of the class.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the class.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. ID of the class from the syncing system.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. ID of the class from the syncing system.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## Gets the externalName property value. Name of the class in the syncing system.
            ## @return a string
            ## 
            def external_name
                return @external_name
            end
            ## 
            ## Sets the externalName property value. Name of the class in the syncing system.
            ## @param value Value to set for the external_name property.
            ## @return a void
            ## 
            def external_name=(value)
                @external_name = value
            end
            ## 
            ## Gets the externalSource property value. How this class was created. Possible values are: sis, manual.
            ## @return a education_external_source
            ## 
            def external_source
                return @external_source
            end
            ## 
            ## Sets the externalSource property value. How this class was created. Possible values are: sis, manual.
            ## @param value Value to set for the external_source property.
            ## @return a void
            ## 
            def external_source=(value)
                @external_source = value
            end
            ## 
            ## Gets the externalSourceDetail property value. The name of the external source this resources was generated from.
            ## @return a string
            ## 
            def external_source_detail
                return @external_source_detail
            end
            ## 
            ## Sets the externalSourceDetail property value. The name of the external source this resources was generated from.
            ## @param value Value to set for the external_source_detail property.
            ## @return a void
            ## 
            def external_source_detail=(value)
                @external_source_detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignmentCategories" => lambda {|n| @assignment_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationCategory.create_from_discriminator_value(pn) }) },
                    "assignmentDefaults" => lambda {|n| @assignment_defaults = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentDefaults.create_from_discriminator_value(pn) }) },
                    "assignmentSettings" => lambda {|n| @assignment_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentSettings.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationAssignment.create_from_discriminator_value(pn) }) },
                    "classCode" => lambda {|n| @class_code = n.get_string_value() },
                    "course" => lambda {|n| @course = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationCourse.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "externalName" => lambda {|n| @external_name = n.get_string_value() },
                    "externalSource" => lambda {|n| @external_source = n.get_enum_value(MicrosoftGraph::Models::EducationExternalSource) },
                    "externalSourceDetail" => lambda {|n| @external_source_detail = n.get_string_value() },
                    "grade" => lambda {|n| @grade = n.get_string_value() },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationUser.create_from_discriminator_value(pn) }) },
                    "schools" => lambda {|n| @schools = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationSchool.create_from_discriminator_value(pn) }) },
                    "teachers" => lambda {|n| @teachers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationUser.create_from_discriminator_value(pn) }) },
                    "term" => lambda {|n| @term = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationTerm.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the grade property value. Grade level of the class.
            ## @return a string
            ## 
            def grade
                return @grade
            end
            ## 
            ## Sets the grade property value. Grade level of the class.
            ## @param value Value to set for the grade property.
            ## @return a void
            ## 
            def grade=(value)
                @grade = value
            end
            ## 
            ## Gets the group property value. The underlying Microsoft 365 group object.
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The underlying Microsoft 365 group object.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the mailNickname property value. Mail name for sending email to all members, if this is enabled.
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. Mail name for sending email to all members, if this is enabled.
            ## @param value Value to set for the mail_nickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the members property value. All users in the class. Nullable.
            ## @return a education_user
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. All users in the class. Nullable.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the schools property value. All schools that this class is associated with. Nullable.
            ## @return a education_school
            ## 
            def schools
                return @schools
            end
            ## 
            ## Sets the schools property value. All schools that this class is associated with. Nullable.
            ## @param value Value to set for the schools property.
            ## @return a void
            ## 
            def schools=(value)
                @schools = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignmentCategories", @assignment_categories)
                writer.write_object_value("assignmentDefaults", @assignment_defaults)
                writer.write_object_value("assignmentSettings", @assignment_settings)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("classCode", @class_code)
                writer.write_object_value("course", @course)
                writer.write_object_value("createdBy", @created_by)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
                writer.write_string_value("externalName", @external_name)
                writer.write_enum_value("externalSource", @external_source)
                writer.write_string_value("externalSourceDetail", @external_source_detail)
                writer.write_string_value("grade", @grade)
                writer.write_object_value("group", @group)
                writer.write_string_value("mailNickname", @mail_nickname)
                writer.write_collection_of_object_values("members", @members)
                writer.write_collection_of_object_values("schools", @schools)
                writer.write_collection_of_object_values("teachers", @teachers)
                writer.write_object_value("term", @term)
            end
            ## 
            ## Gets the teachers property value. All teachers in the class. Nullable.
            ## @return a education_user
            ## 
            def teachers
                return @teachers
            end
            ## 
            ## Sets the teachers property value. All teachers in the class. Nullable.
            ## @param value Value to set for the teachers property.
            ## @return a void
            ## 
            def teachers=(value)
                @teachers = value
            end
            ## 
            ## Gets the term property value. Term for this class.
            ## @return a education_term
            ## 
            def term
                return @term
            end
            ## 
            ## Sets the term property value. Term for this class.
            ## @param value Value to set for the term property.
            ## @return a void
            ## 
            def term=(value)
                @term = value
            end
        end
    end
end
