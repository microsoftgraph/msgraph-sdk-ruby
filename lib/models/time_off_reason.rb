require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TimeOffReason < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the timeOffReason. Required.
            @display_name
            ## 
            # Supported icon types are: none, car, calendar, running, plane, firstAid, doctor, notWorking, clock, juryDuty, globe, cup, phone, weather, umbrella, piggyBank, dog, cake, trafficCone, pin, sunny. Required.
            @icon_type
            ## 
            # Indicates whether the timeOffReason can be used when creating new entities or updating existing ones. Required.
            @is_active
            ## 
            ## Instantiates a new TimeOffReason and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.timeOffReason"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a time_off_reason
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeOffReason.new
            end
            ## 
            ## Gets the displayName property value. The name of the timeOffReason. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the timeOffReason. Required.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "iconType" => lambda {|n| @icon_type = n.get_enum_value(MicrosoftGraph::Models::TimeOffReasonIconType) },
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the iconType property value. Supported icon types are: none, car, calendar, running, plane, firstAid, doctor, notWorking, clock, juryDuty, globe, cup, phone, weather, umbrella, piggyBank, dog, cake, trafficCone, pin, sunny. Required.
            ## @return a time_off_reason_icon_type
            ## 
            def icon_type
                return @icon_type
            end
            ## 
            ## Sets the iconType property value. Supported icon types are: none, car, calendar, running, plane, firstAid, doctor, notWorking, clock, juryDuty, globe, cup, phone, weather, umbrella, piggyBank, dog, cake, trafficCone, pin, sunny. Required.
            ## @param value Value to set for the icon_type property.
            ## @return a void
            ## 
            def icon_type=(value)
                @icon_type = value
            end
            ## 
            ## Gets the isActive property value. Indicates whether the timeOffReason can be used when creating new entities or updating existing ones. Required.
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. Indicates whether the timeOffReason can be used when creating new entities or updating existing ones. Required.
            ## @param value Value to set for the is_active property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
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
                writer.write_enum_value("iconType", @icon_type)
                writer.write_boolean_value("isActive", @is_active)
            end
        end
    end
end
