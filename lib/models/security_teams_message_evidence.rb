require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityTeamsMessageEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the campaign that this Teams message is part of.
            @campaign_id
            ## 
            # The channel ID associated with this Teams message.
            @channel_id
            ## 
            # The delivery action of this Teams message. Possible values are: unknown, deliveredAsSpam, delivered, blocked, replaced, unknownFutureValue.
            @delivery_action
            ## 
            # The delivery location of this Teams message. Possible values are: unknown, teams, quarantine, failed, unknownFutureValue.
            @delivery_location
            ## 
            # The list of file entities that are attached to this Teams message.
            @files
            ## 
            # The identifier of the team or group that this message is part of.
            @group_id
            ## 
            # Indicates whether the message is owned by the organization that reported the security detection alert.
            @is_external
            ## 
            # Indicates whether the message is owned by your organization.
            @is_owned
            ## 
            # Date and time when the message was last edited. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The direction of the Teams message. The possible values are: unknown, inbound, outbound, intraorg, unknownFutureValue.
            @message_direction
            ## 
            # Message identifier unique within the thread.
            @message_id
            ## 
            # Tenant ID (GUID) of the owner of the message.
            @owning_tenant_id
            ## 
            # Identifier of the message to which the current message is a reply; otherwise, it's the same as the messageId.
            @parent_message_id
            ## 
            # The received date of this message. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @received_date_time
            ## 
            # The recipients of this Teams message.
            @recipients
            ## 
            # The SMTP format address of the sender.
            @sender_from_address
            ## 
            # The IP address of the sender.
            @sender_i_p
            ## 
            # Source of the message; for example, desktop and mobile.
            @source_app_name
            ## 
            # The source ID of this Teams message.
            @source_id
            ## 
            # The subject of this Teams message.
            @subject
            ## 
            # The list of recipients who were detected as suspicious.
            @suspicious_recipients
            ## 
            # Identifier of the channel or chat that this message is part of.
            @thread_id
            ## 
            # The Teams message type. Supported values are: Chat, Topic, Space, and Meeting.
            @thread_type
            ## 
            # The URLs contained in this Teams message.
            @urls
            ## 
            ## Gets the campaignId property value. The identifier of the campaign that this Teams message is part of.
            ## @return a string
            ## 
            def campaign_id
                return @campaign_id
            end
            ## 
            ## Sets the campaignId property value. The identifier of the campaign that this Teams message is part of.
            ## @param value Value to set for the campaignId property.
            ## @return a void
            ## 
            def campaign_id=(value)
                @campaign_id = value
            end
            ## 
            ## Gets the channelId property value. The channel ID associated with this Teams message.
            ## @return a string
            ## 
            def channel_id
                return @channel_id
            end
            ## 
            ## Sets the channelId property value. The channel ID associated with this Teams message.
            ## @param value Value to set for the channelId property.
            ## @return a void
            ## 
            def channel_id=(value)
                @channel_id = value
            end
            ## 
            ## Instantiates a new SecurityTeamsMessageEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.teamsMessageEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_teams_message_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityTeamsMessageEvidence.new
            end
            ## 
            ## Gets the deliveryAction property value. The delivery action of this Teams message. Possible values are: unknown, deliveredAsSpam, delivered, blocked, replaced, unknownFutureValue.
            ## @return a security_teams_message_delivery_action
            ## 
            def delivery_action
                return @delivery_action
            end
            ## 
            ## Sets the deliveryAction property value. The delivery action of this Teams message. Possible values are: unknown, deliveredAsSpam, delivered, blocked, replaced, unknownFutureValue.
            ## @param value Value to set for the deliveryAction property.
            ## @return a void
            ## 
            def delivery_action=(value)
                @delivery_action = value
            end
            ## 
            ## Gets the deliveryLocation property value. The delivery location of this Teams message. Possible values are: unknown, teams, quarantine, failed, unknownFutureValue.
            ## @return a security_teams_delivery_location
            ## 
            def delivery_location
                return @delivery_location
            end
            ## 
            ## Sets the deliveryLocation property value. The delivery location of this Teams message. Possible values are: unknown, teams, quarantine, failed, unknownFutureValue.
            ## @param value Value to set for the deliveryLocation property.
            ## @return a void
            ## 
            def delivery_location=(value)
                @delivery_location = value
            end
            ## 
            ## Gets the files property value. The list of file entities that are attached to this Teams message.
            ## @return a security_file_evidence
            ## 
            def files
                return @files
            end
            ## 
            ## Sets the files property value. The list of file entities that are attached to this Teams message.
            ## @param value Value to set for the files property.
            ## @return a void
            ## 
            def files=(value)
                @files = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "campaignId" => lambda {|n| @campaign_id = n.get_string_value() },
                    "channelId" => lambda {|n| @channel_id = n.get_string_value() },
                    "deliveryAction" => lambda {|n| @delivery_action = n.get_enum_value(MicrosoftGraph::Models::SecurityTeamsMessageDeliveryAction) },
                    "deliveryLocation" => lambda {|n| @delivery_location = n.get_enum_value(MicrosoftGraph::Models::SecurityTeamsDeliveryLocation) },
                    "files" => lambda {|n| @files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityFileEvidence.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "isExternal" => lambda {|n| @is_external = n.get_boolean_value() },
                    "isOwned" => lambda {|n| @is_owned = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "messageDirection" => lambda {|n| @message_direction = n.get_enum_value(MicrosoftGraph::Models::SecurityAntispamTeamsDirection) },
                    "messageId" => lambda {|n| @message_id = n.get_string_value() },
                    "owningTenantId" => lambda {|n| @owning_tenant_id = n.get_guid_value() },
                    "parentMessageId" => lambda {|n| @parent_message_id = n.get_string_value() },
                    "receivedDateTime" => lambda {|n| @received_date_time = n.get_date_time_value() },
                    "recipients" => lambda {|n| @recipients = n.get_collection_of_primitive_values(String) },
                    "senderFromAddress" => lambda {|n| @sender_from_address = n.get_string_value() },
                    "senderIP" => lambda {|n| @sender_i_p = n.get_string_value() },
                    "sourceAppName" => lambda {|n| @source_app_name = n.get_string_value() },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "suspiciousRecipients" => lambda {|n| @suspicious_recipients = n.get_collection_of_primitive_values(String) },
                    "threadId" => lambda {|n| @thread_id = n.get_string_value() },
                    "threadType" => lambda {|n| @thread_type = n.get_string_value() },
                    "urls" => lambda {|n| @urls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityUrlEvidence.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupId property value. The identifier of the team or group that this message is part of.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The identifier of the team or group that this message is part of.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the isExternal property value. Indicates whether the message is owned by the organization that reported the security detection alert.
            ## @return a boolean
            ## 
            def is_external
                return @is_external
            end
            ## 
            ## Sets the isExternal property value. Indicates whether the message is owned by the organization that reported the security detection alert.
            ## @param value Value to set for the isExternal property.
            ## @return a void
            ## 
            def is_external=(value)
                @is_external = value
            end
            ## 
            ## Gets the isOwned property value. Indicates whether the message is owned by your organization.
            ## @return a boolean
            ## 
            def is_owned
                return @is_owned
            end
            ## 
            ## Sets the isOwned property value. Indicates whether the message is owned by your organization.
            ## @param value Value to set for the isOwned property.
            ## @return a void
            ## 
            def is_owned=(value)
                @is_owned = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the message was last edited. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the message was last edited. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the messageDirection property value. The direction of the Teams message. The possible values are: unknown, inbound, outbound, intraorg, unknownFutureValue.
            ## @return a security_antispam_teams_direction
            ## 
            def message_direction
                return @message_direction
            end
            ## 
            ## Sets the messageDirection property value. The direction of the Teams message. The possible values are: unknown, inbound, outbound, intraorg, unknownFutureValue.
            ## @param value Value to set for the messageDirection property.
            ## @return a void
            ## 
            def message_direction=(value)
                @message_direction = value
            end
            ## 
            ## Gets the messageId property value. Message identifier unique within the thread.
            ## @return a string
            ## 
            def message_id
                return @message_id
            end
            ## 
            ## Sets the messageId property value. Message identifier unique within the thread.
            ## @param value Value to set for the messageId property.
            ## @return a void
            ## 
            def message_id=(value)
                @message_id = value
            end
            ## 
            ## Gets the owningTenantId property value. Tenant ID (GUID) of the owner of the message.
            ## @return a guid
            ## 
            def owning_tenant_id
                return @owning_tenant_id
            end
            ## 
            ## Sets the owningTenantId property value. Tenant ID (GUID) of the owner of the message.
            ## @param value Value to set for the owningTenantId property.
            ## @return a void
            ## 
            def owning_tenant_id=(value)
                @owning_tenant_id = value
            end
            ## 
            ## Gets the parentMessageId property value. Identifier of the message to which the current message is a reply; otherwise, it's the same as the messageId.
            ## @return a string
            ## 
            def parent_message_id
                return @parent_message_id
            end
            ## 
            ## Sets the parentMessageId property value. Identifier of the message to which the current message is a reply; otherwise, it's the same as the messageId.
            ## @param value Value to set for the parentMessageId property.
            ## @return a void
            ## 
            def parent_message_id=(value)
                @parent_message_id = value
            end
            ## 
            ## Gets the receivedDateTime property value. The received date of this message. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def received_date_time
                return @received_date_time
            end
            ## 
            ## Sets the receivedDateTime property value. The received date of this message. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the receivedDateTime property.
            ## @return a void
            ## 
            def received_date_time=(value)
                @received_date_time = value
            end
            ## 
            ## Gets the recipients property value. The recipients of this Teams message.
            ## @return a string
            ## 
            def recipients
                return @recipients
            end
            ## 
            ## Sets the recipients property value. The recipients of this Teams message.
            ## @param value Value to set for the recipients property.
            ## @return a void
            ## 
            def recipients=(value)
                @recipients = value
            end
            ## 
            ## Gets the senderFromAddress property value. The SMTP format address of the sender.
            ## @return a string
            ## 
            def sender_from_address
                return @sender_from_address
            end
            ## 
            ## Sets the senderFromAddress property value. The SMTP format address of the sender.
            ## @param value Value to set for the senderFromAddress property.
            ## @return a void
            ## 
            def sender_from_address=(value)
                @sender_from_address = value
            end
            ## 
            ## Gets the senderIP property value. The IP address of the sender.
            ## @return a string
            ## 
            def sender_i_p
                return @sender_i_p
            end
            ## 
            ## Sets the senderIP property value. The IP address of the sender.
            ## @param value Value to set for the senderIP property.
            ## @return a void
            ## 
            def sender_i_p=(value)
                @sender_i_p = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("campaignId", @campaign_id)
                writer.write_string_value("channelId", @channel_id)
                writer.write_enum_value("deliveryAction", @delivery_action)
                writer.write_enum_value("deliveryLocation", @delivery_location)
                writer.write_collection_of_object_values("files", @files)
                writer.write_string_value("groupId", @group_id)
                writer.write_boolean_value("isExternal", @is_external)
                writer.write_boolean_value("isOwned", @is_owned)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("messageDirection", @message_direction)
                writer.write_string_value("messageId", @message_id)
                writer.write_guid_value("owningTenantId", @owning_tenant_id)
                writer.write_string_value("parentMessageId", @parent_message_id)
                writer.write_date_time_value("receivedDateTime", @received_date_time)
                writer.write_collection_of_primitive_values("recipients", @recipients)
                writer.write_string_value("senderFromAddress", @sender_from_address)
                writer.write_string_value("senderIP", @sender_i_p)
                writer.write_string_value("sourceAppName", @source_app_name)
                writer.write_string_value("sourceId", @source_id)
                writer.write_string_value("subject", @subject)
                writer.write_collection_of_primitive_values("suspiciousRecipients", @suspicious_recipients)
                writer.write_string_value("threadId", @thread_id)
                writer.write_string_value("threadType", @thread_type)
                writer.write_collection_of_object_values("urls", @urls)
            end
            ## 
            ## Gets the sourceAppName property value. Source of the message; for example, desktop and mobile.
            ## @return a string
            ## 
            def source_app_name
                return @source_app_name
            end
            ## 
            ## Sets the sourceAppName property value. Source of the message; for example, desktop and mobile.
            ## @param value Value to set for the sourceAppName property.
            ## @return a void
            ## 
            def source_app_name=(value)
                @source_app_name = value
            end
            ## 
            ## Gets the sourceId property value. The source ID of this Teams message.
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The source ID of this Teams message.
            ## @param value Value to set for the sourceId property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
            ## 
            ## Gets the subject property value. The subject of this Teams message.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of this Teams message.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the suspiciousRecipients property value. The list of recipients who were detected as suspicious.
            ## @return a string
            ## 
            def suspicious_recipients
                return @suspicious_recipients
            end
            ## 
            ## Sets the suspiciousRecipients property value. The list of recipients who were detected as suspicious.
            ## @param value Value to set for the suspiciousRecipients property.
            ## @return a void
            ## 
            def suspicious_recipients=(value)
                @suspicious_recipients = value
            end
            ## 
            ## Gets the threadId property value. Identifier of the channel or chat that this message is part of.
            ## @return a string
            ## 
            def thread_id
                return @thread_id
            end
            ## 
            ## Sets the threadId property value. Identifier of the channel or chat that this message is part of.
            ## @param value Value to set for the threadId property.
            ## @return a void
            ## 
            def thread_id=(value)
                @thread_id = value
            end
            ## 
            ## Gets the threadType property value. The Teams message type. Supported values are: Chat, Topic, Space, and Meeting.
            ## @return a string
            ## 
            def thread_type
                return @thread_type
            end
            ## 
            ## Sets the threadType property value. The Teams message type. Supported values are: Chat, Topic, Space, and Meeting.
            ## @param value Value to set for the threadType property.
            ## @return a void
            ## 
            def thread_type=(value)
                @thread_type = value
            end
            ## 
            ## Gets the urls property value. The URLs contained in this Teams message.
            ## @return a security_url_evidence
            ## 
            def urls
                return @urls
            end
            ## 
            ## Sets the urls property value. The URLs contained in this Teams message.
            ## @param value Value to set for the urls property.
            ## @return a void
            ## 
            def urls=(value)
                @urls = value
            end
        end
    end
end
