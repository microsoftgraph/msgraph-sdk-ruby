require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityKubernetesClusterEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The cloud identifier of the cluster. Can be either an amazonResourceEvidence, azureResourceEvidence, or googleCloudResourceEvidence object.
            @cloud_resource
            ## 
            # The distribution type of the cluster.
            @distribution
            ## 
            # The cluster name.
            @name
            ## 
            # The platform the cluster runs on. Possible values are: unknown, aks, eks, gke, arc, unknownFutureValue.
            @platform
            ## 
            # The kubernetes version of the cluster.
            @version
            ## 
            ## Gets the cloudResource property value. The cloud identifier of the cluster. Can be either an amazonResourceEvidence, azureResourceEvidence, or googleCloudResourceEvidence object.
            ## @return a security_alert_evidence
            ## 
            def cloud_resource
                return @cloud_resource
            end
            ## 
            ## Sets the cloudResource property value. The cloud identifier of the cluster. Can be either an amazonResourceEvidence, azureResourceEvidence, or googleCloudResourceEvidence object.
            ## @param value Value to set for the cloudResource property.
            ## @return a void
            ## 
            def cloud_resource=(value)
                @cloud_resource = value
            end
            ## 
            ## Instantiates a new SecurityKubernetesClusterEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.kubernetesClusterEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_kubernetes_cluster_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityKubernetesClusterEvidence.new
            end
            ## 
            ## Gets the distribution property value. The distribution type of the cluster.
            ## @return a string
            ## 
            def distribution
                return @distribution
            end
            ## 
            ## Sets the distribution property value. The distribution type of the cluster.
            ## @param value Value to set for the distribution property.
            ## @return a void
            ## 
            def distribution=(value)
                @distribution = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cloudResource" => lambda {|n| @cloud_resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityAlertEvidence.create_from_discriminator_value(pn) }) },
                    "distribution" => lambda {|n| @distribution = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::SecurityKubernetesPlatform) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The cluster name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The cluster name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the platform property value. The platform the cluster runs on. Possible values are: unknown, aks, eks, gke, arc, unknownFutureValue.
            ## @return a security_kubernetes_platform
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. The platform the cluster runs on. Possible values are: unknown, aks, eks, gke, arc, unknownFutureValue.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("cloudResource", @cloud_resource)
                writer.write_string_value("distribution", @distribution)
                writer.write_string_value("name", @name)
                writer.write_enum_value("platform", @platform)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. The kubernetes version of the cluster.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The kubernetes version of the cluster.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
