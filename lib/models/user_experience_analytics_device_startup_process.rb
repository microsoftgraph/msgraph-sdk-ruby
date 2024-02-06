require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics device startup process details.
        class UserExperienceAnalyticsDeviceStartupProcess < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            @managed_device_id
            ## 
            # The name of the process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.
            @process_name
            ## 
            # The product name of the process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.
            @product_name
            ## 
            # The publisher of the process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.
            @publisher
            ## 
            # The impact of startup process on device boot time in milliseconds. Supports: $select, $OrderBy. Read-only.
            @startup_impact_in_ms
            ## 
            ## Instantiates a new userExperienceAnalyticsDeviceStartupProcess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_startup_process
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDeviceStartupProcess.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "startupImpactInMs" => lambda {|n| @startup_impact_in_ms = n.get_number_value() },
                })
            end
            ## 
            ## Gets the managedDeviceId property value. The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. The Intune device id of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the managedDeviceId property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the processName property value. The name of the process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def process_name
                return @process_name
            end
            ## 
            ## Sets the processName property value. The name of the process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the processName property.
            ## @return a void
            ## 
            def process_name=(value)
                @process_name = value
            end
            ## 
            ## Gets the productName property value. The product name of the process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The product name of the process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the productName property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the publisher property value. The publisher of the process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The publisher of the process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("managedDeviceId", @managed_device_id) unless @managed_device_id.nil?
                writer.write_string_value("processName", @process_name) unless @process_name.nil?
                writer.write_string_value("productName", @product_name) unless @product_name.nil?
                writer.write_string_value("publisher", @publisher) unless @publisher.nil?
                writer.write_number_value("startupImpactInMs", @startup_impact_in_ms) unless @startup_impact_in_ms.nil?
            end
            ## 
            ## Gets the startupImpactInMs property value. The impact of startup process on device boot time in milliseconds. Supports: $select, $OrderBy. Read-only.
            ## @return a integer
            ## 
            def startup_impact_in_ms
                return @startup_impact_in_ms
            end
            ## 
            ## Sets the startupImpactInMs property value. The impact of startup process on device boot time in milliseconds. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the startupImpactInMs property.
            ## @return a void
            ## 
            def startup_impact_in_ms=(value)
                @startup_impact_in_ms = value
            end
        end
    end
end
