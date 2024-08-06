require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedStorageQuota < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deleted property
            @deleted
            ## 
            # The manageWebUrl property
            @manage_web_url
            ## 
            # The remaining property
            @remaining
            ## 
            # The services property
            @services
            ## 
            # The state property
            @state
            ## 
            # The total property
            @total
            ## 
            # The used property
            @used
            ## 
            ## Instantiates a new UnifiedStorageQuota and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_storage_quota
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedStorageQuota.new
            end
            ## 
            ## Gets the deleted property value. The deleted property
            ## @return a int64
            ## 
            def deleted
                return @deleted
            end
            ## 
            ## Sets the deleted property value. The deleted property
            ## @param value Value to set for the deleted property.
            ## @return a void
            ## 
            def deleted=(value)
                @deleted = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deleted" => lambda {|n| @deleted = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "manageWebUrl" => lambda {|n| @manage_web_url = n.get_string_value() },
                    "remaining" => lambda {|n| @remaining = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceStorageQuotaBreakdown.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "total" => lambda {|n| @total = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "used" => lambda {|n| @used = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the manageWebUrl property value. The manageWebUrl property
            ## @return a string
            ## 
            def manage_web_url
                return @manage_web_url
            end
            ## 
            ## Sets the manageWebUrl property value. The manageWebUrl property
            ## @param value Value to set for the manageWebUrl property.
            ## @return a void
            ## 
            def manage_web_url=(value)
                @manage_web_url = value
            end
            ## 
            ## Gets the remaining property value. The remaining property
            ## @return a int64
            ## 
            def remaining
                return @remaining
            end
            ## 
            ## Sets the remaining property value. The remaining property
            ## @param value Value to set for the remaining property.
            ## @return a void
            ## 
            def remaining=(value)
                @remaining = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("deleted", @deleted)
                writer.write_string_value("manageWebUrl", @manage_web_url)
                writer.write_object_value("remaining", @remaining)
                writer.write_collection_of_object_values("services", @services)
                writer.write_string_value("state", @state)
                writer.write_object_value("total", @total)
                writer.write_object_value("used", @used)
            end
            ## 
            ## Gets the services property value. The services property
            ## @return a service_storage_quota_breakdown
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. The services property
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the total property value. The total property
            ## @return a int64
            ## 
            def total
                return @total
            end
            ## 
            ## Sets the total property value. The total property
            ## @param value Value to set for the total property.
            ## @return a void
            ## 
            def total=(value)
                @total = value
            end
            ## 
            ## Gets the used property value. The used property
            ## @return a int64
            ## 
            def used
                return @used
            end
            ## 
            ## Sets the used property value. The used property
            ## @param value Value to set for the used property.
            ## @return a void
            ## 
            def used=(value)
                @used = value
            end
        end
    end
end
