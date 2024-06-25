require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEndpoint < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of Cloud PC audit events.
            @audit_events
            ## 
            # A collection of cloud-managed virtual desktops.
            @cloud_p_cs
            ## 
            # A collection of device image resources on Cloud PC.
            @device_images
            ## 
            # A collection of gallery image resources on Cloud PC.
            @gallery_images
            ## 
            # A defined collection of Azure resource information that can be used to establish Azure network connections for Cloud PCs.
            @on_premises_connections
            ## 
            # A collection of Cloud PC provisioning policies.
            @provisioning_policies
            ## 
            # A collection of Cloud PC user settings.
            @user_settings
            ## 
            ## Gets the auditEvents property value. A collection of Cloud PC audit events.
            ## @return a cloud_pc_audit_event
            ## 
            def audit_events
                return @audit_events
            end
            ## 
            ## Sets the auditEvents property value. A collection of Cloud PC audit events.
            ## @param value Value to set for the auditEvents property.
            ## @return a void
            ## 
            def audit_events=(value)
                @audit_events = value
            end
            ## 
            ## Gets the cloudPCs property value. A collection of cloud-managed virtual desktops.
            ## @return a cloud_p_c
            ## 
            def cloud_p_cs
                return @cloud_p_cs
            end
            ## 
            ## Sets the cloudPCs property value. A collection of cloud-managed virtual desktops.
            ## @param value Value to set for the cloudPCs property.
            ## @return a void
            ## 
            def cloud_p_cs=(value)
                @cloud_p_cs = value
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
            ## Gets the deviceImages property value. A collection of device image resources on Cloud PC.
            ## @return a cloud_pc_device_image
            ## 
            def device_images
                return @device_images
            end
            ## 
            ## Sets the deviceImages property value. A collection of device image resources on Cloud PC.
            ## @param value Value to set for the deviceImages property.
            ## @return a void
            ## 
            def device_images=(value)
                @device_images = value
            end
            ## 
            ## Gets the galleryImages property value. A collection of gallery image resources on Cloud PC.
            ## @return a cloud_pc_gallery_image
            ## 
            def gallery_images
                return @gallery_images
            end
            ## 
            ## Sets the galleryImages property value. A collection of gallery image resources on Cloud PC.
            ## @param value Value to set for the galleryImages property.
            ## @return a void
            ## 
            def gallery_images=(value)
                @gallery_images = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "auditEvents" => lambda {|n| @audit_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcAuditEvent.create_from_discriminator_value(pn) }) },
                    "cloudPCs" => lambda {|n| @cloud_p_cs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPC.create_from_discriminator_value(pn) }) },
                    "deviceImages" => lambda {|n| @device_images = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcDeviceImage.create_from_discriminator_value(pn) }) },
                    "galleryImages" => lambda {|n| @gallery_images = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcGalleryImage.create_from_discriminator_value(pn) }) },
                    "onPremisesConnections" => lambda {|n| @on_premises_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcOnPremisesConnection.create_from_discriminator_value(pn) }) },
                    "provisioningPolicies" => lambda {|n| @provisioning_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcProvisioningPolicy.create_from_discriminator_value(pn) }) },
                    "userSettings" => lambda {|n| @user_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcUserSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the onPremisesConnections property value. A defined collection of Azure resource information that can be used to establish Azure network connections for Cloud PCs.
            ## @return a cloud_pc_on_premises_connection
            ## 
            def on_premises_connections
                return @on_premises_connections
            end
            ## 
            ## Sets the onPremisesConnections property value. A defined collection of Azure resource information that can be used to establish Azure network connections for Cloud PCs.
            ## @param value Value to set for the onPremisesConnections property.
            ## @return a void
            ## 
            def on_premises_connections=(value)
                @on_premises_connections = value
            end
            ## 
            ## Gets the provisioningPolicies property value. A collection of Cloud PC provisioning policies.
            ## @return a cloud_pc_provisioning_policy
            ## 
            def provisioning_policies
                return @provisioning_policies
            end
            ## 
            ## Sets the provisioningPolicies property value. A collection of Cloud PC provisioning policies.
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
                writer.write_collection_of_object_values("cloudPCs", @cloud_p_cs)
                writer.write_collection_of_object_values("deviceImages", @device_images)
                writer.write_collection_of_object_values("galleryImages", @gallery_images)
                writer.write_collection_of_object_values("onPremisesConnections", @on_premises_connections)
                writer.write_collection_of_object_values("provisioningPolicies", @provisioning_policies)
                writer.write_collection_of_object_values("userSettings", @user_settings)
            end
            ## 
            ## Gets the userSettings property value. A collection of Cloud PC user settings.
            ## @return a cloud_pc_user_setting
            ## 
            def user_settings
                return @user_settings
            end
            ## 
            ## Sets the userSettings property value. A collection of Cloud PC user settings.
            ## @param value Value to set for the userSettings property.
            ## @return a void
            ## 
            def user_settings=(value)
                @user_settings = value
            end
        end
    end
end
