require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OpenShiftItem < MicrosoftGraph::Models::ShiftItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Count of the number of slots for the given open shift.
            @open_slot_count
            ## 
            ## Instantiates a new OpenShiftItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.openShiftItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a open_shift_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenShiftItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "openSlotCount" => lambda {|n| @open_slot_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the openSlotCount property value. Count of the number of slots for the given open shift.
            ## @return a integer
            ## 
            def open_slot_count
                return @open_slot_count
            end
            ## 
            ## Sets the openSlotCount property value. Count of the number of slots for the given open shift.
            ## @param value Value to set for the open_slot_count property.
            ## @return a void
            ## 
            def open_slot_count=(value)
                @open_slot_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("openSlotCount", @open_slot_count)
            end
        end
    end
end
