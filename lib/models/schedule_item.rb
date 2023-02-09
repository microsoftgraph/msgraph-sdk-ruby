require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ScheduleItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date, time, and time zone that the corresponding event ends.
            @end_escaped
            ## 
            # The sensitivity of the corresponding event. True if the event is marked private, false otherwise. Optional.
            @is_private
            ## 
            # The location where the corresponding event is held or attended from. Optional.
            @location
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The date, time, and time zone that the corresponding event starts.
            @start
            ## 
            # The availability status of the user or resource during the corresponding event. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            @status
            ## 
            # The corresponding event's subject line. Optional.
            @subject
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
            ## Instantiates a new scheduleItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a schedule_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ScheduleItem.new
            end
            ## 
            ## Gets the end property value. The date, time, and time zone that the corresponding event ends.
            ## @return a date_time_time_zone
            ## 
            def end_escaped
                return @end_escaped
            end
            ## 
            ## Sets the end property value. The date, time, and time zone that the corresponding event ends.
            ## @param value Value to set for the end property.
            ## @return a void
            ## 
            def end_escaped=(value)
                @end_escaped = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "end" => lambda {|n| @end_escaped = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "isPrivate" => lambda {|n| @is_private = n.get_boolean_value() },
                    "location" => lambda {|n| @location = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "start" => lambda {|n| @start = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::FreeBusyStatus) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isPrivate property value. The sensitivity of the corresponding event. True if the event is marked private, false otherwise. Optional.
            ## @return a boolean
            ## 
            def is_private
                return @is_private
            end
            ## 
            ## Sets the isPrivate property value. The sensitivity of the corresponding event. True if the event is marked private, false otherwise. Optional.
            ## @param value Value to set for the is_private property.
            ## @return a void
            ## 
            def is_private=(value)
                @is_private = value
            end
            ## 
            ## Gets the location property value. The location where the corresponding event is held or attended from. Optional.
            ## @return a string
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The location where the corresponding event is held or attended from. Optional.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("end", @end_escaped)
                writer.write_boolean_value("isPrivate", @is_private)
                writer.write_string_value("location", @location)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("start", @start)
                writer.write_enum_value("status", @status)
                writer.write_string_value("subject", @subject)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the start property value. The date, time, and time zone that the corresponding event starts.
            ## @return a date_time_time_zone
            ## 
            def start
                return @start
            end
            ## 
            ## Sets the start property value. The date, time, and time zone that the corresponding event starts.
            ## @param value Value to set for the start property.
            ## @return a void
            ## 
            def start=(value)
                @start = value
            end
            ## 
            ## Gets the status property value. The availability status of the user or resource during the corresponding event. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            ## @return a free_busy_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The availability status of the user or resource during the corresponding event. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the subject property value. The corresponding event's subject line. Optional.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The corresponding event's subject line. Optional.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end
