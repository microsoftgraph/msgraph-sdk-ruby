require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationRoot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The classes property
            @classes
            ## 
            # The me property
            @me
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The schools property
            @schools
            ## 
            # The users property
            @users
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
            ## Gets the classes property value. The classes property
            ## @return a education_class
            ## 
            def classes
                return @classes
            end
            ## 
            ## Sets the classes property value. The classes property
            ## @param value Value to set for the classes property.
            ## @return a void
            ## 
            def classes=(value)
                @classes = value
            end
            ## 
            ## Instantiates a new EducationRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "classes" => lambda {|n| @classes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationClass.create_from_discriminator_value(pn) }) },
                    "me" => lambda {|n| @me = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationUser.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "schools" => lambda {|n| @schools = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationSchool.create_from_discriminator_value(pn) }) },
                    "users" => lambda {|n| @users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationUser.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the me property value. The me property
            ## @return a education_user
            ## 
            def me
                return @me
            end
            ## 
            ## Sets the me property value. The me property
            ## @param value Value to set for the me property.
            ## @return a void
            ## 
            def me=(value)
                @me = value
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
            ## Gets the schools property value. The schools property
            ## @return a education_school
            ## 
            def schools
                return @schools
            end
            ## 
            ## Sets the schools property value. The schools property
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
                writer.write_collection_of_object_values("classes", @classes)
                writer.write_object_value("me", @me)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("schools", @schools)
                writer.write_collection_of_object_values("users", @users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the users property value. The users property
            ## @return a education_user
            ## 
            def users
                return @users
            end
            ## 
            ## Sets the users property value. The users property
            ## @param value Value to set for the users property.
            ## @return a void
            ## 
            def users=(value)
                @users = value
            end
        end
    end
end
