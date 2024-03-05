require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEndpoint < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The auditEvents property
            @audit_events
            ## 
            # The provisioningPolicies property
            @provisioning_policies
            ## 
            # The userSettings property
            @user_settings
            ## 
            ## Gets the auditEvents property value. The auditEvents property
            ## @return a cloud_pc_audit_event
            ## 
            def audit_events
                return @audit_events
            end
            ## 
            ## Sets the auditEvents property value. The auditEvents property
            ## @param value Value to set for the auditEvents property.
            ## @return a void
            ## 
            def audit_events=(value)
                @audit_events = value
            end
            ## 
            ## Instantiates a new VirtualEndpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_endpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEndpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "auditEvents" => lambda {|n| @audit_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcAuditEvent.create_from_discriminator_value(pn) }) },
                    "provisioningPolicies" => lambda {|n| @provisioning_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcProvisioningPolicy.create_from_discriminator_value(pn) }) },
                    "userSettings" => lambda {|n| @user_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcUserSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the provisioningPolicies property value. The provisioningPolicies property
            ## @return a cloud_pc_provisioning_policy
            ## 
            def provisioning_policies
                return @provisioning_policies
            end
            ## 
            ## Sets the provisioningPolicies property value. The provisioningPolicies property
            ## @param value Value to set for the provisioningPolicies property.
            ## @return a void
            ## 
            def provisioning_policies=(value)
                @provisioning_policies = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("auditEvents", @audit_events)
                writer.write_collection_of_object_values("provisioningPolicies", @provisioning_policies)
                writer.write_collection_of_object_values("userSettings", @user_settings)
            end
            ## 
            ## Gets the userSettings property value. The userSettings property
            ## @return a cloud_pc_user_setting
            ## 
            def user_settings
                return @user_settings
            end
            ## 
            ## Sets the userSettings property value. The userSettings property
            ## @param value Value to set for the userSettings property.
            ## @return a void
            ## 
            def user_settings=(value)
                @user_settings = value
            end
        end
    end
end
