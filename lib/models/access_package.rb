require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access packages that are incompatible with this package. Read-only.
            @access_packages_incompatible_with
            ## 
            # The assignmentPolicies property
            @assignment_policies
            ## 
            # The catalog property
            @catalog
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The description of the access package.
            @description
            ## 
            # The display name of the access package. Supports $filter (eq, contains).
            @display_name
            ## 
            # The access packages whose assigned users are ineligible to be assigned this access package.
            @incompatible_access_packages
            ## 
            # The groups whose members are ineligible to be assigned this access package.
            @incompatible_groups
            ## 
            # Whether the access package is hidden from the requestor.
            @is_hidden
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @modified_date_time
            ## 
            ## Gets the accessPackagesIncompatibleWith property value. The access packages that are incompatible with this package. Read-only.
            ## @return a access_package
            ## 
            def access_packages_incompatible_with
                return @access_packages_incompatible_with
            end
            ## 
            ## Sets the accessPackagesIncompatibleWith property value. The access packages that are incompatible with this package. Read-only.
            ## @param value Value to set for the access_packages_incompatible_with property.
            ## @return a void
            ## 
            def access_packages_incompatible_with=(value)
                @access_packages_incompatible_with = value
            end
            ## 
            ## Gets the assignmentPolicies property value. The assignmentPolicies property
            ## @return a access_package_assignment_policy
            ## 
            def assignment_policies
                return @assignment_policies
            end
            ## 
            ## Sets the assignmentPolicies property value. The assignmentPolicies property
            ## @param value Value to set for the assignment_policies property.
            ## @return a void
            ## 
            def assignment_policies=(value)
                @assignment_policies = value
            end
            ## 
            ## Gets the catalog property value. The catalog property
            ## @return a access_package_catalog
            ## 
            def catalog
                return @catalog
            end
            ## 
            ## Sets the catalog property value. The catalog property
            ## @param value Value to set for the catalog property.
            ## @return a void
            ## 
            def catalog=(value)
                @catalog = value
            end
            ## 
            ## Instantiates a new accessPackage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackage.new
            end
            ## 
            ## Gets the description property value. The description of the access package.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the access package.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the access package. Supports $filter (eq, contains).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the access package. Supports $filter (eq, contains).
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
                    "accessPackagesIncompatibleWith" => lambda {|n| @access_packages_incompatible_with = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "assignmentPolicies" => lambda {|n| @assignment_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentPolicy.create_from_discriminator_value(pn) }) },
                    "catalog" => lambda {|n| @catalog = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "incompatibleAccessPackages" => lambda {|n| @incompatible_access_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "incompatibleGroups" => lambda {|n| @incompatible_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "isHidden" => lambda {|n| @is_hidden = n.get_boolean_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the incompatibleAccessPackages property value. The access packages whose assigned users are ineligible to be assigned this access package.
            ## @return a access_package
            ## 
            def incompatible_access_packages
                return @incompatible_access_packages
            end
            ## 
            ## Sets the incompatibleAccessPackages property value. The access packages whose assigned users are ineligible to be assigned this access package.
            ## @param value Value to set for the incompatible_access_packages property.
            ## @return a void
            ## 
            def incompatible_access_packages=(value)
                @incompatible_access_packages = value
            end
            ## 
            ## Gets the incompatibleGroups property value. The groups whose members are ineligible to be assigned this access package.
            ## @return a group
            ## 
            def incompatible_groups
                return @incompatible_groups
            end
            ## 
            ## Sets the incompatibleGroups property value. The groups whose members are ineligible to be assigned this access package.
            ## @param value Value to set for the incompatible_groups property.
            ## @return a void
            ## 
            def incompatible_groups=(value)
                @incompatible_groups = value
            end
            ## 
            ## Gets the isHidden property value. Whether the access package is hidden from the requestor.
            ## @return a boolean
            ## 
            def is_hidden
                return @is_hidden
            end
            ## 
            ## Sets the isHidden property value. Whether the access package is hidden from the requestor.
            ## @param value Value to set for the is_hidden property.
            ## @return a void
            ## 
            def is_hidden=(value)
                @is_hidden = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accessPackagesIncompatibleWith", @access_packages_incompatible_with)
                writer.write_collection_of_object_values("assignmentPolicies", @assignment_policies)
                writer.write_object_value("catalog", @catalog)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("incompatibleAccessPackages", @incompatible_access_packages)
                writer.write_collection_of_object_values("incompatibleGroups", @incompatible_groups)
                writer.write_boolean_value("isHidden", @is_hidden)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
            end
        end
    end
end
