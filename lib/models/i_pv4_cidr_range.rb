require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IPv4CidrRange < MicrosoftGraph::Models::IpRange
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # IPv4 address in CIDR notation. Not nullable.
            @cidr_address
            ## 
            ## Gets the cidrAddress property value. IPv4 address in CIDR notation. Not nullable.
            ## @return a string
            ## 
            def cidr_address
                return @cidr_address
            end
            ## 
            ## Sets the cidrAddress property value. IPv4 address in CIDR notation. Not nullable.
            ## @param value Value to set for the cidr_address property.
            ## @return a void
            ## 
            def cidr_address=(value)
                @cidr_address = value
            end
            ## 
            ## Instantiates a new IPv4CidrRange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iPv4CidrRange"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a i_pv4_cidr_range
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IPv4CidrRange.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cidrAddress" => lambda {|n| @cidr_address = n.get_string_value() },
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
                writer.write_string_value("cidrAddress", @cidr_address)
            end
        end
    end
end
