require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudClipboardItem < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Set by the server. DateTime in UTC when the object was created on the server.
            @created_date_time
            ## 
            # Set by the server. DateTime in UTC when the object expires and after that the object is no longer available. The default and also maximum TTL is 12 hours after the creation, but it might change for performance optimization.
            @expiration_date_time
            ## 
            # Set by the server if not provided in the client's request. DateTime in UTC when the object was modified by the client.
            @last_modified_date_time
            ## 
            # A cloudClipboardItem can have multiple cloudClipboardItemPayload objects in the payloads. A window can place more than one clipboard object on the clipboard. Each one represents the same information in a different clipboard format.
            @payloads
            ## 
            ## Instantiates a new CloudClipboardItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Set by the server. DateTime in UTC when the object was created on the server.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Set by the server. DateTime in UTC when the object was created on the server.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_clipboard_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudClipboardItem.new
            end
            ## 
            ## Gets the expirationDateTime property value. Set by the server. DateTime in UTC when the object expires and after that the object is no longer available. The default and also maximum TTL is 12 hours after the creation, but it might change for performance optimization.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Set by the server. DateTime in UTC when the object expires and after that the object is no longer available. The default and also maximum TTL is 12 hours after the creation, but it might change for performance optimization.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "payloads" => lambda {|n| @payloads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudClipboardItemPayload.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Set by the server if not provided in the client's request. DateTime in UTC when the object was modified by the client.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Set by the server if not provided in the client's request. DateTime in UTC when the object was modified by the client.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the payloads property value. A cloudClipboardItem can have multiple cloudClipboardItemPayload objects in the payloads. A window can place more than one clipboard object on the clipboard. Each one represents the same information in a different clipboard format.
            ## @return a cloud_clipboard_item_payload
            ## 
            def payloads
                return @payloads
            end
            ## 
            ## Sets the payloads property value. A cloudClipboardItem can have multiple cloudClipboardItemPayload objects in the payloads. A window can place more than one clipboard object on the clipboard. Each one represents the same information in a different clipboard format.
            ## @param value Value to set for the payloads property.
            ## @return a void
            ## 
            def payloads=(value)
                @payloads = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("payloads", @payloads)
            end
        end
    end
end
