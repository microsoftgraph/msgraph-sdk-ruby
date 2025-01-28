require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class StorageQuotaBreakdown < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The manageWebUrl property
            @manage_web_url
            ## 
            # The used property
            @used
            ## 
            ## Instantiates a new StorageQuotaBreakdown and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a storage_quota_breakdown
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.serviceStorageQuotaBreakdown"
                            return ServiceStorageQuotaBreakdown.new
                    end
                end
                return StorageQuotaBreakdown.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "manageWebUrl" => lambda {|n| @manage_web_url = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("manageWebUrl", @manage_web_url)
                writer.write_object_value("used", @used)
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
