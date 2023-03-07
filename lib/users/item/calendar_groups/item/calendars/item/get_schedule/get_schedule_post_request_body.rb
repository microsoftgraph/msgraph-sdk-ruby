require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/date_time_time_zone'
require_relative '../../../../../../users'
require_relative '../../../../../item'
require_relative '../../../../calendar_groups'
require_relative '../../../item'
require_relative '../../calendars'
require_relative '../item'
require_relative './get_schedule'

module MicrosoftGraph
    module Users
        module Item
            module CalendarGroups
                module Item
                    module Calendars
                        module Item
                            module GetSchedule
                                class GetSchedulePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The AvailabilityViewInterval property
                                    @availability_view_interval
                                    ## 
                                    # The EndTime property
                                    @end_time
                                    ## 
                                    # The Schedules property
                                    @schedules
                                    ## 
                                    # The StartTime property
                                    @start_time
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
                                    ## Gets the availabilityViewInterval property value. The AvailabilityViewInterval property
                                    ## @return a integer
                                    ## 
                                    def availability_view_interval
                                        return @availability_view_interval
                                    end
                                    ## 
                                    ## Sets the availabilityViewInterval property value. The AvailabilityViewInterval property
                                    ## @param value Value to set for the availability_view_interval property.
                                    ## @return a void
                                    ## 
                                    def availability_view_interval=(value)
                                        @availability_view_interval = value
                                    end
                                    ## 
                                    ## Instantiates a new getSchedulePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a get_schedule_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return GetSchedulePostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the endTime property value. The EndTime property
                                    ## @return a date_time_time_zone
                                    ## 
                                    def end_time
                                        return @end_time
                                    end
                                    ## 
                                    ## Sets the endTime property value. The EndTime property
                                    ## @param value Value to set for the end_time property.
                                    ## @return a void
                                    ## 
                                    def end_time=(value)
                                        @end_time = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "AvailabilityViewInterval" => lambda {|n| @availability_view_interval = n.get_number_value() },
                                            "EndTime" => lambda {|n| @end_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                                            "Schedules" => lambda {|n| @schedules = n.get_collection_of_primitive_values(String) },
                                            "StartTime" => lambda {|n| @start_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the schedules property value. The Schedules property
                                    ## @return a string
                                    ## 
                                    def schedules
                                        return @schedules
                                    end
                                    ## 
                                    ## Sets the schedules property value. The Schedules property
                                    ## @param value Value to set for the Schedules property.
                                    ## @return a void
                                    ## 
                                    def schedules=(value)
                                        @schedules = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_number_value("AvailabilityViewInterval", @availability_view_interval)
                                        writer.write_object_value("EndTime", @end_time)
                                        writer.write_collection_of_primitive_values("Schedules", @schedules)
                                        writer.write_object_value("StartTime", @start_time)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the startTime property value. The StartTime property
                                    ## @return a date_time_time_zone
                                    ## 
                                    def start_time
                                        return @start_time
                                    end
                                    ## 
                                    ## Sets the startTime property value. The StartTime property
                                    ## @param value Value to set for the start_time property.
                                    ## @return a void
                                    ## 
                                    def start_time=(value)
                                        @start_time = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
