require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityUnclassifiedArtifact < MicrosoftGraph::Models::SecurityArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The kind for this unclassifiedArtifact resource, describing what this value means.
            @kind
            ## 
            # The value for this unclassifiedArtifact.
            @value
            ## 
            ## Instantiates a new SecurityUnclassifiedArtifact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.unclassifiedArtifact"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_unclassified_artifact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityUnclassifiedArtifact.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "kind" => lambda {|n| @kind = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                })
            end
            ## 
            ## Gets the kind property value. The kind for this unclassifiedArtifact resource, describing what this value means.
            ## @return a string
            ## 
            def kind
                return @kind
            end
            ## 
            ## Sets the kind property value. The kind for this unclassifiedArtifact resource, describing what this value means.
            ## @param value Value to set for the kind property.
            ## @return a void
            ## 
            def kind=(value)
                @kind = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("kind", @kind)
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the value property value. The value for this unclassifiedArtifact.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The value for this unclassifiedArtifact.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
