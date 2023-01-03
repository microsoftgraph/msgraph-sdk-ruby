require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class TimeOffItem < MicrosoftGraph::Models::ScheduleEntity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # ID of the timeOffReason for this timeOffItem. Required.
        @time_off_reason_id
        ## 
        ## Instantiates a new TimeOffItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a time_off_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TimeOffItem.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "timeOffReasonId" => lambda {|n| @time_off_reason_id = n.get_string_value() },
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
            writer.write_string_value("timeOffReasonId", @time_off_reason_id)
        end
        ## 
        ## Gets the timeOffReasonId property value. ID of the timeOffReason for this timeOffItem. Required.
        ## @return a string
        ## 
        def time_off_reason_id
            return @time_off_reason_id
        end
        ## 
        ## Sets the timeOffReasonId property value. ID of the timeOffReason for this timeOffItem. Required.
        ## @param value Value to set for the timeOffReasonId property.
        ## @return a void
        ## 
        def time_off_reason_id=(value)
            @time_off_reason_id = value
        end
    end
end
