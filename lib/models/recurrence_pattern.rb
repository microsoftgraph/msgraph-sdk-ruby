require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecurrencePattern
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The day of the month on which the event occurs. Required if type is absoluteMonthly or absoluteYearly.
            @day_of_month
            ## 
            # A collection of the days of the week on which the event occurs. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. If type is relativeMonthly or relativeYearly, and daysOfWeek specifies more than one day, the event falls on the first day that satisfies the pattern.  Required if type is weekly, relativeMonthly, or relativeYearly.
            @days_of_week
            ## 
            # The first day of the week. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. Default is sunday. Required if type is weekly.
            @first_day_of_week
            ## 
            # Specifies on which instance of the allowed days specified in daysOfWeek the event occurs, counted from the first instance in the month. The possible values are: first, second, third, fourth, last. Default is first. Optional and used if type is relativeMonthly or relativeYearly.
            @index
            ## 
            # The number of units between occurrences, where units can be in days, weeks, months, or years, depending on the type. Required.
            @interval
            ## 
            # The month in which the event occurs.  This is a number from 1 to 12.
            @month
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recurrence pattern type: daily, weekly, absoluteMonthly, relativeMonthly, absoluteYearly, relativeYearly. Required. For more information, see values of type property.
            @type
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
            ## Instantiates a new recurrencePattern and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a recurrence_pattern
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecurrencePattern.new
            end
            ## 
            ## Gets the dayOfMonth property value. The day of the month on which the event occurs. Required if type is absoluteMonthly or absoluteYearly.
            ## @return a integer
            ## 
            def day_of_month
                return @day_of_month
            end
            ## 
            ## Sets the dayOfMonth property value. The day of the month on which the event occurs. Required if type is absoluteMonthly or absoluteYearly.
            ## @param value Value to set for the day_of_month property.
            ## @return a void
            ## 
            def day_of_month=(value)
                @day_of_month = value
            end
            ## 
            ## Gets the daysOfWeek property value. A collection of the days of the week on which the event occurs. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. If type is relativeMonthly or relativeYearly, and daysOfWeek specifies more than one day, the event falls on the first day that satisfies the pattern.  Required if type is weekly, relativeMonthly, or relativeYearly.
            ## @return a day_of_week
            ## 
            def days_of_week
                return @days_of_week
            end
            ## 
            ## Sets the daysOfWeek property value. A collection of the days of the week on which the event occurs. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. If type is relativeMonthly or relativeYearly, and daysOfWeek specifies more than one day, the event falls on the first day that satisfies the pattern.  Required if type is weekly, relativeMonthly, or relativeYearly.
            ## @param value Value to set for the days_of_week property.
            ## @return a void
            ## 
            def days_of_week=(value)
                @days_of_week = value
            end
            ## 
            ## Gets the firstDayOfWeek property value. The first day of the week. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. Default is sunday. Required if type is weekly.
            ## @return a day_of_week
            ## 
            def first_day_of_week
                return @first_day_of_week
            end
            ## 
            ## Sets the firstDayOfWeek property value. The first day of the week. The possible values are: sunday, monday, tuesday, wednesday, thursday, friday, saturday. Default is sunday. Required if type is weekly.
            ## @param value Value to set for the first_day_of_week property.
            ## @return a void
            ## 
            def first_day_of_week=(value)
                @first_day_of_week = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dayOfMonth" => lambda {|n| @day_of_month = n.get_number_value() },
                    "daysOfWeek" => lambda {|n| @days_of_week = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DayOfWeek.create_from_discriminator_value(pn) }) },
                    "firstDayOfWeek" => lambda {|n| @first_day_of_week = n.get_enum_value(MicrosoftGraph::Models::DayOfWeek) },
                    "index" => lambda {|n| @index = n.get_enum_value(MicrosoftGraph::Models::WeekIndex) },
                    "interval" => lambda {|n| @interval = n.get_number_value() },
                    "month" => lambda {|n| @month = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::RecurrencePatternType) },
                }
            end
            ## 
            ## Gets the index property value. Specifies on which instance of the allowed days specified in daysOfWeek the event occurs, counted from the first instance in the month. The possible values are: first, second, third, fourth, last. Default is first. Optional and used if type is relativeMonthly or relativeYearly.
            ## @return a week_index
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. Specifies on which instance of the allowed days specified in daysOfWeek the event occurs, counted from the first instance in the month. The possible values are: first, second, third, fourth, last. Default is first. Optional and used if type is relativeMonthly or relativeYearly.
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
            end
            ## 
            ## Gets the interval property value. The number of units between occurrences, where units can be in days, weeks, months, or years, depending on the type. Required.
            ## @return a integer
            ## 
            def interval
                return @interval
            end
            ## 
            ## Sets the interval property value. The number of units between occurrences, where units can be in days, weeks, months, or years, depending on the type. Required.
            ## @param value Value to set for the interval property.
            ## @return a void
            ## 
            def interval=(value)
                @interval = value
            end
            ## 
            ## Gets the month property value. The month in which the event occurs.  This is a number from 1 to 12.
            ## @return a integer
            ## 
            def month
                return @month
            end
            ## 
            ## Sets the month property value. The month in which the event occurs.  This is a number from 1 to 12.
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
                writer.write_number_value("dayOfMonth", @day_of_month)
                writer.write_collection_of_object_values("daysOfWeek", @days_of_week)
                writer.write_enum_value("firstDayOfWeek", @first_day_of_week)
                writer.write_enum_value("index", @index)
                writer.write_number_value("interval", @interval)
                writer.write_number_value("month", @month)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The recurrence pattern type: daily, weekly, absoluteMonthly, relativeMonthly, absoluteYearly, relativeYearly. Required. For more information, see values of type property.
            ## @return a recurrence_pattern_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The recurrence pattern type: daily, weekly, absoluteMonthly, relativeMonthly, absoluteYearly, relativeYearly. Required. For more information, see values of type property.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
