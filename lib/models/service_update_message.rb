require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceUpdateMessage < MicrosoftGraph::Models::ServiceAnnouncementBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The expected deadline of the action for the message.
            @action_required_by_date_time
            ## 
            # A collection of serviceAnnouncementAttachments.
            @attachments
            ## 
            # The zip file that contains all attachments for a message.
            @attachments_archive
            ## 
            # The body property
            @body
            ## 
            # The category property
            @category
            ## 
            # Indicates whether the message has any attachment.
            @has_attachments
            ## 
            # Indicates whether the message describes a major update for the service.
            @is_major_change
            ## 
            # The affected services by the service message.
            @services
            ## 
            # The severity property
            @severity
            ## 
            # A collection of tags for the service message. Tags are provided by the service team/support team who post the message to tell whether this message contains privacy data, or whether this message is for a service new feature update, and so on.
            @tags
            ## 
            # Represents user viewpoints data of the service message. This data includes message status such as whether the user has archived, read, or marked the message as favorite. This property is null when accessed with application permissions.
            @view_point
            ## 
            ## Gets the actionRequiredByDateTime property value. The expected deadline of the action for the message.
            ## @return a date_time
            ## 
            def action_required_by_date_time
                return @action_required_by_date_time
            end
            ## 
            ## Sets the actionRequiredByDateTime property value. The expected deadline of the action for the message.
            ## @param value Value to set for the action_required_by_date_time property.
            ## @return a void
            ## 
            def action_required_by_date_time=(value)
                @action_required_by_date_time = value
            end
            ## 
            ## Gets the attachments property value. A collection of serviceAnnouncementAttachments.
            ## @return a service_announcement_attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. A collection of serviceAnnouncementAttachments.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the attachmentsArchive property value. The zip file that contains all attachments for a message.
            ## @return a base64url
            ## 
            def attachments_archive
                return @attachments_archive
            end
            ## 
            ## Sets the attachmentsArchive property value. The zip file that contains all attachments for a message.
            ## @param value Value to set for the attachments_archive property.
            ## @return a void
            ## 
            def attachments_archive=(value)
                @attachments_archive = value
            end
            ## 
            ## Gets the body property value. The body property
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body property
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a service_update_category
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
            ## Instantiates a new ServiceUpdateMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.serviceUpdateMessage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_update_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceUpdateMessage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionRequiredByDateTime" => lambda {|n| @action_required_by_date_time = n.get_date_time_value() },
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServiceAnnouncementAttachment.create_from_discriminator_value(pn) }) },
                    "attachmentsArchive" => lambda {|n| @attachments_archive = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraph::Models::ServiceUpdateCategory) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "isMajorChange" => lambda {|n| @is_major_change = n.get_boolean_value() },
                    "services" => lambda {|n| @services = n.get_collection_of_primitive_values(String) },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::ServiceUpdateSeverity) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "viewPoint" => lambda {|n| @view_point = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ServiceUpdateMessageViewpoint.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Indicates whether the message has any attachment.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Indicates whether the message has any attachment.
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the isMajorChange property value. Indicates whether the message describes a major update for the service.
            ## @return a boolean
            ## 
            def is_major_change
                return @is_major_change
            end
            ## 
            ## Sets the isMajorChange property value. Indicates whether the message describes a major update for the service.
            ## @param value Value to set for the is_major_change property.
            ## @return a void
            ## 
            def is_major_change=(value)
                @is_major_change = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("actionRequiredByDateTime", @action_required_by_date_time)
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_object_value("attachmentsArchive", @attachments_archive)
                writer.write_object_value("body", @body)
                writer.write_enum_value("category", @category)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_boolean_value("isMajorChange", @is_major_change)
                writer.write_collection_of_primitive_values("services", @services)
                writer.write_enum_value("severity", @severity)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_object_value("viewPoint", @view_point)
            end
            ## 
            ## Gets the services property value. The affected services by the service message.
            ## @return a string
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. The affected services by the service message.
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a service_update_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity property
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the tags property value. A collection of tags for the service message. Tags are provided by the service team/support team who post the message to tell whether this message contains privacy data, or whether this message is for a service new feature update, and so on.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. A collection of tags for the service message. Tags are provided by the service team/support team who post the message to tell whether this message contains privacy data, or whether this message is for a service new feature update, and so on.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the viewPoint property value. Represents user viewpoints data of the service message. This data includes message status such as whether the user has archived, read, or marked the message as favorite. This property is null when accessed with application permissions.
            ## @return a service_update_message_viewpoint
            ## 
            def view_point
                return @view_point
            end
            ## 
            ## Sets the viewPoint property value. Represents user viewpoints data of the service message. This data includes message status such as whether the user has archived, read, or marked the message as favorite. This property is null when accessed with application permissions.
            ## @param value Value to set for the view_point property.
            ## @return a void
            ## 
            def view_point=(value)
                @view_point = value
            end
        end
    end
end
