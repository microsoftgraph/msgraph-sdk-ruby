require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TimeCardEvent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The time the entry is recorded.
            @date_time
            ## 
            # Indicates whether this action happens at an approved location.
            @is_at_approved_location
            ## 
            # Notes about the timeCardEvent.
            @notes
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
            ## Instantiates a new TimeCardEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a time_card_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeCardEvent.new
            end
            ## 
            ## Gets the dateTime property value. The time the entry is recorded.
            ## @return a date_time
            ## 
            def date_time
                return @date_time
            end
            ## 
            ## Sets the dateTime property value. The time the entry is recorded.
            ## @param value Value to set for the dateTime property.
            ## @return a void
            ## 
            def date_time=(value)
                @date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dateTime" => lambda {|n| @date_time = n.get_date_time_value() },
                    "isAtApprovedLocation" => lambda {|n| @is_at_approved_location = n.get_boolean_value() },
                    "notes" => lambda {|n| @notes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAtApprovedLocation property value. Indicates whether this action happens at an approved location.
            ## @return a boolean
            ## 
            def is_at_approved_location
                return @is_at_approved_location
            end
            ## 
            ## Sets the isAtApprovedLocation property value. Indicates whether this action happens at an approved location.
            ## @param value Value to set for the isAtApprovedLocation property.
            ## @return a void
            ## 
            def is_at_approved_location=(value)
                @is_at_approved_location = value
            end
            ## 
            ## Gets the notes property value. Notes about the timeCardEvent.
            ## @return a item_body
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes about the timeCardEvent.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
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
                writer.write_date_time_value("dateTime", @date_time)
                writer.write_boolean_value("isAtApprovedLocation", @is_at_approved_location)
                writer.write_object_value("notes", @notes)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
