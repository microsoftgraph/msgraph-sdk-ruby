require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IpNamedLocation < MicrosoftGraph::Models::NamedLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of IP address ranges in IPv4 CIDR format (e.g. 1.2.3.4/32) or any allowable IPv6 format from IETF RFC5969. Required.
            @ip_ranges
            ## 
            # true if this location is explicitly trusted. Optional. Default value is false.
            @is_trusted
            ## 
            ## Instantiates a new IpNamedLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ip_named_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IpNamedLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ipRanges" => lambda {|n| @ip_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IpRange.create_from_discriminator_value(pn) }) },
                    "isTrusted" => lambda {|n| @is_trusted = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the ipRanges property value. List of IP address ranges in IPv4 CIDR format (e.g. 1.2.3.4/32) or any allowable IPv6 format from IETF RFC5969. Required.
            ## @return a ip_range
            ## 
            def ip_ranges
                return @ip_ranges
            end
            ## 
            ## Sets the ipRanges property value. List of IP address ranges in IPv4 CIDR format (e.g. 1.2.3.4/32) or any allowable IPv6 format from IETF RFC5969. Required.
            ## @param value Value to set for the ip_ranges property.
            ## @return a void
            ## 
            def ip_ranges=(value)
                @ip_ranges = value
            end
            ## 
            ## Gets the isTrusted property value. true if this location is explicitly trusted. Optional. Default value is false.
            ## @return a boolean
            ## 
            def is_trusted
                return @is_trusted
            end
            ## 
            ## Sets the isTrusted property value. true if this location is explicitly trusted. Optional. Default value is false.
            ## @param value Value to set for the is_trusted property.
            ## @return a void
            ## 
            def is_trusted=(value)
                @is_trusted = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("ipRanges", @ip_ranges)
                writer.write_boolean_value("isTrusted", @is_trusted)
            end
        end
    end
end
