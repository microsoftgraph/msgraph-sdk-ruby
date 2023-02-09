require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationSchool < MicrosoftGraph::Models::EducationOrganization
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Address of the school.
            @address
            ## 
            # The underlying administrativeUnit for this school.
            @administrative_unit
            ## 
            # Classes taught at the school. Nullable.
            @classes
            ## 
            # Entity who created the school.
            @created_by
            ## 
            # ID of school in syncing system.
            @external_id
            ## 
            # ID of principal in syncing system.
            @external_principal_id
            ## 
            # The fax property
            @fax
            ## 
            # Highest grade taught.
            @highest_grade
            ## 
            # Lowest grade taught.
            @lowest_grade
            ## 
            # Phone number of school.
            @phone
            ## 
            # Email address of the principal.
            @principal_email
            ## 
            # Name of the principal.
            @principal_name
            ## 
            # School Number.
            @school_number
            ## 
            # Users in the school. Nullable.
            @users
            ## 
            ## Gets the address property value. Address of the school.
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. Address of the school.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the administrativeUnit property value. The underlying administrativeUnit for this school.
            ## @return a administrative_unit
            ## 
            def administrative_unit
                return @administrative_unit
            end
            ## 
            ## Sets the administrativeUnit property value. The underlying administrativeUnit for this school.
            ## @param value Value to set for the administrative_unit property.
            ## @return a void
            ## 
            def administrative_unit=(value)
                @administrative_unit = value
            end
            ## 
            ## Gets the classes property value. Classes taught at the school. Nullable.
            ## @return a education_class
            ## 
            def classes
                return @classes
            end
            ## 
            ## Sets the classes property value. Classes taught at the school. Nullable.
            ## @param value Value to set for the classes property.
            ## @return a void
            ## 
            def classes=(value)
                @classes = value
            end
            ## 
            ## Instantiates a new EducationSchool and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationSchool"
            end
            ## 
            ## Gets the createdBy property value. Entity who created the school.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Entity who created the school.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_school
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSchool.new
            end
            ## 
            ## Gets the externalId property value. ID of school in syncing system.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. ID of school in syncing system.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## Gets the externalPrincipalId property value. ID of principal in syncing system.
            ## @return a string
            ## 
            def external_principal_id
                return @external_principal_id
            end
            ## 
            ## Sets the externalPrincipalId property value. ID of principal in syncing system.
            ## @param value Value to set for the external_principal_id property.
            ## @return a void
            ## 
            def external_principal_id=(value)
                @external_principal_id = value
            end
            ## 
            ## Gets the fax property value. The fax property
            ## @return a string
            ## 
            def fax
                return @fax
            end
            ## 
            ## Sets the fax property value. The fax property
            ## @param value Value to set for the fax property.
            ## @return a void
            ## 
            def fax=(value)
                @fax = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "administrativeUnit" => lambda {|n| @administrative_unit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AdministrativeUnit.create_from_discriminator_value(pn) }) },
                    "classes" => lambda {|n| @classes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationClass.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "externalPrincipalId" => lambda {|n| @external_principal_id = n.get_string_value() },
                    "fax" => lambda {|n| @fax = n.get_string_value() },
                    "highestGrade" => lambda {|n| @highest_grade = n.get_string_value() },
                    "lowestGrade" => lambda {|n| @lowest_grade = n.get_string_value() },
                    "phone" => lambda {|n| @phone = n.get_string_value() },
                    "principalEmail" => lambda {|n| @principal_email = n.get_string_value() },
                    "principalName" => lambda {|n| @principal_name = n.get_string_value() },
                    "schoolNumber" => lambda {|n| @school_number = n.get_string_value() },
                    "users" => lambda {|n| @users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationUser.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the highestGrade property value. Highest grade taught.
            ## @return a string
            ## 
            def highest_grade
                return @highest_grade
            end
            ## 
            ## Sets the highestGrade property value. Highest grade taught.
            ## @param value Value to set for the highest_grade property.
            ## @return a void
            ## 
            def highest_grade=(value)
                @highest_grade = value
            end
            ## 
            ## Gets the lowestGrade property value. Lowest grade taught.
            ## @return a string
            ## 
            def lowest_grade
                return @lowest_grade
            end
            ## 
            ## Sets the lowestGrade property value. Lowest grade taught.
            ## @param value Value to set for the lowest_grade property.
            ## @return a void
            ## 
            def lowest_grade=(value)
                @lowest_grade = value
            end
            ## 
            ## Gets the phone property value. Phone number of school.
            ## @return a string
            ## 
            def phone
                return @phone
            end
            ## 
            ## Sets the phone property value. Phone number of school.
            ## @param value Value to set for the phone property.
            ## @return a void
            ## 
            def phone=(value)
                @phone = value
            end
            ## 
            ## Gets the principalEmail property value. Email address of the principal.
            ## @return a string
            ## 
            def principal_email
                return @principal_email
            end
            ## 
            ## Sets the principalEmail property value. Email address of the principal.
            ## @param value Value to set for the principal_email property.
            ## @return a void
            ## 
            def principal_email=(value)
                @principal_email = value
            end
            ## 
            ## Gets the principalName property value. Name of the principal.
            ## @return a string
            ## 
            def principal_name
                return @principal_name
            end
            ## 
            ## Sets the principalName property value. Name of the principal.
            ## @param value Value to set for the principal_name property.
            ## @return a void
            ## 
            def principal_name=(value)
                @principal_name = value
            end
            ## 
            ## Gets the schoolNumber property value. School Number.
            ## @return a string
            ## 
            def school_number
                return @school_number
            end
            ## 
            ## Sets the schoolNumber property value. School Number.
            ## @param value Value to set for the school_number property.
            ## @return a void
            ## 
            def school_number=(value)
                @school_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("address", @address)
                writer.write_object_value("administrativeUnit", @administrative_unit)
                writer.write_collection_of_object_values("classes", @classes)
                writer.write_object_value("createdBy", @created_by)
                writer.write_string_value("externalId", @external_id)
                writer.write_string_value("externalPrincipalId", @external_principal_id)
                writer.write_string_value("fax", @fax)
                writer.write_string_value("highestGrade", @highest_grade)
                writer.write_string_value("lowestGrade", @lowest_grade)
                writer.write_string_value("phone", @phone)
                writer.write_string_value("principalEmail", @principal_email)
                writer.write_string_value("principalName", @principal_name)
                writer.write_string_value("schoolNumber", @school_number)
                writer.write_collection_of_object_values("users", @users)
            end
            ## 
            ## Gets the users property value. Users in the school. Nullable.
            ## @return a education_user
            ## 
            def users
                return @users
            end
            ## 
            ## Sets the users property value. Users in the school. Nullable.
            ## @param value Value to set for the users property.
            ## @return a void
            ## 
            def users=(value)
                @users = value
            end
        end
    end
end
