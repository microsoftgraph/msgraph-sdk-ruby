require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IPv6Range < MicrosoftGraph::Models::IpRange
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Lower address.
            @lower_address
            ## 
            # Upper address.
            @upper_address
            ## 
            ## Instantiates a new IPv6Range and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iPv6Range"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a i_pv6_range
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IPv6Range.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lowerAddress" => lambda {|n| @lower_address = n.get_string_value() },
                    "upperAddress" => lambda {|n| @upper_address = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lowerAddress property value. Lower address.
            ## @return a string
            ## 
            def lower_address
                return @lower_address
            end
            ## 
            ## Sets the lowerAddress property value. Lower address.
            ## @param value Value to set for the lower_address property.
            ## @return a void
            ## 
            def lower_address=(value)
                @lower_address = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("lowerAddress", @lower_address)
                writer.write_string_value("upperAddress", @upper_address)
            end
            ## 
            ## Gets the upperAddress property value. Upper address.
            ## @return a string
            ## 
            def upper_address
                return @upper_address
            end
            ## 
            ## Sets the upperAddress property value. Upper address.
            ## @param value Value to set for the upper_address property.
            ## @return a void
            ## 
            def upper_address=(value)
                @upper_address = value
            end
        end
    end
end
