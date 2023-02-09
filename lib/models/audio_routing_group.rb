require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AudioRoutingGroup < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The receivers property
            @receivers
            ## 
            # The routingMode property
            @routing_mode
            ## 
            # The sources property
            @sources
            ## 
            ## Instantiates a new audioRoutingGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a audio_routing_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AudioRoutingGroup.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "receivers" => lambda {|n| @receivers = n.get_collection_of_primitive_values(String) },
                    "routingMode" => lambda {|n| @routing_mode = n.get_enum_value(MicrosoftGraph::Models::RoutingMode) },
                    "sources" => lambda {|n| @sources = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the receivers property value. The receivers property
            ## @return a string
            ## 
            def receivers
                return @receivers
            end
            ## 
            ## Sets the receivers property value. The receivers property
            ## @param value Value to set for the receivers property.
            ## @return a void
            ## 
            def receivers=(value)
                @receivers = value
            end
            ## 
            ## Gets the routingMode property value. The routingMode property
            ## @return a routing_mode
            ## 
            def routing_mode
                return @routing_mode
            end
            ## 
            ## Sets the routingMode property value. The routingMode property
            ## @param value Value to set for the routing_mode property.
            ## @return a void
            ## 
            def routing_mode=(value)
                @routing_mode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("receivers", @receivers)
                writer.write_enum_value("routingMode", @routing_mode)
                writer.write_collection_of_primitive_values("sources", @sources)
            end
            ## 
            ## Gets the sources property value. The sources property
            ## @return a string
            ## 
            def sources
                return @sources
            end
            ## 
            ## Sets the sources property value. The sources property
            ## @param value Value to set for the sources property.
            ## @return a void
            ## 
            def sources=(value)
                @sources = value
            end
        end
    end
end
