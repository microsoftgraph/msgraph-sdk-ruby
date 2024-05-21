require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityNetworkConnectionEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The destinationAddress property
            @destination_address
            ## 
            # The destinationPort property
            @destination_port
            ## 
            # The protocol property
            @protocol
            ## 
            # The sourceAddress property
            @source_address
            ## 
            # The sourcePort property
            @source_port
            ## 
            ## Instantiates a new SecurityNetworkConnectionEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.networkConnectionEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_network_connection_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityNetworkConnectionEvidence.new
            end
            ## 
            ## Gets the destinationAddress property value. The destinationAddress property
            ## @return a security_ip_evidence
            ## 
            def destination_address
                return @destination_address
            end
            ## 
            ## Sets the destinationAddress property value. The destinationAddress property
            ## @param value Value to set for the destinationAddress property.
            ## @return a void
            ## 
            def destination_address=(value)
                @destination_address = value
            end
            ## 
            ## Gets the destinationPort property value. The destinationPort property
            ## @return a integer
            ## 
            def destination_port
                return @destination_port
            end
            ## 
            ## Sets the destinationPort property value. The destinationPort property
            ## @param value Value to set for the destinationPort property.
            ## @return a void
            ## 
            def destination_port=(value)
                @destination_port = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "destinationAddress" => lambda {|n| @destination_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                    "destinationPort" => lambda {|n| @destination_port = n.get_number_value() },
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraph::Models::SecurityProtocolType) },
                    "sourceAddress" => lambda {|n| @source_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                    "sourcePort" => lambda {|n| @source_port = n.get_number_value() },
                })
            end
            ## 
            ## Gets the protocol property value. The protocol property
            ## @return a security_protocol_type
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. The protocol property
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("destinationAddress", @destination_address)
                writer.write_number_value("destinationPort", @destination_port)
                writer.write_enum_value("protocol", @protocol)
                writer.write_object_value("sourceAddress", @source_address)
                writer.write_number_value("sourcePort", @source_port)
            end
            ## 
            ## Gets the sourceAddress property value. The sourceAddress property
            ## @return a security_ip_evidence
            ## 
            def source_address
                return @source_address
            end
            ## 
            ## Sets the sourceAddress property value. The sourceAddress property
            ## @param value Value to set for the sourceAddress property.
            ## @return a void
            ## 
            def source_address=(value)
                @source_address = value
            end
            ## 
            ## Gets the sourcePort property value. The sourcePort property
            ## @return a integer
            ## 
            def source_port
                return @source_port
            end
            ## 
            ## Sets the sourcePort property value. The sourcePort property
            ## @param value Value to set for the sourcePort property.
            ## @return a void
            ## 
            def source_port=(value)
                @source_port = value
            end
        end
    end
end
