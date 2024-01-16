require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessScheduleInstance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When the schedule instance ends. Required.
            @end_date_time
            ## 
            # When this instance starts. Required.
            @start_date_time
            ## 
            ## Instantiates a new privilegedAccessScheduleInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_schedule_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.privilegedAccessGroupAssignmentScheduleInstance"
                            return PrivilegedAccessGroupAssignmentScheduleInstance.new
                        when "#microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance"
                            return PrivilegedAccessGroupEligibilityScheduleInstance.new
                    end
                end
                return PrivilegedAccessScheduleInstance.new
            end
            ## 
            ## Gets the endDateTime property value. When the schedule instance ends. Required.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. When the schedule instance ends. Required.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
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
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_date_time_value("startDateTime", @start_date_time)
            end
            ## 
            ## Gets the startDateTime property value. When this instance starts. Required.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. When this instance starts. Required.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end
