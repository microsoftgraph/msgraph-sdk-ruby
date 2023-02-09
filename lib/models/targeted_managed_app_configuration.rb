require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TargetedManagedAppConfiguration < MicrosoftGraph::Models::ManagedAppConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            @assignments
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # Indicates if the policy is deployed to any inclusion groups or not.
            @is_assigned
            ## 
            ## Gets the apps property value. List of apps to which the policy is deployed.
            ## @return a managed_mobile_app
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. List of apps to which the policy is deployed.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
            end
            ## 
            ## Gets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @return a targeted_managed_app_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new TargetedManagedAppConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.targetedManagedAppConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a targeted_managed_app_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TargetedManagedAppConfiguration.new
            end
            ## 
            ## Gets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @return a integer
            ## 
            def deployed_app_count
                return @deployed_app_count
            end
            ## 
            ## Sets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @param value Value to set for the deployed_app_count property.
            ## @return a void
            ## 
            def deployed_app_count=(value)
                @deployed_app_count = value
            end
            ## 
            ## Gets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @return a managed_app_policy_deployment_summary
            ## 
            def deployment_summary
                return @deployment_summary
            end
            ## 
            ## Sets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @param value Value to set for the deployment_summary property.
            ## @return a void
            ## 
            def deployment_summary=(value)
                @deployment_summary = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TargetedManagedAppPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("isAssigned", @is_assigned)
            end
        end
    end
end
