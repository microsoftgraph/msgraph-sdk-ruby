require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics device startup process performance.
        class UserExperienceAnalyticsDeviceStartupProcessPerformance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The count of devices which initiated this process on startup. Supports: $filter, $select, $OrderBy. Read-only.
            @device_count
            ## 
            # The median impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.
            @median_impact_in_ms
            ## 
            # The name of the startup process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.
            @process_name
            ## 
            # The product name of the startup process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.
            @product_name
            ## 
            # The publisher of the startup process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.
            @publisher
            ## 
            # The total impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.
            @total_impact_in_ms
            ## 
            ## Instantiates a new UserExperienceAnalyticsDeviceStartupProcessPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_device_startup_process_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsDeviceStartupProcessPerformance.new
            end
            ## 
            ## Gets the deviceCount property value. The count of devices which initiated this process on startup. Supports: $filter, $select, $OrderBy. Read-only.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. The count of devices which initiated this process on startup. Supports: $filter, $select, $OrderBy. Read-only.
            ## @param value Value to set for the deviceCount property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "medianImpactInMs" => lambda {|n| @median_impact_in_ms = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "totalImpactInMs" => lambda {|n| @total_impact_in_ms = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the medianImpactInMs property value. The median impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.
            ## @return a int64
            ## 
            def median_impact_in_ms
                return @median_impact_in_ms
            end
            ## 
            ## Sets the medianImpactInMs property value. The median impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.
            ## @param value Value to set for the medianImpactInMs property.
            ## @return a void
            ## 
            def median_impact_in_ms=(value)
                @median_impact_in_ms = value
            end
            ## 
            ## Gets the processName property value. The name of the startup process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def process_name
                return @process_name
            end
            ## 
            ## Sets the processName property value. The name of the startup process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the processName property.
            ## @return a void
            ## 
            def process_name=(value)
                @process_name = value
            end
            ## 
            ## Gets the productName property value. The product name of the startup process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The product name of the startup process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the productName property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the publisher property value. The publisher of the startup process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The publisher of the startup process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.
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
                writer.write_object_value("deviceCount", @device_count)
                writer.write_object_value("medianImpactInMs", @median_impact_in_ms)
                writer.write_string_value("processName", @process_name)
                writer.write_string_value("productName", @product_name)
                writer.write_string_value("publisher", @publisher)
                writer.write_object_value("totalImpactInMs", @total_impact_in_ms)
            end
            ## 
            ## Gets the totalImpactInMs property value. The total impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.
            ## @return a int64
            ## 
            def total_impact_in_ms
                return @total_impact_in_ms
            end
            ## 
            ## Sets the totalImpactInMs property value. The total impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.
            ## @param value Value to set for the totalImpactInMs property.
            ## @return a void
            ## 
            def total_impact_in_ms=(value)
                @total_impact_in_ms = value
            end
        end
    end
end
