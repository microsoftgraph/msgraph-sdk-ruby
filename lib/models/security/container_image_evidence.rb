require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class ContainerImageEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The digestImage property
                @digest_image
                ## 
                # The imageId property
                @image_id
                ## 
                # The registry property
                @registry
                ## 
                ## Instantiates a new containerImageEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.containerImageEvidence"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a container_image_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ContainerImageEvidence.new
                end
                ## 
                ## Gets the digestImage property value. The digestImage property
                ## @return a container_image_evidence
                ## 
                def digest_image
                    return @digest_image
                end
                ## 
                ## Sets the digestImage property value. The digestImage property
                ## @param value Value to set for the digestImage property.
                ## @return a void
                ## 
                def digest_image=(value)
                    @digest_image = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "digestImage" => lambda {|n| @digest_image = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::ContainerImageEvidence.create_from_discriminator_value(pn) }) },
                        "imageId" => lambda {|n| @image_id = n.get_string_value() },
                        "registry" => lambda {|n| @registry = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::ContainerRegistryEvidence.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the imageId property value. The imageId property
                ## @return a string
                ## 
                def image_id
                    return @image_id
                end
                ## 
                ## Sets the imageId property value. The imageId property
                ## @param value Value to set for the imageId property.
                ## @return a void
                ## 
                def image_id=(value)
                    @image_id = value
                end
                ## 
                ## Gets the registry property value. The registry property
                ## @return a container_registry_evidence
                ## 
                def registry
                    return @registry
                end
                ## 
                ## Sets the registry property value. The registry property
                ## @param value Value to set for the registry property.
                ## @return a void
                ## 
                def registry=(value)
                    @registry = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("digestImage", @digest_image)
                    writer.write_string_value("imageId", @image_id)
                    writer.write_object_value("registry", @registry)
                end
            end
        end
    end
end
