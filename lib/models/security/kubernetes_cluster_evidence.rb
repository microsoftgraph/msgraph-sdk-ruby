require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class KubernetesClusterEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The cloudResource property
                @cloud_resource
                ## 
                # The distribution property
                @distribution
                ## 
                # The name property
                @name
                ## 
                # The platform property
                @platform
                ## 
                # The version property
                @version
                ## 
                ## Gets the cloudResource property value. The cloudResource property
                ## @return a alert_evidence
                ## 
                def cloud_resource
                    return @cloud_resource
                end
                ## 
                ## Sets the cloudResource property value. The cloudResource property
                ## @param value Value to set for the cloudResource property.
                ## @return a void
                ## 
                def cloud_resource=(value)
                    @cloud_resource = value
                end
                ## 
                ## Instantiates a new kubernetesClusterEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.kubernetesClusterEvidence"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a kubernetes_cluster_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return KubernetesClusterEvidence.new
                end
                ## 
                ## Gets the distribution property value. The distribution property
                ## @return a string
                ## 
                def distribution
                    return @distribution
                end
                ## 
                ## Sets the distribution property value. The distribution property
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
                        "cloudResource" => lambda {|n| @cloud_resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::AlertEvidence.create_from_discriminator_value(pn) }) },
                        "distribution" => lambda {|n| @distribution = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::Security::KubernetesPlatform) },
                        "version" => lambda {|n| @version = n.get_string_value() },
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
                ## Gets the platform property value. The platform property
                ## @return a kubernetes_platform
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. The platform property
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
                ## Gets the version property value. The version property
                ## @return a string
                ## 
                def version
                    return @version
                end
                ## 
                ## Sets the version property value. The version property
                ## @param value Value to set for the version property.
                ## @return a void
                ## 
                def version=(value)
                    @version = value
                end
            end
        end
    end
end
