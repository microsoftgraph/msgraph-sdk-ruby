require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MeetingAttendanceReport < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of attendance records of an attendance report. Read-only.
            @attendance_records
            ## 
            # UTC time when the meeting ended. Read-only.
            @meeting_end_date_time
            ## 
            # UTC time when the meeting started. Read-only.
            @meeting_start_date_time
            ## 
            # Total number of participants. Read-only.
            @total_participant_count
            ## 
            ## Gets the attendanceRecords property value. List of attendance records of an attendance report. Read-only.
            ## @return a attendance_record
            ## 
            def attendance_records
                return @attendance_records
            end
            ## 
            ## Sets the attendanceRecords property value. List of attendance records of an attendance report. Read-only.
            ## @param value Value to set for the attendance_records property.
            ## @return a void
            ## 
            def attendance_records=(value)
                @attendance_records = value
            end
            ## 
            ## Instantiates a new meetingAttendanceReport and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_attendance_report
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingAttendanceReport.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attendanceRecords" => lambda {|n| @attendance_records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttendanceRecord.create_from_discriminator_value(pn) }) },
                    "meetingEndDateTime" => lambda {|n| @meeting_end_date_time = n.get_date_time_value() },
                    "meetingStartDateTime" => lambda {|n| @meeting_start_date_time = n.get_date_time_value() },
                    "totalParticipantCount" => lambda {|n| @total_participant_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the meetingEndDateTime property value. UTC time when the meeting ended. Read-only.
            ## @return a date_time
            ## 
            def meeting_end_date_time
                return @meeting_end_date_time
            end
            ## 
            ## Sets the meetingEndDateTime property value. UTC time when the meeting ended. Read-only.
            ## @param value Value to set for the meeting_end_date_time property.
            ## @return a void
            ## 
            def meeting_end_date_time=(value)
                @meeting_end_date_time = value
            end
            ## 
            ## Gets the meetingStartDateTime property value. UTC time when the meeting started. Read-only.
            ## @return a date_time
            ## 
            def meeting_start_date_time
                return @meeting_start_date_time
            end
            ## 
            ## Sets the meetingStartDateTime property value. UTC time when the meeting started. Read-only.
            ## @param value Value to set for the meeting_start_date_time property.
            ## @return a void
            ## 
            def meeting_start_date_time=(value)
                @meeting_start_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("attendanceRecords", @attendance_records)
                writer.write_date_time_value("meetingEndDateTime", @meeting_end_date_time)
                writer.write_date_time_value("meetingStartDateTime", @meeting_start_date_time)
                writer.write_number_value("totalParticipantCount", @total_participant_count)
            end
            ## 
            ## Gets the totalParticipantCount property value. Total number of participants. Read-only.
            ## @return a integer
            ## 
            def total_participant_count
                return @total_participant_count
            end
            ## 
            ## Sets the totalParticipantCount property value. Total number of participants. Read-only.
            ## @param value Value to set for the total_participant_count property.
            ## @return a void
            ## 
            def total_participant_count=(value)
                @total_participant_count = value
            end
        end
    end
end
