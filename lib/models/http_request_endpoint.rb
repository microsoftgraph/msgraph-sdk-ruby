require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class HttpRequestEndpoint < MicrosoftGraph::Models::CustomExtensionEndpointConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The HTTP endpoint that a custom extension calls.
            @target_url
            ## 
            ## Instantiates a new HttpRequestEndpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.httpRequestEndpoint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a http_request_endpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HttpRequestEndpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targetUrl" => lambda {|n| @target_url = n.get_string_value() },
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
                writer.write_string_value("targetUrl", @target_url)
            end
            ## 
            ## Gets the targetUrl property value. The HTTP endpoint that a custom extension calls.
            ## @return a string
            ## 
            def target_url
                return @target_url
            end
            ## 
            ## Sets the targetUrl property value. The HTTP endpoint that a custom extension calls.
            ## @param value Value to set for the targetUrl property.
            ## @return a void
            ## 
            def target_url=(value)
                @target_url = value
            end
        end
    end
end
