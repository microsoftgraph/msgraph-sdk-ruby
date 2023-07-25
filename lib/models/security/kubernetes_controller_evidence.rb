require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class KubernetesControllerEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The labels property
                @labels
                ## 
                # The name property
                @name
                ## 
                # The namespace property
                @namespace
                ## 
                # The type property
                @type
                ## 
                ## Instantiates a new kubernetesControllerEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.kubernetesControllerEvidence"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a kubernetes_controller_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return KubernetesControllerEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "labels" => lambda {|n| @labels = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::Dictionary.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "namespace" => lambda {|n| @namespace = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::KubernetesNamespaceEvidence.create_from_discriminator_value(pn) }) },
                        "type" => lambda {|n| @type = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the labels property value. The labels property
                ## @return a dictionary
                ## 
                def labels
                    return @labels
                end
                ## 
                ## Sets the labels property value. The labels property
                ## @param value Value to set for the labels property.
                ## @return a void
                ## 
                def labels=(value)
                    @labels = value
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("labels", @labels)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("namespace", @namespace)
                    writer.write_string_value("type", @type)
                end
                ## 
                ## Gets the type property value. The type property
                ## @return a string
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. The type property
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
            end
        end
    end
end
