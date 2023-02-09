require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRoute
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The final property
            @final
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The original property
            @original
            ## 
            # The routingType property
            @routing_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new callRoute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a call_route
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRoute.new
            end
            ## 
            ## Gets the final property value. The final property
            ## @return a identity_set
            ## 
            def final
                return @final
            end
            ## 
            ## Sets the final property value. The final property
            ## @param value Value to set for the final property.
            ## @return a void
            ## 
            def final=(value)
                @final = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "final" => lambda {|n| @final = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "original" => lambda {|n| @original = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "routingType" => lambda {|n| @routing_type = n.get_enum_value(MicrosoftGraph::Models::RoutingType) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the original property value. The original property
            ## @return a identity_set
            ## 
            def original
                return @original
            end
            ## 
            ## Sets the original property value. The original property
            ## @param value Value to set for the original property.
            ## @return a void
            ## 
            def original=(value)
                @original = value
            end
            ## 
            ## Gets the routingType property value. The routingType property
            ## @return a routing_type
            ## 
            def routing_type
                return @routing_type
            end
            ## 
            ## Sets the routingType property value. The routingType property
            ## @param value Value to set for the routing_type property.
            ## @return a void
            ## 
            def routing_type=(value)
                @routing_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("final", @final)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("original", @original)
                writer.write_enum_value("routingType", @routing_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
