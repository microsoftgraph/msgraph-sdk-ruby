require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintService < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Endpoints that can be used to access the service. Read-only. Nullable.
            @endpoints
            ## 
            ## Instantiates a new PrintService and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_service
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintService.new
            end
            ## 
            ## Gets the endpoints property value. Endpoints that can be used to access the service. Read-only. Nullable.
            ## @return a print_service_endpoint
            ## 
            def endpoints
                return @endpoints
            end
            ## 
            ## Sets the endpoints property value. Endpoints that can be used to access the service. Read-only. Nullable.
            ## @param value Value to set for the endpoints property.
            ## @return a void
            ## 
            def endpoints=(value)
                @endpoints = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endpoints" => lambda {|n| @endpoints = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintServiceEndpoint.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("endpoints", @endpoints)
            end
        end
    end
end
