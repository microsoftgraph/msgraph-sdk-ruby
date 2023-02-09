require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CopyNotebookModel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The createdBy property
            @created_by
            ## 
            # The createdByIdentity property
            @created_by_identity
            ## 
            # The createdTime property
            @created_time
            ## 
            # The id property
            @id
            ## 
            # The isDefault property
            @is_default
            ## 
            # The isShared property
            @is_shared
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # The lastModifiedByIdentity property
            @last_modified_by_identity
            ## 
            # The lastModifiedTime property
            @last_modified_time
            ## 
            # The links property
            @links
            ## 
            # The name property
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The sectionGroupsUrl property
            @section_groups_url
            ## 
            # The sectionsUrl property
            @sections_url
            ## 
            # The self property
            @self_escaped
            ## 
            # The userRole property
            @user_role
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
            ## Instantiates a new CopyNotebookModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a string
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdByIdentity property value. The createdByIdentity property
            ## @return a identity_set
            ## 
            def created_by_identity
                return @created_by_identity
            end
            ## 
            ## Sets the createdByIdentity property value. The createdByIdentity property
            ## @param value Value to set for the created_by_identity property.
            ## @return a void
            ## 
            def created_by_identity=(value)
                @created_by_identity = value
            end
            ## 
            ## Gets the createdTime property value. The createdTime property
            ## @return a date_time
            ## 
            def created_time
                return @created_time
            end
            ## 
            ## Sets the createdTime property value. The createdTime property
            ## @param value Value to set for the created_time property.
            ## @return a void
            ## 
            def created_time=(value)
                @created_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a copy_notebook_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CopyNotebookModel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdByIdentity" => lambda {|n| @created_by_identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdTime" => lambda {|n| @created_time = n.get_date_time_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "isShared" => lambda {|n| @is_shared = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_string_value() },
                    "lastModifiedByIdentity" => lambda {|n| @last_modified_by_identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedTime" => lambda {|n| @last_modified_time = n.get_date_time_value() },
                    "links" => lambda {|n| @links = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::NotebookLinks.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sectionGroupsUrl" => lambda {|n| @section_groups_url = n.get_string_value() },
                    "sectionsUrl" => lambda {|n| @sections_url = n.get_string_value() },
                    "self" => lambda {|n| @self_escaped = n.get_string_value() },
                    "userRole" => lambda {|n| @user_role = n.get_enum_value(MicrosoftGraph::Models::OnenoteUserRole) },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the isDefault property value. The isDefault property
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. The isDefault property
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the isShared property value. The isShared property
            ## @return a boolean
            ## 
            def is_shared
                return @is_shared
            end
            ## 
            ## Sets the isShared property value. The isShared property
            ## @param value Value to set for the is_shared property.
            ## @return a void
            ## 
            def is_shared=(value)
                @is_shared = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The lastModifiedBy property
            ## @return a string
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The lastModifiedBy property
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedByIdentity property value. The lastModifiedByIdentity property
            ## @return a identity_set
            ## 
            def last_modified_by_identity
                return @last_modified_by_identity
            end
            ## 
            ## Sets the lastModifiedByIdentity property value. The lastModifiedByIdentity property
            ## @param value Value to set for the last_modified_by_identity property.
            ## @return a void
            ## 
            def last_modified_by_identity=(value)
                @last_modified_by_identity = value
            end
            ## 
            ## Gets the lastModifiedTime property value. The lastModifiedTime property
            ## @return a date_time
            ## 
            def last_modified_time
                return @last_modified_time
            end
            ## 
            ## Sets the lastModifiedTime property value. The lastModifiedTime property
            ## @param value Value to set for the last_modified_time property.
            ## @return a void
            ## 
            def last_modified_time=(value)
                @last_modified_time = value
            end
            ## 
            ## Gets the links property value. The links property
            ## @return a notebook_links
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. The links property
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
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
            ## Gets the sectionGroupsUrl property value. The sectionGroupsUrl property
            ## @return a string
            ## 
            def section_groups_url
                return @section_groups_url
            end
            ## 
            ## Sets the sectionGroupsUrl property value. The sectionGroupsUrl property
            ## @param value Value to set for the section_groups_url property.
            ## @return a void
            ## 
            def section_groups_url=(value)
                @section_groups_url = value
            end
            ## 
            ## Gets the sectionsUrl property value. The sectionsUrl property
            ## @return a string
            ## 
            def sections_url
                return @sections_url
            end
            ## 
            ## Sets the sectionsUrl property value. The sectionsUrl property
            ## @param value Value to set for the sections_url property.
            ## @return a void
            ## 
            def sections_url=(value)
                @sections_url = value
            end
            ## 
            ## Gets the self property value. The self property
            ## @return a string
            ## 
            def self_escaped
                return @self_escaped
            end
            ## 
            ## Sets the self property value. The self property
            ## @param value Value to set for the self property.
            ## @return a void
            ## 
            def self_escaped=(value)
                @self_escaped = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("createdBy", @created_by)
                writer.write_object_value("createdByIdentity", @created_by_identity)
                writer.write_date_time_value("createdTime", @created_time)
                writer.write_string_value("id", @id)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_boolean_value("isShared", @is_shared)
                writer.write_string_value("lastModifiedBy", @last_modified_by)
                writer.write_object_value("lastModifiedByIdentity", @last_modified_by_identity)
                writer.write_date_time_value("lastModifiedTime", @last_modified_time)
                writer.write_object_value("links", @links)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sectionGroupsUrl", @section_groups_url)
                writer.write_string_value("sectionsUrl", @sections_url)
                writer.write_string_value("self", @self_escaped)
                writer.write_enum_value("userRole", @user_role)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userRole property value. The userRole property
            ## @return a onenote_user_role
            ## 
            def user_role
                return @user_role
            end
            ## 
            ## Sets the userRole property value. The userRole property
            ## @param value Value to set for the user_role property.
            ## @return a void
            ## 
            def user_role=(value)
                @user_role = value
            end
        end
    end
end
