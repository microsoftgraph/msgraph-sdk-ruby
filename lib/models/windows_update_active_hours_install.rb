require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsUpdateActiveHoursInstall < MicrosoftGraph::Models::WindowsUpdateInstallScheduleType
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Active Hours End
            @active_hours_end
            ## 
            # Active Hours Start
            @active_hours_start
            ## 
            ## Gets the activeHoursEnd property value. Active Hours End
            ## @return a time
            ## 
            def active_hours_end
                return @active_hours_end
            end
            ## 
            ## Sets the activeHoursEnd property value. Active Hours End
            ## @param value Value to set for the active_hours_end property.
            ## @return a void
            ## 
            def active_hours_end=(value)
                @active_hours_end = value
            end
            ## 
            ## Gets the activeHoursStart property value. Active Hours Start
            ## @return a time
            ## 
            def active_hours_start
                return @active_hours_start
            end
            ## 
            ## Sets the activeHoursStart property value. Active Hours Start
            ## @param value Value to set for the active_hours_start property.
            ## @return a void
            ## 
            def active_hours_start=(value)
                @active_hours_start = value
            end
            ## 
            ## Instantiates a new WindowsUpdateActiveHoursInstall and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdateActiveHoursInstall"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_update_active_hours_install
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdateActiveHoursInstall.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeHoursEnd" => lambda {|n| @active_hours_end = n.get_time_value() },
                    "activeHoursStart" => lambda {|n| @active_hours_start = n.get_time_value() },
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
                writer.write_time_value("activeHoursEnd", @active_hours_end)
                writer.write_time_value("activeHoursStart", @active_hours_start)
            end
        end
    end
end
