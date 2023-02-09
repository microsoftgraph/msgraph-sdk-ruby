require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class TraceRouteHop
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The network path count of this hop that was used to compute the RTT.
                @hop_count
                ## 
                # IP address used for this hop in the network trace.
                @ip_address
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The time from when the trace route packet was sent from the client to this hop and back to the client, denoted in [ISO 8601][] format. For example, 1 second is denoted as PT1S, where P is the duration designator, T is the time designator, and S is the second designator.
                @round_trip_time
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
                ## Instantiates a new traceRouteHop and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a trace_route_hop
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TraceRouteHop.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "hopCount" => lambda {|n| @hop_count = n.get_number_value() },
                        "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "roundTripTime" => lambda {|n| @round_trip_time = n.get_duration_value() },
                    }
                end
                ## 
                ## Gets the hopCount property value. The network path count of this hop that was used to compute the RTT.
                ## @return a integer
                ## 
                def hop_count
                    return @hop_count
                end
                ## 
                ## Sets the hopCount property value. The network path count of this hop that was used to compute the RTT.
                ## @param value Value to set for the hop_count property.
                ## @return a void
                ## 
                def hop_count=(value)
                    @hop_count = value
                end
                ## 
                ## Gets the ipAddress property value. IP address used for this hop in the network trace.
                ## @return a string
                ## 
                def ip_address
                    return @ip_address
                end
                ## 
                ## Sets the ipAddress property value. IP address used for this hop in the network trace.
                ## @param value Value to set for the ip_address property.
                ## @return a void
                ## 
                def ip_address=(value)
                    @ip_address = value
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
                ## Gets the roundTripTime property value. The time from when the trace route packet was sent from the client to this hop and back to the client, denoted in [ISO 8601][] format. For example, 1 second is denoted as PT1S, where P is the duration designator, T is the time designator, and S is the second designator.
                ## @return a microsoft_kiota_abstractions::_i_s_o_duration
                ## 
                def round_trip_time
                    return @round_trip_time
                end
                ## 
                ## Sets the roundTripTime property value. The time from when the trace route packet was sent from the client to this hop and back to the client, denoted in [ISO 8601][] format. For example, 1 second is denoted as PT1S, where P is the duration designator, T is the time designator, and S is the second designator.
                ## @param value Value to set for the round_trip_time property.
                ## @return a void
                ## 
                def round_trip_time=(value)
                    @round_trip_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("hopCount", @hop_count)
                    writer.write_string_value("ipAddress", @ip_address)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_duration_value("roundTripTime", @round_trip_time)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
