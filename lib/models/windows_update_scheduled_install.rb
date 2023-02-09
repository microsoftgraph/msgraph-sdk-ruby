require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsUpdateScheduledInstall < MicrosoftGraph::Models::WindowsUpdateInstallScheduleType
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values for a weekly schedule.
            @scheduled_install_day
            ## 
            # Scheduled Install Time during day
            @scheduled_install_time
            ## 
            ## Instantiates a new WindowsUpdateScheduledInstall and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdateScheduledInstall"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_update_scheduled_install
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdateScheduledInstall.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "scheduledInstallDay" => lambda {|n| @scheduled_install_day = n.get_enum_value(MicrosoftGraph::Models::WeeklySchedule) },
                    "scheduledInstallTime" => lambda {|n| @scheduled_install_time = n.get_time_value() },
                })
            end
            ## 
            ## Gets the scheduledInstallDay property value. Possible values for a weekly schedule.
            ## @return a weekly_schedule
            ## 
            def scheduled_install_day
                return @scheduled_install_day
            end
            ## 
            ## Sets the scheduledInstallDay property value. Possible values for a weekly schedule.
            ## @param value Value to set for the scheduled_install_day property.
            ## @return a void
            ## 
            def scheduled_install_day=(value)
                @scheduled_install_day = value
            end
            ## 
            ## Gets the scheduledInstallTime property value. Scheduled Install Time during day
            ## @return a time
            ## 
            def scheduled_install_time
                return @scheduled_install_time
            end
            ## 
            ## Sets the scheduledInstallTime property value. Scheduled Install Time during day
            ## @param value Value to set for the scheduled_install_time property.
            ## @return a void
            ## 
            def scheduled_install_time=(value)
                @scheduled_install_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("scheduledInstallDay", @scheduled_install_day)
                writer.write_time_value("scheduledInstallTime", @scheduled_install_time)
            end
        end
    end
end
