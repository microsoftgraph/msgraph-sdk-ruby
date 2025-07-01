require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TimeCardEntry
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The clock-in event of the timeCard.
            @breaks
            ## 
            # The clock-out event of the timeCard.
            @clock_in_event
            ## 
            # The list of breaks associated with the timeCard.
            @clock_out_event
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the breaks property value. The clock-in event of the timeCard.
            ## @return a time_card_break
            ## 
            def breaks
                return @breaks
            end
            ## 
            ## Sets the breaks property value. The clock-in event of the timeCard.
            ## @param value Value to set for the breaks property.
            ## @return a void
            ## 
            def breaks=(value)
                @breaks = value
            end
            ## 
            ## Gets the clockInEvent property value. The clock-out event of the timeCard.
            ## @return a time_card_event
            ## 
            def clock_in_event
                return @clock_in_event
            end
            ## 
            ## Sets the clockInEvent property value. The clock-out event of the timeCard.
            ## @param value Value to set for the clockInEvent property.
            ## @return a void
            ## 
            def clock_in_event=(value)
                @clock_in_event = value
            end
            ## 
            ## Gets the clockOutEvent property value. The list of breaks associated with the timeCard.
            ## @return a time_card_event
            ## 
            def clock_out_event
                return @clock_out_event
            end
            ## 
            ## Sets the clockOutEvent property value. The list of breaks associated with the timeCard.
            ## @param value Value to set for the clockOutEvent property.
            ## @return a void
            ## 
            def clock_out_event=(value)
                @clock_out_event = value
            end
            ## 
            ## Instantiates a new TimeCardEntry and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a time_card_entry
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeCardEntry.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "breaks" => lambda {|n| @breaks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TimeCardBreak.create_from_discriminator_value(pn) }) },
                    "clockInEvent" => lambda {|n| @clock_in_event = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeCardEvent.create_from_discriminator_value(pn) }) },
                    "clockOutEvent" => lambda {|n| @clock_out_event = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeCardEvent.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("breaks", @breaks)
                writer.write_object_value("clockInEvent", @clock_in_event)
                writer.write_object_value("clockOutEvent", @clock_out_event)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
