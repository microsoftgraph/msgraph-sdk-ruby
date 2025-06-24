require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnTokenIssuanceStartListener < MicrosoftGraph::Models::AuthenticationEventListener
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The handler to invoke when conditions are met for this onTokenIssuanceStartListener.
            @handler
            ## 
            ## Instantiates a new OnTokenIssuanceStartListener and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onTokenIssuanceStartListener"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_token_issuance_start_listener
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnTokenIssuanceStartListener.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "handler" => lambda {|n| @handler = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnTokenIssuanceStartHandler.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the handler property value. The handler to invoke when conditions are met for this onTokenIssuanceStartListener.
            ## @return a on_token_issuance_start_handler
            ## 
            def handler
                return @handler
            end
            ## 
            ## Sets the handler property value. The handler to invoke when conditions are met for this onTokenIssuanceStartListener.
            ## @param value Value to set for the handler property.
            ## @return a void
            ## 
            def handler=(value)
                @handler = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("handler", @handler)
            end
        end
    end
end
