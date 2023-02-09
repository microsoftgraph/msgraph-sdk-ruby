require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Win32LobAppAssignmentSettings < MicrosoftGraph::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains value for delivery optimization priority.
            @delivery_optimization_priority
            ## 
            # The install time settings to apply for this app assignment.
            @install_time_settings
            ## 
            # Contains value for notification status.
            @notifications
            ## 
            # The reboot settings to apply for this app assignment.
            @restart_settings
            ## 
            ## Instantiates a new Win32LobAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppAssignmentSettings.new
            end
            ## 
            ## Gets the deliveryOptimizationPriority property value. Contains value for delivery optimization priority.
            ## @return a win32_lob_app_delivery_optimization_priority
            ## 
            def delivery_optimization_priority
                return @delivery_optimization_priority
            end
            ## 
            ## Sets the deliveryOptimizationPriority property value. Contains value for delivery optimization priority.
            ## @param value Value to set for the delivery_optimization_priority property.
            ## @return a void
            ## 
            def delivery_optimization_priority=(value)
                @delivery_optimization_priority = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deliveryOptimizationPriority" => lambda {|n| @delivery_optimization_priority = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppDeliveryOptimizationPriority) },
                    "installTimeSettings" => lambda {|n| @install_time_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MobileAppInstallTimeSettings.create_from_discriminator_value(pn) }) },
                    "notifications" => lambda {|n| @notifications = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppNotification) },
                    "restartSettings" => lambda {|n| @restart_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Win32LobAppRestartSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the installTimeSettings property value. The install time settings to apply for this app assignment.
            ## @return a mobile_app_install_time_settings
            ## 
            def install_time_settings
                return @install_time_settings
            end
            ## 
            ## Sets the installTimeSettings property value. The install time settings to apply for this app assignment.
            ## @param value Value to set for the install_time_settings property.
            ## @return a void
            ## 
            def install_time_settings=(value)
                @install_time_settings = value
            end
            ## 
            ## Gets the notifications property value. Contains value for notification status.
            ## @return a win32_lob_app_notification
            ## 
            def notifications
                return @notifications
            end
            ## 
            ## Sets the notifications property value. Contains value for notification status.
            ## @param value Value to set for the notifications property.
            ## @return a void
            ## 
            def notifications=(value)
                @notifications = value
            end
            ## 
            ## Gets the restartSettings property value. The reboot settings to apply for this app assignment.
            ## @return a win32_lob_app_restart_settings
            ## 
            def restart_settings
                return @restart_settings
            end
            ## 
            ## Sets the restartSettings property value. The reboot settings to apply for this app assignment.
            ## @param value Value to set for the restart_settings property.
            ## @return a void
            ## 
            def restart_settings=(value)
                @restart_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("deliveryOptimizationPriority", @delivery_optimization_priority)
                writer.write_object_value("installTimeSettings", @install_time_settings)
                writer.write_enum_value("notifications", @notifications)
                writer.write_object_value("restartSettings", @restart_settings)
            end
        end
    end
end
