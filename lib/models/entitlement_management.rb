require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EntitlementManagement < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Approval stages for decisions associated with access package assignment requests.
            @access_package_assignment_approvals
            ## 
            # Access packages define the collection of resource roles and the policies for which subjects can request or be assigned access to those resources.
            @access_packages
            ## 
            # Access package assignment policies govern which subjects can request or be assigned an access package via an access package assignment.
            @assignment_policies
            ## 
            # Access package assignment requests created by or on behalf of a subject.
            @assignment_requests
            ## 
            # The assignment of an access package to a subject for a period of time.
            @assignments
            ## 
            # A container for access packages.
            @catalogs
            ## 
            # References to a directory or domain of another organization whose users can request access.
            @connected_organizations
            ## 
            # A reference to the geolocation environments in which a resource is located.
            @resource_environments
            ## 
            # Represents a request to add or remove a resource to or from a catalog respectively.
            @resource_requests
            ## 
            # The resourceRoleScopes property
            @resource_role_scopes
            ## 
            # The resources associated with the catalogs.
            @resources
            ## 
            # The settings that control the behavior of Azure AD entitlement management.
            @settings
            ## 
            ## Gets the accessPackageAssignmentApprovals property value. Approval stages for decisions associated with access package assignment requests.
            ## @return a approval
            ## 
            def access_package_assignment_approvals
                return @access_package_assignment_approvals
            end
            ## 
            ## Sets the accessPackageAssignmentApprovals property value. Approval stages for decisions associated with access package assignment requests.
            ## @param value Value to set for the accessPackageAssignmentApprovals property.
            ## @return a void
            ## 
            def access_package_assignment_approvals=(value)
                @access_package_assignment_approvals = value
            end
            ## 
            ## Gets the accessPackages property value. Access packages define the collection of resource roles and the policies for which subjects can request or be assigned access to those resources.
            ## @return a access_package
            ## 
            def access_packages
                return @access_packages
            end
            ## 
            ## Sets the accessPackages property value. Access packages define the collection of resource roles and the policies for which subjects can request or be assigned access to those resources.
            ## @param value Value to set for the accessPackages property.
            ## @return a void
            ## 
            def access_packages=(value)
                @access_packages = value
            end
            ## 
            ## Gets the assignmentPolicies property value. Access package assignment policies govern which subjects can request or be assigned an access package via an access package assignment.
            ## @return a access_package_assignment_policy
            ## 
            def assignment_policies
                return @assignment_policies
            end
            ## 
            ## Sets the assignmentPolicies property value. Access package assignment policies govern which subjects can request or be assigned an access package via an access package assignment.
            ## @param value Value to set for the assignmentPolicies property.
            ## @return a void
            ## 
            def assignment_policies=(value)
                @assignment_policies = value
            end
            ## 
            ## Gets the assignmentRequests property value. Access package assignment requests created by or on behalf of a subject.
            ## @return a access_package_assignment_request
            ## 
            def assignment_requests
                return @assignment_requests
            end
            ## 
            ## Sets the assignmentRequests property value. Access package assignment requests created by or on behalf of a subject.
            ## @param value Value to set for the assignmentRequests property.
            ## @return a void
            ## 
            def assignment_requests=(value)
                @assignment_requests = value
            end
            ## 
            ## Gets the assignments property value. The assignment of an access package to a subject for a period of time.
            ## @return a access_package_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The assignment of an access package to a subject for a period of time.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the catalogs property value. A container for access packages.
            ## @return a access_package_catalog
            ## 
            def catalogs
                return @catalogs
            end
            ## 
            ## Sets the catalogs property value. A container for access packages.
            ## @param value Value to set for the catalogs property.
            ## @return a void
            ## 
            def catalogs=(value)
                @catalogs = value
            end
            ## 
            ## Gets the connectedOrganizations property value. References to a directory or domain of another organization whose users can request access.
            ## @return a connected_organization
            ## 
            def connected_organizations
                return @connected_organizations
            end
            ## 
            ## Sets the connectedOrganizations property value. References to a directory or domain of another organization whose users can request access.
            ## @param value Value to set for the connectedOrganizations property.
            ## @return a void
            ## 
            def connected_organizations=(value)
                @connected_organizations = value
            end
            ## 
            ## Instantiates a new entitlementManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a entitlement_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EntitlementManagement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackageAssignmentApprovals" => lambda {|n| @access_package_assignment_approvals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Approval.create_from_discriminator_value(pn) }) },
                    "accessPackages" => lambda {|n| @access_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "assignmentPolicies" => lambda {|n| @assignment_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentPolicy.create_from_discriminator_value(pn) }) },
                    "assignmentRequests" => lambda {|n| @assignment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignmentRequest.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageAssignment.create_from_discriminator_value(pn) }) },
                    "catalogs" => lambda {|n| @catalogs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "connectedOrganizations" => lambda {|n| @connected_organizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConnectedOrganization.create_from_discriminator_value(pn) }) },
                    "resourceEnvironments" => lambda {|n| @resource_environments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceEnvironment.create_from_discriminator_value(pn) }) },
                    "resourceRequests" => lambda {|n| @resource_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceRequest.create_from_discriminator_value(pn) }) },
                    "resourceRoleScopes" => lambda {|n| @resource_role_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceRoleScope.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EntitlementManagementSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resourceEnvironments property value. A reference to the geolocation environments in which a resource is located.
            ## @return a access_package_resource_environment
            ## 
            def resource_environments
                return @resource_environments
            end
            ## 
            ## Sets the resourceEnvironments property value. A reference to the geolocation environments in which a resource is located.
            ## @param value Value to set for the resourceEnvironments property.
            ## @return a void
            ## 
            def resource_environments=(value)
                @resource_environments = value
            end
            ## 
            ## Gets the resourceRequests property value. Represents a request to add or remove a resource to or from a catalog respectively.
            ## @return a access_package_resource_request
            ## 
            def resource_requests
                return @resource_requests
            end
            ## 
            ## Sets the resourceRequests property value. Represents a request to add or remove a resource to or from a catalog respectively.
            ## @param value Value to set for the resourceRequests property.
            ## @return a void
            ## 
            def resource_requests=(value)
                @resource_requests = value
            end
            ## 
            ## Gets the resourceRoleScopes property value. The resourceRoleScopes property
            ## @return a access_package_resource_role_scope
            ## 
            def resource_role_scopes
                return @resource_role_scopes
            end
            ## 
            ## Sets the resourceRoleScopes property value. The resourceRoleScopes property
            ## @param value Value to set for the resourceRoleScopes property.
            ## @return a void
            ## 
            def resource_role_scopes=(value)
                @resource_role_scopes = value
            end
            ## 
            ## Gets the resources property value. The resources associated with the catalogs.
            ## @return a access_package_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The resources associated with the catalogs.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accessPackageAssignmentApprovals", @access_package_assignment_approvals)
                writer.write_collection_of_object_values("accessPackages", @access_packages)
                writer.write_collection_of_object_values("assignmentPolicies", @assignment_policies)
                writer.write_collection_of_object_values("assignmentRequests", @assignment_requests)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_collection_of_object_values("catalogs", @catalogs)
                writer.write_collection_of_object_values("connectedOrganizations", @connected_organizations)
                writer.write_collection_of_object_values("resourceEnvironments", @resource_environments)
                writer.write_collection_of_object_values("resourceRequests", @resource_requests)
                writer.write_collection_of_object_values("resourceRoleScopes", @resource_role_scopes)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_object_value("settings", @settings)
            end
            ## 
            ## Gets the settings property value. The settings that control the behavior of Azure AD entitlement management.
            ## @return a entitlement_management_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings that control the behavior of Azure AD entitlement management.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
        end
    end
end
