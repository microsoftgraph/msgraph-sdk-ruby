require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecycleBinItem < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time when the item was deleted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @deleted_date_time
            ## 
            # Relative URL of the list or folder that originally contained the item.
            @deleted_from_location
            ## 
            # Size of the item in bytes.
            @size
            ## 
            ## Instantiates a new RecycleBinItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.recycleBinItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a recycle_bin_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecycleBinItem.new
            end
            ## 
            ## Gets the deletedDateTime property value. Date and time when the item was deleted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def deleted_date_time
                return @deleted_date_time
            end
            ## 
            ## Sets the deletedDateTime property value. Date and time when the item was deleted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the deletedDateTime property.
            ## @return a void
            ## 
            def deleted_date_time=(value)
                @deleted_date_time = value
            end
            ## 
            ## Gets the deletedFromLocation property value. Relative URL of the list or folder that originally contained the item.
            ## @return a string
            ## 
            def deleted_from_location
                return @deleted_from_location
            end
            ## 
            ## Sets the deletedFromLocation property value. Relative URL of the list or folder that originally contained the item.
            ## @param value Value to set for the deletedFromLocation property.
            ## @return a void
            ## 
            def deleted_from_location=(value)
                @deleted_from_location = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
                    "deletedFromLocation" => lambda {|n| @deleted_from_location = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_date_time_value("deletedDateTime", @deleted_date_time)
                writer.write_string_value("deletedFromLocation", @deleted_from_location)
                writer.write_object_value("size", @size)
            end
            ## 
            ## Gets the size property value. Size of the item in bytes.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. Size of the item in bytes.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
        end
    end
end
