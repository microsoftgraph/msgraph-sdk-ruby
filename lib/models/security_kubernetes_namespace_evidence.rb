require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityKubernetesNamespaceEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The namespace cluster.
            @cluster
            ## 
            # The labels for the Kubernetes pod.
            @labels
            ## 
            # The namespace name.
            @name
            ## 
            ## Gets the cluster property value. The namespace cluster.
            ## @return a security_kubernetes_cluster_evidence
            ## 
            def cluster
                return @cluster
            end
            ## 
            ## Sets the cluster property value. The namespace cluster.
            ## @param value Value to set for the cluster property.
            ## @return a void
            ## 
            def cluster=(value)
                @cluster = value
            end
            ## 
            ## Instantiates a new securityKubernetesNamespaceEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.kubernetesNamespaceEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_kubernetes_namespace_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityKubernetesNamespaceEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cluster" => lambda {|n| @cluster = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityKubernetesClusterEvidence.create_from_discriminator_value(pn) }) },
                    "labels" => lambda {|n| @labels = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityDictionary.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the labels property value. The labels for the Kubernetes pod.
            ## @return a security_dictionary
            ## 
            def labels
                return @labels
            end
            ## 
            ## Sets the labels property value. The labels for the Kubernetes pod.
            ## @param value Value to set for the labels property.
            ## @return a void
            ## 
            def labels=(value)
                @labels = value
            end
            ## 
            ## Gets the name property value. The namespace name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The namespace name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("cluster", @cluster) unless @cluster.nil?
                writer.write_object_value("labels", @labels) unless @labels.nil?
                writer.write_string_value("name", @name) unless @name.nil?
            end
        end
    end
end
