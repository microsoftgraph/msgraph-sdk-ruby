require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Event representing an general failure.
        class DeviceManagementTroubleshootingEvent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Id used for tracing the failure in the service.
            @correlation_id
            ## 
            # Time when the event occurred .
            @event_date_time
            ## 
            ## Instantiates a new deviceManagementTroubleshootingEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. Id used for tracing the failure in the service.
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. Id used for tracing the failure in the service.
            ## @param value Value to set for the correlation_id property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_troubleshooting_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.enrollmentTroubleshootingEvent"
                            return EnrollmentTroubleshootingEvent.new
                    end
                end
                return DeviceManagementTroubleshootingEvent.new
            end
            ## 
            ## Gets the eventDateTime property value. Time when the event occurred .
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. Time when the event occurred .
            ## @param value Value to set for the event_date_time property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
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
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("eventDateTime", @event_date_time)
            end
        end
    end
end
