require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityKubernetesSecretEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The secret name.
            @name
            ## 
            # The secret namespace.
            @namespace
            ## 
            # The secret type can include both built-in types and custom ones. Examples of built-in types are: Opaque, kubernetes.io/service-account-token, kubernetes.io/dockercfg, kubernetes.io/dockerconfigjson, kubernetes.io/basic-auth, kubernetes.io/ssh-auth, kubernetes.io/tls, bootstrap.kubernetes.io/token.
            @secret_type
            ## 
            ## Instantiates a new securityKubernetesSecretEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.kubernetesSecretEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_kubernetes_secret_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityKubernetesSecretEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "namespace" => lambda {|n| @namespace = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityKubernetesNamespaceEvidence.create_from_discriminator_value(pn) }) },
                    "secretType" => lambda {|n| @secret_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The secret name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The secret name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the namespace property value. The secret namespace.
            ## @return a security_kubernetes_namespace_evidence
            ## 
            def namespace
                return @namespace
            end
            ## 
            ## Sets the namespace property value. The secret namespace.
            ## @param value Value to set for the namespace property.
            ## @return a void
            ## 
            def namespace=(value)
                @namespace = value
            end
            ## 
            ## Gets the secretType property value. The secret type can include both built-in types and custom ones. Examples of built-in types are: Opaque, kubernetes.io/service-account-token, kubernetes.io/dockercfg, kubernetes.io/dockerconfigjson, kubernetes.io/basic-auth, kubernetes.io/ssh-auth, kubernetes.io/tls, bootstrap.kubernetes.io/token.
            ## @return a string
            ## 
            def secret_type
                return @secret_type
            end
            ## 
            ## Sets the secretType property value. The secret type can include both built-in types and custom ones. Examples of built-in types are: Opaque, kubernetes.io/service-account-token, kubernetes.io/dockercfg, kubernetes.io/dockerconfigjson, kubernetes.io/basic-auth, kubernetes.io/ssh-auth, kubernetes.io/tls, bootstrap.kubernetes.io/token.
            ## @param value Value to set for the secretType property.
            ## @return a void
            ## 
            def secret_type=(value)
                @secret_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name) unless @name.nil?
                writer.write_object_value("namespace", @namespace) unless @namespace.nil?
                writer.write_string_value("secretType", @secret_type) unless @secret_type.nil?
            end
        end
    end
end
