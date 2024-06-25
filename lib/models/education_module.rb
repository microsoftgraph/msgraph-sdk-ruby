require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationModule < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the user that created the module.
            @created_by
            ## 
            # Date time the module was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # Description of the module.
            @description
            ## 
            # Name of the module.
            @display_name
            ## 
            # Indicates whether the module is pinned or not.
            @is_pinned
            ## 
            # The last user that modified the module.
            @last_modified_by
            ## 
            # Date time the module was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z
            @last_modified_date_time
            ## 
            # Learning objects that are associated with this module. Only teachers can modify this list. Nullable.
            @resources
            ## 
            # Folder URL where all the file resources for this module are stored.
            @resources_folder_url
            ## 
            # Status of the module. You can't use a PATCH operation to update this value. Possible values are: draft and published.
            @status
            ## 
            ## Instantiates a new EducationModule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The display name of the user that created the module.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The display name of the user that created the module.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date time the module was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date time the module was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_module
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationModule.new
            end
            ## 
            ## Gets the description property value. Description of the module.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the module.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Name of the module.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the module.
            ## @param value Value to set for the displayName property.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isPinned" => lambda {|n| @is_pinned = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationModuleResource.create_from_discriminator_value(pn) }) },
                    "resourcesFolderUrl" => lambda {|n| @resources_folder_url = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::EducationModuleStatus) },
                })
            end
            ## 
            ## Gets the isPinned property value. Indicates whether the module is pinned or not.
            ## @return a boolean
            ## 
            def is_pinned
                return @is_pinned
            end
            ## 
            ## Sets the isPinned property value. Indicates whether the module is pinned or not.
            ## @param value Value to set for the isPinned property.
            ## @return a void
            ## 
            def is_pinned=(value)
                @is_pinned = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The last user that modified the module.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The last user that modified the module.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date time the module was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date time the module was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the resources property value. Learning objects that are associated with this module. Only teachers can modify this list. Nullable.
            ## @return a education_module_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. Learning objects that are associated with this module. Only teachers can modify this list. Nullable.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Gets the resourcesFolderUrl property value. Folder URL where all the file resources for this module are stored.
            ## @return a string
            ## 
            def resources_folder_url
                return @resources_folder_url
            end
            ## 
            ## Sets the resourcesFolderUrl property value. Folder URL where all the file resources for this module are stored.
            ## @param value Value to set for the resourcesFolderUrl property.
            ## @return a void
            ## 
            def resources_folder_url=(value)
                @resources_folder_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isPinned", @is_pinned)
                writer.write_collection_of_object_values("resources", @resources)
            end
            ## 
            ## Gets the status property value. Status of the module. You can't use a PATCH operation to update this value. Possible values are: draft and published.
            ## @return a education_module_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the module. You can't use a PATCH operation to update this value. Possible values are: draft and published.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
