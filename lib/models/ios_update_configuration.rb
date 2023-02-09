require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosUpdateConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Active Hours End (active hours mean the time window when updates install should not happen)
            @active_hours_end
            ## 
            # Active Hours Start (active hours mean the time window when updates install should not happen)
            @active_hours_start
            ## 
            # Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.
            @scheduled_install_days
            ## 
            # UTC Time Offset indicated in minutes
            @utc_time_offset_in_minutes
            ## 
            ## Gets the activeHoursEnd property value. Active Hours End (active hours mean the time window when updates install should not happen)
            ## @return a time
            ## 
            def active_hours_end
                return @active_hours_end
            end
            ## 
            ## Sets the activeHoursEnd property value. Active Hours End (active hours mean the time window when updates install should not happen)
            ## @param value Value to set for the active_hours_end property.
            ## @return a void
            ## 
            def active_hours_end=(value)
                @active_hours_end = value
            end
            ## 
            ## Gets the activeHoursStart property value. Active Hours Start (active hours mean the time window when updates install should not happen)
            ## @return a time
            ## 
            def active_hours_start
                return @active_hours_start
            end
            ## 
            ## Sets the activeHoursStart property value. Active Hours Start (active hours mean the time window when updates install should not happen)
            ## @param value Value to set for the active_hours_start property.
            ## @return a void
            ## 
            def active_hours_start=(value)
                @active_hours_start = value
            end
            ## 
            ## Instantiates a new IosUpdateConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosUpdateConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_update_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosUpdateConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeHoursEnd" => lambda {|n| @active_hours_end = n.get_time_value() },
                    "activeHoursStart" => lambda {|n| @active_hours_start = n.get_time_value() },
                    "scheduledInstallDays" => lambda {|n| @scheduled_install_days = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DayOfWeek.create_from_discriminator_value(pn) }) },
                    "utcTimeOffsetInMinutes" => lambda {|n| @utc_time_offset_in_minutes = n.get_number_value() },
                })
            end
            ## 
            ## Gets the scheduledInstallDays property value. Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.
            ## @return a day_of_week
            ## 
            def scheduled_install_days
                return @scheduled_install_days
            end
            ## 
            ## Sets the scheduledInstallDays property value. Days in week for which active hours are configured. This collection can contain a maximum of 7 elements.
            ## @param value Value to set for the scheduled_install_days property.
            ## @return a void
            ## 
            def scheduled_install_days=(value)
                @scheduled_install_days = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_time_value("activeHoursEnd", @active_hours_end)
                writer.write_time_value("activeHoursStart", @active_hours_start)
                writer.write_collection_of_object_values("scheduledInstallDays", @scheduled_install_days)
                writer.write_number_value("utcTimeOffsetInMinutes", @utc_time_offset_in_minutes)
            end
            ## 
            ## Gets the utcTimeOffsetInMinutes property value. UTC Time Offset indicated in minutes
            ## @return a integer
            ## 
            def utc_time_offset_in_minutes
                return @utc_time_offset_in_minutes
            end
            ## 
            ## Sets the utcTimeOffsetInMinutes property value. UTC Time Offset indicated in minutes
            ## @param value Value to set for the utc_time_offset_in_minutes property.
            ## @return a void
            ## 
            def utc_time_offset_in_minutes=(value)
                @utc_time_offset_in_minutes = value
            end
        end
    end
end
