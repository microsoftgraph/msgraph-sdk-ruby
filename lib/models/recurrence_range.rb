require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecurrenceRange
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date to stop applying the recurrence pattern. Depending on the recurrence pattern of the event, the last occurrence of the meeting may not be this date. Required if type is endDate.
            @end_date
            ## 
            # The number of times to repeat the event. Required and must be positive if type is numbered.
            @number_of_occurrences
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Time zone for the startDate and endDate properties. Optional. If not specified, the time zone of the event is used.
            @recurrence_time_zone
            ## 
            # The date to start applying the recurrence pattern. The first occurrence of the meeting may be this date or later, depending on the recurrence pattern of the event. Must be the same value as the start property of the recurring event. Required.
            @start_date
            ## 
            # The recurrence range. The possible values are: endDate, noEnd, numbered. Required.
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
            ## Instantiates a new recurrenceRange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a recurrence_range
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecurrenceRange.new
            end
            ## 
            ## Gets the endDate property value. The date to stop applying the recurrence pattern. Depending on the recurrence pattern of the event, the last occurrence of the meeting may not be this date. Required if type is endDate.
            ## @return a date
            ## 
            def end_date
                return @end_date
            end
            ## 
            ## Sets the endDate property value. The date to stop applying the recurrence pattern. Depending on the recurrence pattern of the event, the last occurrence of the meeting may not be this date. Required if type is endDate.
            ## @param value Value to set for the end_date property.
            ## @return a void
            ## 
            def end_date=(value)
                @end_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "endDate" => lambda {|n| @end_date = n.get_date_value() },
                    "numberOfOccurrences" => lambda {|n| @number_of_occurrences = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recurrenceTimeZone" => lambda {|n| @recurrence_time_zone = n.get_string_value() },
                    "startDate" => lambda {|n| @start_date = n.get_date_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::RecurrenceRangeType) },
                }
            end
            ## 
            ## Gets the numberOfOccurrences property value. The number of times to repeat the event. Required and must be positive if type is numbered.
            ## @return a integer
            ## 
            def number_of_occurrences
                return @number_of_occurrences
            end
            ## 
            ## Sets the numberOfOccurrences property value. The number of times to repeat the event. Required and must be positive if type is numbered.
            ## @param value Value to set for the number_of_occurrences property.
            ## @return a void
            ## 
            def number_of_occurrences=(value)
                @number_of_occurrences = value
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
            ## Gets the recurrenceTimeZone property value. Time zone for the startDate and endDate properties. Optional. If not specified, the time zone of the event is used.
            ## @return a string
            ## 
            def recurrence_time_zone
                return @recurrence_time_zone
            end
            ## 
            ## Sets the recurrenceTimeZone property value. Time zone for the startDate and endDate properties. Optional. If not specified, the time zone of the event is used.
            ## @param value Value to set for the recurrence_time_zone property.
            ## @return a void
            ## 
            def recurrence_time_zone=(value)
                @recurrence_time_zone = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_value("endDate", @end_date)
                writer.write_number_value("numberOfOccurrences", @number_of_occurrences)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("recurrenceTimeZone", @recurrence_time_zone)
                writer.write_date_value("startDate", @start_date)
                writer.write_enum_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDate property value. The date to start applying the recurrence pattern. The first occurrence of the meeting may be this date or later, depending on the recurrence pattern of the event. Must be the same value as the start property of the recurring event. Required.
            ## @return a date
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. The date to start applying the recurrence pattern. The first occurrence of the meeting may be this date or later, depending on the recurrence pattern of the event. Must be the same value as the start property of the recurring event. Required.
            ## @param value Value to set for the start_date property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
            ## 
            ## Gets the type property value. The recurrence range. The possible values are: endDate, noEnd, numbered. Required.
            ## @return a recurrence_range_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The recurrence range. The possible values are: endDate, noEnd, numbered. Required.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
