require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcAuditEvent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The friendly name of the audit activity.
            @activity
            ## 
            # The date time in UTC when the activity was performed. Read-only.
            @activity_date_time
            ## 
            # The activityOperationType property
            @activity_operation_type
            ## 
            # The activityResult property
            @activity_result
            ## 
            # The type of activity that was performed. Read-only.
            @activity_type
            ## 
            # The actor property
            @actor
            ## 
            # The category property
            @category
            ## 
            # The component name for the audit event. Read-only.
            @component_name
            ## 
            # The client request ID that is used to correlate activity within the system. Read-only.
            @correlation_id
            ## 
            # The display name for the audit event. Read-only.
            @display_name
            ## 
            # The list of cloudPcAuditResource objects. Read-only.
            @resources
            ## 
            ## Gets the activity property value. The friendly name of the audit activity.
            ## @return a string
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. The friendly name of the audit activity.
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Gets the activityDateTime property value. The date time in UTC when the activity was performed. Read-only.
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. The date time in UTC when the activity was performed. Read-only.
            ## @param value Value to set for the activityDateTime property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the activityOperationType property value. The activityOperationType property
            ## @return a cloud_pc_audit_activity_operation_type
            ## 
            def activity_operation_type
                return @activity_operation_type
            end
            ## 
            ## Sets the activityOperationType property value. The activityOperationType property
            ## @param value Value to set for the activityOperationType property.
            ## @return a void
            ## 
            def activity_operation_type=(value)
                @activity_operation_type = value
            end
            ## 
            ## Gets the activityResult property value. The activityResult property
            ## @return a cloud_pc_audit_activity_result
            ## 
            def activity_result
                return @activity_result
            end
            ## 
            ## Sets the activityResult property value. The activityResult property
            ## @param value Value to set for the activityResult property.
            ## @return a void
            ## 
            def activity_result=(value)
                @activity_result = value
            end
            ## 
            ## Gets the activityType property value. The type of activity that was performed. Read-only.
            ## @return a string
            ## 
            def activity_type
                return @activity_type
            end
            ## 
            ## Sets the activityType property value. The type of activity that was performed. Read-only.
            ## @param value Value to set for the activityType property.
            ## @return a void
            ## 
            def activity_type=(value)
                @activity_type = value
            end
            ## 
            ## Gets the actor property value. The actor property
            ## @return a cloud_pc_audit_actor
            ## 
            def actor
                return @actor
            end
            ## 
            ## Sets the actor property value. The actor property
            ## @param value Value to set for the actor property.
            ## @return a void
            ## 
            def actor=(value)
                @actor = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a cloud_pc_audit_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Gets the componentName property value. The component name for the audit event. Read-only.
            ## @return a string
            ## 
            def component_name
                return @component_name
            end
            ## 
            ## Sets the componentName property value. The component name for the audit event. Read-only.
            ## @param value Value to set for the componentName property.
            ## @return a void
            ## 
            def component_name=(value)
                @component_name = value
            end
            ## 
            ## Instantiates a new CloudPcAuditEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. The client request ID that is used to correlate activity within the system. Read-only.
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The client request ID that is used to correlate activity within the system. Read-only.
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_audit_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcAuditEvent.new
            end
            ## 
            ## Gets the displayName property value. The display name for the audit event. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the audit event. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activity" => lambda {|n| @activity = n.get_string_value() },
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "activityOperationType" => lambda {|n| @activity_operation_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcAuditActivityOperationType) },
                    "activityResult" => lambda {|n| @activity_result = n.get_enum_value(MicrosoftGraph::Models::CloudPcAuditActivityResult) },
                    "activityType" => lambda {|n| @activity_type = n.get_string_value() },
                    "actor" => lambda {|n| @actor = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CloudPcAuditActor.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraph::Models::CloudPcAuditCategory) },
                    "componentName" => lambda {|n| @component_name = n.get_string_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcAuditResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resources property value. The list of cloudPcAuditResource objects. Read-only.
            ## @return a cloud_pc_audit_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The list of cloudPcAuditResource objects. Read-only.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("activity", @activity)
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_enum_value("activityOperationType", @activity_operation_type)
                writer.write_enum_value("activityResult", @activity_result)
                writer.write_string_value("activityType", @activity_type)
                writer.write_object_value("actor", @actor)
                writer.write_enum_value("category", @category)
                writer.write_string_value("componentName", @component_name)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("resources", @resources)
            end
        end
    end
end
