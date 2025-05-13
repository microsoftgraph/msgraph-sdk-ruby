require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttendanceRecord < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of time periods between joining and leaving a meeting.
            @attendance_intervals
            ## 
            # Email address of the user associated with this attendance record.
            @email_address
            ## 
            # The external information for a virtualEventRegistration.
            @external_registration_information
            ## 
            # The identity of the user associated with this attendance record. The specific type is one of the following derived types of identity, depending on the user type: communicationsUserIdentity, azureCommunicationServicesUserIdentity.
            @identity
            ## 
            # Unique identifier of a virtualEventRegistration that is available to all participants registered for the virtualEventWebinar.
            @registration_id
            ## 
            # Role of the attendee. Possible values are: None, Attendee, Presenter, and Organizer.
            @role
            ## 
            # Total duration of the attendances in seconds.
            @total_attendance_in_seconds
            ## 
            ## Gets the attendanceIntervals property value. List of time periods between joining and leaving a meeting.
            ## @return a attendance_interval
            ## 
            def attendance_intervals
                return @attendance_intervals
            end
            ## 
            ## Sets the attendanceIntervals property value. List of time periods between joining and leaving a meeting.
            ## @param value Value to set for the attendanceIntervals property.
            ## @return a void
            ## 
            def attendance_intervals=(value)
                @attendance_intervals = value
            end
            ## 
            ## Instantiates a new AttendanceRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attendance_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttendanceRecord.new
            end
            ## 
            ## Gets the emailAddress property value. Email address of the user associated with this attendance record.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. Email address of the user associated with this attendance record.
            ## @param value Value to set for the emailAddress property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## Gets the externalRegistrationInformation property value. The external information for a virtualEventRegistration.
            ## @return a virtual_event_external_registration_information
            ## 
            def external_registration_information
                return @external_registration_information
            end
            ## 
            ## Sets the externalRegistrationInformation property value. The external information for a virtualEventRegistration.
            ## @param value Value to set for the externalRegistrationInformation property.
            ## @return a void
            ## 
            def external_registration_information=(value)
                @external_registration_information = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attendanceIntervals" => lambda {|n| @attendance_intervals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttendanceInterval.create_from_discriminator_value(pn) }) },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "externalRegistrationInformation" => lambda {|n| @external_registration_information = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VirtualEventExternalRegistrationInformation.create_from_discriminator_value(pn) }) },
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "registrationId" => lambda {|n| @registration_id = n.get_string_value() },
                    "role" => lambda {|n| @role = n.get_string_value() },
                    "totalAttendanceInSeconds" => lambda {|n| @total_attendance_in_seconds = n.get_number_value() },
                })
            end
            ## 
            ## Gets the identity property value. The identity of the user associated with this attendance record. The specific type is one of the following derived types of identity, depending on the user type: communicationsUserIdentity, azureCommunicationServicesUserIdentity.
            ## @return a identity
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. The identity of the user associated with this attendance record. The specific type is one of the following derived types of identity, depending on the user type: communicationsUserIdentity, azureCommunicationServicesUserIdentity.
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
            end
            ## 
            ## Gets the registrationId property value. Unique identifier of a virtualEventRegistration that is available to all participants registered for the virtualEventWebinar.
            ## @return a string
            ## 
            def registration_id
                return @registration_id
            end
            ## 
            ## Sets the registrationId property value. Unique identifier of a virtualEventRegistration that is available to all participants registered for the virtualEventWebinar.
            ## @param value Value to set for the registrationId property.
            ## @return a void
            ## 
            def registration_id=(value)
                @registration_id = value
            end
            ## 
            ## Gets the role property value. Role of the attendee. Possible values are: None, Attendee, Presenter, and Organizer.
            ## @return a string
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. Role of the attendee. Possible values are: None, Attendee, Presenter, and Organizer.
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("attendanceIntervals", @attendance_intervals)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_object_value("externalRegistrationInformation", @external_registration_information)
                writer.write_object_value("identity", @identity)
                writer.write_string_value("registrationId", @registration_id)
                writer.write_string_value("role", @role)
                writer.write_number_value("totalAttendanceInSeconds", @total_attendance_in_seconds)
            end
            ## 
            ## Gets the totalAttendanceInSeconds property value. Total duration of the attendances in seconds.
            ## @return a integer
            ## 
            def total_attendance_in_seconds
                return @total_attendance_in_seconds
            end
            ## 
            ## Sets the totalAttendanceInSeconds property value. Total duration of the attendances in seconds.
            ## @param value Value to set for the totalAttendanceInSeconds property.
            ## @return a void
            ## 
            def total_attendance_in_seconds=(value)
                @total_attendance_in_seconds = value
            end
        end
    end
end
