require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ShiftItem < MicrosoftGraph::Models::ScheduleEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An incremental part of a shift which can cover details of when and where an employee is during their shift. For example, an assignment or a scheduled break or lunch. Required.
            @activities
            ## 
            # The shift label of the shiftItem.
            @display_name
            ## 
            # The shift notes for the shiftItem.
            @notes
            ## 
            ## Gets the activities property value. An incremental part of a shift which can cover details of when and where an employee is during their shift. For example, an assignment or a scheduled break or lunch. Required.
            ## @return a shift_activity
            ## 
            def activities
                return @activities
            end
            ## 
            ## Sets the activities property value. An incremental part of a shift which can cover details of when and where an employee is during their shift. For example, an assignment or a scheduled break or lunch. Required.
            ## @param value Value to set for the activities property.
            ## @return a void
            ## 
            def activities=(value)
                @activities = value
            end
            ## 
            ## Instantiates a new ShiftItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shift_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.openShiftItem"
                            return OpenShiftItem.new
                    end
                end
                return ShiftItem.new
            end
            ## 
            ## Gets the displayName property value. The shift label of the shiftItem.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The shift label of the shiftItem.
            ## @param value Value to set for the display_name property.
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
                    "activities" => lambda {|n| @activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ShiftActivity.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                })
            end
            ## 
            ## Gets the notes property value. The shift notes for the shiftItem.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. The shift notes for the shiftItem.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("activities", @activities)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("notes", @notes)
            end
        end
    end
end
