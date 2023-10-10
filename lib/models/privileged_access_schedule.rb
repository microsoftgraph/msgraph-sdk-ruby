require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrivilegedAccessSchedule < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The createdUsing property
            @created_using
            ## 
            # The modifiedDateTime property
            @modified_date_time
            ## 
            # The scheduleInfo property
            @schedule_info
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new privilegedAccessSchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Gets the createdUsing property value. The createdUsing property
            ## @return a string
            ## 
            def created_using
                return @created_using
            end
            ## 
            ## Sets the createdUsing property value. The createdUsing property
            ## @param value Value to set for the createdUsing property.
            ## @return a void
            ## 
            def created_using=(value)
                @created_using = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.privilegedAccessGroupAssignmentSchedule"
                            return PrivilegedAccessGroupAssignmentSchedule.new
                        when "#microsoft.graph.privilegedAccessGroupEligibilitySchedule"
                            return PrivilegedAccessGroupEligibilitySchedule.new
                    end
                end
                return PrivilegedAccessSchedule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "createdUsing" => lambda {|n| @created_using = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "scheduleInfo" => lambda {|n| @schedule_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the modifiedDateTime property value. The modifiedDateTime property
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The modifiedDateTime property
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the scheduleInfo property value. The scheduleInfo property
            ## @return a request_schedule
            ## 
            def schedule_info
                return @schedule_info
            end
            ## 
            ## Sets the scheduleInfo property value. The scheduleInfo property
            ## @param value Value to set for the scheduleInfo property.
            ## @return a void
            ## 
            def schedule_info=(value)
                @schedule_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("createdUsing", @created_using)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_object_value("scheduleInfo", @schedule_info)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
