require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class KubernetesSecretEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name property
                @name
                ## 
                # The namespace property
                @namespace
                ## 
                # The secretType property
                @secret_type
                ## 
                ## Instantiates a new kubernetesSecretEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.kubernetesSecretEvidence"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a kubernetes_secret_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return KubernetesSecretEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "namespace" => lambda {|n| @namespace = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::KubernetesNamespaceEvidence.create_from_discriminator_value(pn) }) },
                        "secretType" => lambda {|n| @secret_type = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the namespace property value. The namespace property
                ## @return a kubernetes_namespace_evidence
                ## 
                def namespace
                    return @namespace
                end
                ## 
                ## Sets the namespace property value. The namespace property
                ## @param value Value to set for the namespace property.
                ## @return a void
                ## 
                def namespace=(value)
                    @namespace = value
                end
                ## 
                ## Gets the secretType property value. The secretType property
                ## @return a string
                ## 
                def secret_type
                    return @secret_type
                end
                ## 
                ## Sets the secretType property value. The secretType property
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
                    writer.write_string_value("name", @name)
                    writer.write_object_value("namespace", @namespace)
                    writer.write_string_value("secretType", @secret_type)
                end
            end
        end
    end
end
