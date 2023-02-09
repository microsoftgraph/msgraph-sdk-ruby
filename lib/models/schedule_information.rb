require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ScheduleInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents a merged view of availability of all the items in scheduleItems. The view consists of time slots. Availability during each time slot is indicated with: 0= free, 1= tentative, 2= busy, 3= out of office, 4= working elsewhere.
            @availability_view
            ## 
            # Error information from attempting to get the availability of the user, distribution list, or resource.
            @error
            ## 
            # The OdataType property
            @odata_type
            ## 
            # An SMTP address of the user, distribution list, or resource, identifying an instance of scheduleInformation.
            @schedule_id
            ## 
            # Contains the items that describe the availability of the user or resource.
            @schedule_items
            ## 
            # The days of the week and hours in a specific time zone that the user works. These are set as part of the user's mailboxSettings.
            @working_hours
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
            ## Gets the availabilityView property value. Represents a merged view of availability of all the items in scheduleItems. The view consists of time slots. Availability during each time slot is indicated with: 0= free, 1= tentative, 2= busy, 3= out of office, 4= working elsewhere.
            ## @return a string
            ## 
            def availability_view
                return @availability_view
            end
            ## 
            ## Sets the availabilityView property value. Represents a merged view of availability of all the items in scheduleItems. The view consists of time slots. Availability during each time slot is indicated with: 0= free, 1= tentative, 2= busy, 3= out of office, 4= working elsewhere.
            ## @param value Value to set for the availability_view property.
            ## @return a void
            ## 
            def availability_view=(value)
                @availability_view = value
            end
            ## 
            ## Instantiates a new scheduleInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a schedule_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ScheduleInformation.new
            end
            ## 
            ## Gets the error property value. Error information from attempting to get the availability of the user, distribution list, or resource.
            ## @return a free_busy_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Error information from attempting to get the availability of the user, distribution list, or resource.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "availabilityView" => lambda {|n| @availability_view = n.get_string_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FreeBusyError.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scheduleId" => lambda {|n| @schedule_id = n.get_string_value() },
                    "scheduleItems" => lambda {|n| @schedule_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ScheduleItem.create_from_discriminator_value(pn) }) },
                    "workingHours" => lambda {|n| @working_hours = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkingHours.create_from_discriminator_value(pn) }) },
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
            ## Gets the scheduleId property value. An SMTP address of the user, distribution list, or resource, identifying an instance of scheduleInformation.
            ## @return a string
            ## 
            def schedule_id
                return @schedule_id
            end
            ## 
            ## Sets the scheduleId property value. An SMTP address of the user, distribution list, or resource, identifying an instance of scheduleInformation.
            ## @param value Value to set for the schedule_id property.
            ## @return a void
            ## 
            def schedule_id=(value)
                @schedule_id = value
            end
            ## 
            ## Gets the scheduleItems property value. Contains the items that describe the availability of the user or resource.
            ## @return a schedule_item
            ## 
            def schedule_items
                return @schedule_items
            end
            ## 
            ## Sets the scheduleItems property value. Contains the items that describe the availability of the user or resource.
            ## @param value Value to set for the schedule_items property.
            ## @return a void
            ## 
            def schedule_items=(value)
                @schedule_items = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("availabilityView", @availability_view)
                writer.write_object_value("error", @error)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("scheduleId", @schedule_id)
                writer.write_collection_of_object_values("scheduleItems", @schedule_items)
                writer.write_object_value("workingHours", @working_hours)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the workingHours property value. The days of the week and hours in a specific time zone that the user works. These are set as part of the user's mailboxSettings.
            ## @return a working_hours
            ## 
            def working_hours
                return @working_hours
            end
            ## 
            ## Sets the workingHours property value. The days of the week and hours in a specific time zone that the user works. These are set as part of the user's mailboxSettings.
            ## @param value Value to set for the working_hours property.
            ## @return a void
            ## 
            def working_hours=(value)
                @working_hours = value
            end
        end
    end
end
