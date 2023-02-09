require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DaylightTimeZoneOffset < MicrosoftGraph::Models::StandardTimeZoneOffset
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The time offset from Coordinated Universal Time (UTC) for daylight saving time. This value is in minutes.
            @daylight_bias
            ## 
            ## Instantiates a new DaylightTimeZoneOffset and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.daylightTimeZoneOffset"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a daylight_time_zone_offset
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DaylightTimeZoneOffset.new
            end
            ## 
            ## Gets the daylightBias property value. The time offset from Coordinated Universal Time (UTC) for daylight saving time. This value is in minutes.
            ## @return a integer
            ## 
            def daylight_bias
                return @daylight_bias
            end
            ## 
            ## Sets the daylightBias property value. The time offset from Coordinated Universal Time (UTC) for daylight saving time. This value is in minutes.
            ## @param value Value to set for the daylight_bias property.
            ## @return a void
            ## 
            def daylight_bias=(value)
                @daylight_bias = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "daylightBias" => lambda {|n| @daylight_bias = n.get_number_value() },
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
                writer.write_number_value("daylightBias", @daylight_bias)
            end
        end
    end
end
