require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkingHours
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The days of the week on which the user works.
            @days_of_week
            ## 
            # The time of the day that the user stops working.
            @end_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The time of the day that the user starts working.
            @start_time
            ## 
            # The time zone to which the working hours apply.
            @time_zone
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
            ## Instantiates a new workingHours and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a working_hours
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkingHours.new
            end
            ## 
            ## Gets the daysOfWeek property value. The days of the week on which the user works.
            ## @return a day_of_week
            ## 
            def days_of_week
                return @days_of_week
            end
            ## 
            ## Sets the daysOfWeek property value. The days of the week on which the user works.
            ## @param value Value to set for the days_of_week property.
            ## @return a void
            ## 
            def days_of_week=(value)
                @days_of_week = value
            end
            ## 
            ## Gets the endTime property value. The time of the day that the user stops working.
            ## @return a time
            ## 
            def end_time
                return @end_time
            end
            ## 
            ## Sets the endTime property value. The time of the day that the user stops working.
            ## @param value Value to set for the end_time property.
            ## @return a void
            ## 
            def end_time=(value)
                @end_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "daysOfWeek" => lambda {|n| @days_of_week = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DayOfWeek.create_from_discriminator_value(pn) }) },
                    "endTime" => lambda {|n| @end_time = n.get_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startTime" => lambda {|n| @start_time = n.get_time_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeZoneBase.create_from_discriminator_value(pn) }) },
                }
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
                writer.write_collection_of_object_values("daysOfWeek", @days_of_week)
                writer.write_time_value("endTime", @end_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_time_value("startTime", @start_time)
                writer.write_object_value("timeZone", @time_zone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startTime property value. The time of the day that the user starts working.
            ## @return a time
            ## 
            def start_time
                return @start_time
            end
            ## 
            ## Sets the startTime property value. The time of the day that the user starts working.
            ## @param value Value to set for the start_time property.
            ## @return a void
            ## 
            def start_time=(value)
                @start_time = value
            end
            ## 
            ## Gets the timeZone property value. The time zone to which the working hours apply.
            ## @return a time_zone_base
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The time zone to which the working hours apply.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
        end
    end
end
