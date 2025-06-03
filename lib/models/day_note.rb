require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DayNote < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date of the day note.
            @day_note_date
            ## 
            # The draft version of this day note that is viewable by managers. Only contentType text is supported.
            @draft_day_note
            ## 
            # The shared version of this day note that is viewable by both employees and managers. Only contentType text is supported.
            @shared_day_note
            ## 
            ## Instantiates a new DayNote and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.dayNote"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a day_note
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DayNote.new
            end
            ## 
            ## Gets the dayNoteDate property value. The date of the day note.
            ## @return a date
            ## 
            def day_note_date
                return @day_note_date
            end
            ## 
            ## Sets the dayNoteDate property value. The date of the day note.
            ## @param value Value to set for the dayNoteDate property.
            ## @return a void
            ## 
            def day_note_date=(value)
                @day_note_date = value
            end
            ## 
            ## Gets the draftDayNote property value. The draft version of this day note that is viewable by managers. Only contentType text is supported.
            ## @return a item_body
            ## 
            def draft_day_note
                return @draft_day_note
            end
            ## 
            ## Sets the draftDayNote property value. The draft version of this day note that is viewable by managers. Only contentType text is supported.
            ## @param value Value to set for the draftDayNote property.
            ## @return a void
            ## 
            def draft_day_note=(value)
                @draft_day_note = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "dayNoteDate" => lambda {|n| @day_note_date = n.get_date_value() },
                    "draftDayNote" => lambda {|n| @draft_day_note = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "sharedDayNote" => lambda {|n| @shared_day_note = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
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
                writer.write_date_value("dayNoteDate", @day_note_date)
                writer.write_object_value("draftDayNote", @draft_day_note)
                writer.write_object_value("sharedDayNote", @shared_day_note)
            end
            ## 
            ## Gets the sharedDayNote property value. The shared version of this day note that is viewable by both employees and managers. Only contentType text is supported.
            ## @return a item_body
            ## 
            def shared_day_note
                return @shared_day_note
            end
            ## 
            ## Sets the sharedDayNote property value. The shared version of this day note that is viewable by both employees and managers. Only contentType text is supported.
            ## @param value Value to set for the sharedDayNote property.
            ## @return a void
            ## 
            def shared_day_note=(value)
                @shared_day_note = value
            end
        end
    end
end
