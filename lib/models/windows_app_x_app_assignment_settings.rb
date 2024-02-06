require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties used when assigning a Windows AppX mobile app to a group.
        class WindowsAppXAppAssignmentSettings < MicrosoftGraph::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, indicates that device execution context will be used for the AppX mobile app. When FALSE, indicates that user context will be used for the AppX mobile app. By default, this property is set to FALSE. Once this property has been set to TRUE it cannot be changed.
            @use_device_context
            ## 
            ## Instantiates a new windowsAppXAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsAppXAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_app_x_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAppXAppAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "useDeviceContext" => lambda {|n| @use_device_context = n.get_boolean_value() },
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
                writer.write_boolean_value("useDeviceContext", @use_device_context) unless @use_device_context.nil?
            end
            ## 
            ## Gets the useDeviceContext property value. When TRUE, indicates that device execution context will be used for the AppX mobile app. When FALSE, indicates that user context will be used for the AppX mobile app. By default, this property is set to FALSE. Once this property has been set to TRUE it cannot be changed.
            ## @return a boolean
            ## 
            def use_device_context
                return @use_device_context
            end
            ## 
            ## Sets the useDeviceContext property value. When TRUE, indicates that device execution context will be used for the AppX mobile app. When FALSE, indicates that user context will be used for the AppX mobile app. By default, this property is set to FALSE. Once this property has been set to TRUE it cannot be changed.
            ## @param value Value to set for the useDeviceContext property.
            ## @return a void
            ## 
            def use_device_context=(value)
                @use_device_context = value
            end
        end
    end
end
