require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintServiceEndpoint < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A human-readable display name for the endpoint.
            @display_name
            ## 
            # The URI that can be used to access the service.
            @uri
            ## 
            ## Instantiates a new printServiceEndpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_service_endpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintServiceEndpoint.new
            end
            ## 
            ## Gets the displayName property value. A human-readable display name for the endpoint.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. A human-readable display name for the endpoint.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "uri" => lambda {|n| @uri = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("uri", @uri)
            end
            ## 
            ## Gets the uri property value. The URI that can be used to access the service.
            ## @return a string
            ## 
            def uri
                return @uri
            end
            ## 
            ## Sets the uri property value. The URI that can be used to access the service.
            ## @param value Value to set for the uri property.
            ## @return a void
            ## 
            def uri=(value)
                @uri = value
            end
        end
    end
end
