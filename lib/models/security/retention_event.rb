require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class RetentionEvent < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The user who created the retentionEvent.
                @created_by
                ## 
                # The date time when the retentionEvent was created.
                @created_date_time
                ## 
                # Optional information about the event.
                @description
                ## 
                # Name of the event.
                @display_name
                ## 
                # The eventPropagationResults property
                @event_propagation_results
                ## 
                # Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.
                @event_queries
                ## 
                # The eventStatus property
                @event_status
                ## 
                # Optional time when the event should be triggered.
                @event_trigger_date_time
                ## 
                # The user who last modified the retentionEvent.
                @last_modified_by
                ## 
                # The latest date time when the retentionEvent was modified.
                @last_modified_date_time
                ## 
                # Last time the status of the event was updated.
                @last_status_update_date_time
                ## 
                # Specifies the event that will start the retention period for labels that use this event type when an event is created.
                @retention_event_type
                ## 
                ## Instantiates a new retentionEvent and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdBy property value. The user who created the retentionEvent.
                ## @return a identity_set
                ## 
                def created_by
                    return @created_by
                end
                ## 
                ## Sets the createdBy property value. The user who created the retentionEvent.
                ## @param value Value to set for the createdBy property.
                ## @return a void
                ## 
                def created_by=(value)
                    @created_by = value
                end
                ## 
                ## Gets the createdDateTime property value. The date time when the retentionEvent was created.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date time when the retentionEvent was created.
                ## @param value Value to set for the createdDateTime property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a retention_event
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return RetentionEvent.new
                end
                ## 
                ## Gets the description property value. Optional information about the event.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Optional information about the event.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. Name of the event.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. Name of the event.
                ## @param value Value to set for the displayName property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the eventPropagationResults property value. The eventPropagationResults property
                ## @return a event_propagation_result
                ## 
                def event_propagation_results
                    return @event_propagation_results
                end
                ## 
                ## Sets the eventPropagationResults property value. The eventPropagationResults property
                ## @param value Value to set for the eventPropagationResults property.
                ## @return a void
                ## 
                def event_propagation_results=(value)
                    @event_propagation_results = value
                end
                ## 
                ## Gets the eventQueries property value. Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.
                ## @return a event_query
                ## 
                def event_queries
                    return @event_queries
                end
                ## 
                ## Sets the eventQueries property value. Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.
                ## @param value Value to set for the eventQueries property.
                ## @return a void
                ## 
                def event_queries=(value)
                    @event_queries = value
                end
                ## 
                ## Gets the eventStatus property value. The eventStatus property
                ## @return a retention_event_status
                ## 
                def event_status
                    return @event_status
                end
                ## 
                ## Sets the eventStatus property value. The eventStatus property
                ## @param value Value to set for the eventStatus property.
                ## @return a void
                ## 
                def event_status=(value)
                    @event_status = value
                end
                ## 
                ## Gets the eventTriggerDateTime property value. Optional time when the event should be triggered.
                ## @return a date_time
                ## 
                def event_trigger_date_time
                    return @event_trigger_date_time
                end
                ## 
                ## Sets the eventTriggerDateTime property value. Optional time when the event should be triggered.
                ## @param value Value to set for the eventTriggerDateTime property.
                ## @return a void
                ## 
                def event_trigger_date_time=(value)
                    @event_trigger_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "eventPropagationResults" => lambda {|n| @event_propagation_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EventPropagationResult.create_from_discriminator_value(pn) }) },
                        "eventQueries" => lambda {|n| @event_queries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EventQuery.create_from_discriminator_value(pn) }) },
                        "eventStatus" => lambda {|n| @event_status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::RetentionEventStatus.create_from_discriminator_value(pn) }) },
                        "eventTriggerDateTime" => lambda {|n| @event_trigger_date_time = n.get_date_time_value() },
                        "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "lastStatusUpdateDateTime" => lambda {|n| @last_status_update_date_time = n.get_date_time_value() },
                        "retentionEventType" => lambda {|n| @retention_event_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::RetentionEventType.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastModifiedBy property value. The user who last modified the retentionEvent.
                ## @return a identity_set
                ## 
                def last_modified_by
                    return @last_modified_by
                end
                ## 
                ## Sets the lastModifiedBy property value. The user who last modified the retentionEvent.
                ## @param value Value to set for the lastModifiedBy property.
                ## @return a void
                ## 
                def last_modified_by=(value)
                    @last_modified_by = value
                end
                ## 
                ## Gets the lastModifiedDateTime property value. The latest date time when the retentionEvent was modified.
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. The latest date time when the retentionEvent was modified.
                ## @param value Value to set for the lastModifiedDateTime property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Gets the lastStatusUpdateDateTime property value. Last time the status of the event was updated.
                ## @return a date_time
                ## 
                def last_status_update_date_time
                    return @last_status_update_date_time
                end
                ## 
                ## Sets the lastStatusUpdateDateTime property value. Last time the status of the event was updated.
                ## @param value Value to set for the lastStatusUpdateDateTime property.
                ## @return a void
                ## 
                def last_status_update_date_time=(value)
                    @last_status_update_date_time = value
                end
                ## 
                ## Gets the retentionEventType property value. Specifies the event that will start the retention period for labels that use this event type when an event is created.
                ## @return a retention_event_type
                ## 
                def retention_event_type
                    return @retention_event_type
                end
                ## 
                ## Sets the retentionEventType property value. Specifies the event that will start the retention period for labels that use this event type when an event is created.
                ## @param value Value to set for the retentionEventType property.
                ## @return a void
                ## 
                def retention_event_type=(value)
                    @retention_event_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("createdBy", @created_by)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_collection_of_object_values("eventPropagationResults", @event_propagation_results)
                    writer.write_collection_of_object_values("eventQueries", @event_queries)
                    writer.write_object_value("eventStatus", @event_status)
                    writer.write_date_time_value("eventTriggerDateTime", @event_trigger_date_time)
                    writer.write_object_value("lastModifiedBy", @last_modified_by)
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                    writer.write_date_time_value("lastStatusUpdateDateTime", @last_status_update_date_time)
                    writer.write_object_value("retentionEventType", @retention_event_type)
                end
            end
        end
    end
end
