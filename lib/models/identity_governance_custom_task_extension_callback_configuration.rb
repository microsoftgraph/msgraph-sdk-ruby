require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceCustomTaskExtensionCallbackConfiguration < MicrosoftGraph::Models::CustomExtensionCallbackConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authorizedApps property
            @authorized_apps
            ## 
            ## Gets the authorizedApps property value. The authorizedApps property
            ## @return a application
            ## 
            def authorized_apps
                return @authorized_apps
            end
            ## 
            ## Sets the authorizedApps property value. The authorizedApps property
            ## @param value Value to set for the authorizedApps property.
            ## @return a void
            ## 
            def authorized_apps=(value)
                @authorized_apps = value
            end
            ## 
            ## Instantiates a new identityGovernanceCustomTaskExtensionCallbackConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_custom_task_extension_callback_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceCustomTaskExtensionCallbackConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authorizedApps" => lambda {|n| @authorized_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Application.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("authorizedApps", @authorized_apps) unless @authorized_apps.nil?
            end
        end
    end
end
