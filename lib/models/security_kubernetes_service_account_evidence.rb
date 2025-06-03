require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityKubernetesServiceAccountEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The service account name.
            @name
            ## 
            # The service account namespace.
            @namespace
            ## 
            ## Instantiates a new SecurityKubernetesServiceAccountEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.kubernetesServiceAccountEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_kubernetes_service_account_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityKubernetesServiceAccountEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "namespace" => lambda {|n| @namespace = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityKubernetesNamespaceEvidence.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. The service account name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The service account name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the namespace property value. The service account namespace.
            ## @return a security_kubernetes_namespace_evidence
            ## 
            def namespace
                return @namespace
            end
            ## 
            ## Sets the namespace property value. The service account namespace.
            ## @param value Value to set for the namespace property.
            ## @return a void
            ## 
            def namespace=(value)
                @namespace = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name)
                writer.write_object_value("namespace", @namespace)
            end
        end
    end
end
