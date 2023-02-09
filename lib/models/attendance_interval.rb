require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttendanceInterval
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
            @duration_in_seconds
            ## 
            # The time the attendee joined in UTC.
            @join_date_time
            ## 
            # The time the attendee left in UTC.
            @leave_date_time
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new attendanceInterval and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attendance_interval
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttendanceInterval.new
            end
            ## 
            ## Gets the durationInSeconds property value. Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
            ## @return a integer
            ## 
            def duration_in_seconds
                return @duration_in_seconds
            end
            ## 
            ## Sets the durationInSeconds property value. Duration of the meeting interval in seconds; that is, the difference between joinDateTime and leaveDateTime.
            ## @param value Value to set for the duration_in_seconds property.
            ## @return a void
            ## 
            def duration_in_seconds=(value)
                @duration_in_seconds = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "durationInSeconds" => lambda {|n| @duration_in_seconds = n.get_number_value() },
                    "joinDateTime" => lambda {|n| @join_date_time = n.get_date_time_value() },
                    "leaveDateTime" => lambda {|n| @leave_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the joinDateTime property value. The time the attendee joined in UTC.
            ## @return a date_time
            ## 
            def join_date_time
                return @join_date_time
            end
            ## 
            ## Sets the joinDateTime property value. The time the attendee joined in UTC.
            ## @param value Value to set for the join_date_time property.
            ## @return a void
            ## 
            def join_date_time=(value)
                @join_date_time = value
            end
            ## 
            ## Gets the leaveDateTime property value. The time the attendee left in UTC.
            ## @return a date_time
            ## 
            def leave_date_time
                return @leave_date_time
            end
            ## 
            ## Sets the leaveDateTime property value. The time the attendee left in UTC.
            ## @param value Value to set for the leave_date_time property.
            ## @return a void
            ## 
            def leave_date_time=(value)
                @leave_date_time = value
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
                writer.write_number_value("durationInSeconds", @duration_in_seconds)
                writer.write_date_time_value("joinDateTime", @join_date_time)
                writer.write_date_time_value("leaveDateTime", @leave_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
