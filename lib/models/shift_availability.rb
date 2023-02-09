require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ShiftAvailability
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the pattern for recurrence
            @recurrence
            ## 
            # The time slot(s) preferred by the user.
            @time_slots
            ## 
            # Specifies the time zone for the indicated time.
            @time_zone
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new shiftAvailability and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shift_availability
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ShiftAvailability.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recurrence" => lambda {|n| @recurrence = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PatternedRecurrence.create_from_discriminator_value(pn) }) },
                    "timeSlots" => lambda {|n| @time_slots = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TimeRange.create_from_discriminator_value(pn) }) },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the recurrence property value. Specifies the pattern for recurrence
            ## @return a patterned_recurrence
            ## 
            def recurrence
                return @recurrence
            end
            ## 
            ## Sets the recurrence property value. Specifies the pattern for recurrence
            ## @param value Value to set for the recurrence property.
            ## @return a void
            ## 
            def recurrence=(value)
                @recurrence = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("recurrence", @recurrence)
                writer.write_collection_of_object_values("timeSlots", @time_slots)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeSlots property value. The time slot(s) preferred by the user.
            ## @return a time_range
            ## 
            def time_slots
                return @time_slots
            end
            ## 
            ## Sets the timeSlots property value. The time slot(s) preferred by the user.
            ## @param value Value to set for the time_slots property.
            ## @return a void
            ## 
            def time_slots=(value)
                @time_slots = value
            end
            ## 
            ## Gets the timeZone property value. Specifies the time zone for the indicated time.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. Specifies the time zone for the indicated time.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
        end
    end
end
