require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InboundOutboundPolicyConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Defines whether external users coming inbound are allowed.
            @inbound_allowed
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines whether internal users are allowed to go outbound.
            @outbound_allowed
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new InboundOutboundPolicyConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a inbound_outbound_policy_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InboundOutboundPolicyConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "inboundAllowed" => lambda {|n| @inbound_allowed = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "outboundAllowed" => lambda {|n| @outbound_allowed = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the inboundAllowed property value. Defines whether external users coming inbound are allowed.
            ## @return a boolean
            ## 
            def inbound_allowed
                return @inbound_allowed
            end
            ## 
            ## Sets the inboundAllowed property value. Defines whether external users coming inbound are allowed.
            ## @param value Value to set for the inboundAllowed property.
            ## @return a void
            ## 
            def inbound_allowed=(value)
                @inbound_allowed = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the outboundAllowed property value. Defines whether internal users are allowed to go outbound.
            ## @return a boolean
            ## 
            def outbound_allowed
                return @outbound_allowed
            end
            ## 
            ## Sets the outboundAllowed property value. Defines whether internal users are allowed to go outbound.
            ## @param value Value to set for the outboundAllowed property.
            ## @return a void
            ## 
            def outbound_allowed=(value)
                @outbound_allowed = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("inboundAllowed", @inbound_allowed)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("outboundAllowed", @outbound_allowed)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
