require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedAppPolicyDeploymentSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Not yet documented
            @configuration_deployed_user_count
            ## 
            # Not yet documented
            @configuration_deployment_summary_per_app
            ## 
            # Not yet documented
            @display_name
            ## 
            # Not yet documented
            @last_refresh_time
            ## 
            # Version of the entity.
            @version
            ## 
            ## Gets the configurationDeployedUserCount property value. Not yet documented
            ## @return a integer
            ## 
            def configuration_deployed_user_count
                return @configuration_deployed_user_count
            end
            ## 
            ## Sets the configurationDeployedUserCount property value. Not yet documented
            ## @param value Value to set for the configuration_deployed_user_count property.
            ## @return a void
            ## 
            def configuration_deployed_user_count=(value)
                @configuration_deployed_user_count = value
            end
            ## 
            ## Gets the configurationDeploymentSummaryPerApp property value. Not yet documented
            ## @return a managed_app_policy_deployment_summary_per_app
            ## 
            def configuration_deployment_summary_per_app
                return @configuration_deployment_summary_per_app
            end
            ## 
            ## Sets the configurationDeploymentSummaryPerApp property value. Not yet documented
            ## @param value Value to set for the configuration_deployment_summary_per_app property.
            ## @return a void
            ## 
            def configuration_deployment_summary_per_app=(value)
                @configuration_deployment_summary_per_app = value
            end
            ## 
            ## Instantiates a new managedAppPolicyDeploymentSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_policy_deployment_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAppPolicyDeploymentSummary.new
            end
            ## 
            ## Gets the displayName property value. Not yet documented
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Not yet documented
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
                    "configurationDeployedUserCount" => lambda {|n| @configuration_deployed_user_count = n.get_number_value() },
                    "configurationDeploymentSummaryPerApp" => lambda {|n| @configuration_deployment_summary_per_app = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicyDeploymentSummaryPerApp.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastRefreshTime" => lambda {|n| @last_refresh_time = n.get_date_time_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastRefreshTime property value. Not yet documented
            ## @return a date_time
            ## 
            def last_refresh_time
                return @last_refresh_time
            end
            ## 
            ## Sets the lastRefreshTime property value. Not yet documented
            ## @param value Value to set for the last_refresh_time property.
            ## @return a void
            ## 
            def last_refresh_time=(value)
                @last_refresh_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("configurationDeployedUserCount", @configuration_deployed_user_count)
                writer.write_collection_of_object_values("configurationDeploymentSummaryPerApp", @configuration_deployment_summary_per_app)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastRefreshTime", @last_refresh_time)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Version of the entity.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the entity.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
