require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class StandardTimeZoneOffset
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents the nth occurrence of the day of week that the transition from daylight saving time to standard time occurs.
            @day_occurrence
            ## 
            # Represents the day of the week when the transition from daylight saving time to standard time.
            @day_of_week
            ## 
            # Represents the month of the year when the transition from daylight saving time to standard time occurs.
            @month
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents the time of day when the transition from daylight saving time to standard time occurs.
            @time
            ## 
            # Represents how frequently in terms of years the change from daylight saving time to standard time occurs. For example, a value of 0 means every year.
            @year
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
            ## Instantiates a new standardTimeZoneOffset and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a standard_time_zone_offset
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.daylightTimeZoneOffset"
                            return DaylightTimeZoneOffset.new
                    end
                end
                return StandardTimeZoneOffset.new
            end
            ## 
            ## Gets the dayOccurrence property value. Represents the nth occurrence of the day of week that the transition from daylight saving time to standard time occurs.
            ## @return a integer
            ## 
            def day_occurrence
                return @day_occurrence
            end
            ## 
            ## Sets the dayOccurrence property value. Represents the nth occurrence of the day of week that the transition from daylight saving time to standard time occurs.
            ## @param value Value to set for the day_occurrence property.
            ## @return a void
            ## 
            def day_occurrence=(value)
                @day_occurrence = value
            end
            ## 
            ## Gets the dayOfWeek property value. Represents the day of the week when the transition from daylight saving time to standard time.
            ## @return a day_of_week
            ## 
            def day_of_week
                return @day_of_week
            end
            ## 
            ## Sets the dayOfWeek property value. Represents the day of the week when the transition from daylight saving time to standard time.
            ## @param value Value to set for the day_of_week property.
            ## @return a void
            ## 
            def day_of_week=(value)
                @day_of_week = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dayOccurrence" => lambda {|n| @day_occurrence = n.get_number_value() },
                    "dayOfWeek" => lambda {|n| @day_of_week = n.get_enum_value(MicrosoftGraph::Models::DayOfWeek) },
                    "month" => lambda {|n| @month = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "time" => lambda {|n| @time = n.get_time_value() },
                    "year" => lambda {|n| @year = n.get_number_value() },
                }
            end
            ## 
            ## Gets the month property value. Represents the month of the year when the transition from daylight saving time to standard time occurs.
            ## @return a integer
            ## 
            def month
                return @month
            end
            ## 
            ## Sets the month property value. Represents the month of the year when the transition from daylight saving time to standard time occurs.
            ## @param value Value to set for the month property.
            ## @return a void
            ## 
            def month=(value)
                @month = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("dayOccurrence", @day_occurrence)
                writer.write_enum_value("dayOfWeek", @day_of_week)
                writer.write_number_value("month", @month)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_time_value("time", @time)
                writer.write_number_value("year", @year)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the time property value. Represents the time of day when the transition from daylight saving time to standard time occurs.
            ## @return a time
            ## 
            def time
                return @time
            end
            ## 
            ## Sets the time property value. Represents the time of day when the transition from daylight saving time to standard time occurs.
            ## @param value Value to set for the time property.
            ## @return a void
            ## 
            def time=(value)
                @time = value
            end
            ## 
            ## Gets the year property value. Represents how frequently in terms of years the change from daylight saving time to standard time occurs. For example, a value of 0 means every year.
            ## @return a integer
            ## 
            def year
                return @year
            end
            ## 
            ## Sets the year property value. Represents how frequently in terms of years the change from daylight saving time to standard time occurs. For example, a value of 0 means every year.
            ## @param value Value to set for the year property.
            ## @return a void
            ## 
            def year=(value)
                @year = value
            end
        end
    end
end
