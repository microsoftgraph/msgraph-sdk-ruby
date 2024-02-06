require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityContainerImageEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The digest image entity, in case this is a tag image.
            @digest_image
            ## 
            # The unique identifier for the container image entity.
            @image_id
            ## 
            # The container registry for this image.
            @registry
            ## 
            ## Instantiates a new securityContainerImageEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.containerImageEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_container_image_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityContainerImageEvidence.new
            end
            ## 
            ## Gets the digestImage property value. The digest image entity, in case this is a tag image.
            ## @return a security_container_image_evidence
            ## 
            def digest_image
                return @digest_image
            end
            ## 
            ## Sets the digestImage property value. The digest image entity, in case this is a tag image.
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
                    "digestImage" => lambda {|n| @digest_image = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityContainerImageEvidence.create_from_discriminator_value(pn) }) },
                    "imageId" => lambda {|n| @image_id = n.get_string_value() },
                    "registry" => lambda {|n| @registry = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityContainerRegistryEvidence.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the imageId property value. The unique identifier for the container image entity.
            ## @return a string
            ## 
            def image_id
                return @image_id
            end
            ## 
            ## Sets the imageId property value. The unique identifier for the container image entity.
            ## @param value Value to set for the imageId property.
            ## @return a void
            ## 
            def image_id=(value)
                @image_id = value
            end
            ## 
            ## Gets the registry property value. The container registry for this image.
            ## @return a security_container_registry_evidence
            ## 
            def registry
                return @registry
            end
            ## 
            ## Sets the registry property value. The container registry for this image.
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
                writer.write_object_value("digestImage", @digest_image) unless @digest_image.nil?
                writer.write_string_value("imageId", @image_id) unless @image_id.nil?
                writer.write_object_value("registry", @registry) unless @registry.nil?
            end
        end
    end
end
