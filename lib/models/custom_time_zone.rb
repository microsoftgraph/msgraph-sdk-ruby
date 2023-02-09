require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomTimeZone < MicrosoftGraph::Models::TimeZoneBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The time offset of the time zone from Coordinated Universal Time (UTC). This value is in minutes. Time zones that are ahead of UTC have a positive offset; time zones that are behind UTC have a negative offset.
            @bias
            ## 
            # Specifies when the time zone switches from standard time to daylight saving time.
            @daylight_offset
            ## 
            # Specifies when the time zone switches from daylight saving time to standard time.
            @standard_offset
            ## 
            ## Gets the bias property value. The time offset of the time zone from Coordinated Universal Time (UTC). This value is in minutes. Time zones that are ahead of UTC have a positive offset; time zones that are behind UTC have a negative offset.
            ## @return a integer
            ## 
            def bias
                return @bias
            end
            ## 
            ## Sets the bias property value. The time offset of the time zone from Coordinated Universal Time (UTC). This value is in minutes. Time zones that are ahead of UTC have a positive offset; time zones that are behind UTC have a negative offset.
            ## @param value Value to set for the bias property.
            ## @return a void
            ## 
            def bias=(value)
                @bias = value
            end
            ## 
            ## Instantiates a new CustomTimeZone and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customTimeZone"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a custom_time_zone
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomTimeZone.new
            end
            ## 
            ## Gets the daylightOffset property value. Specifies when the time zone switches from standard time to daylight saving time.
            ## @return a daylight_time_zone_offset
            ## 
            def daylight_offset
                return @daylight_offset
            end
            ## 
            ## Sets the daylightOffset property value. Specifies when the time zone switches from standard time to daylight saving time.
            ## @param value Value to set for the daylight_offset property.
            ## @return a void
            ## 
            def daylight_offset=(value)
                @daylight_offset = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bias" => lambda {|n| @bias = n.get_number_value() },
                    "daylightOffset" => lambda {|n| @daylight_offset = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DaylightTimeZoneOffset.create_from_discriminator_value(pn) }) },
                    "standardOffset" => lambda {|n| @standard_offset = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::StandardTimeZoneOffset.create_from_discriminator_value(pn) }) },
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
                writer.write_number_value("bias", @bias)
                writer.write_object_value("daylightOffset", @daylight_offset)
                writer.write_object_value("standardOffset", @standard_offset)
            end
            ## 
            ## Gets the standardOffset property value. Specifies when the time zone switches from daylight saving time to standard time.
            ## @return a standard_time_zone_offset
            ## 
            def standard_offset
                return @standard_offset
            end
            ## 
            ## Sets the standardOffset property value. Specifies when the time zone switches from daylight saving time to standard time.
            ## @param value Value to set for the standard_offset property.
            ## @return a void
            ## 
            def standard_offset=(value)
                @standard_offset = value
            end
        end
    end
end
