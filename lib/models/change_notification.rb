require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChangeNotification
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The changeType property
            @change_type
            ## 
            # Value of the clientState property sent in the subscription request (if any). The maximum length is 255 characters. The client can check whether the change notification came from the service by comparing the values of the clientState property. The value of the clientState property sent with the subscription is compared with the value of the clientState property received with each change notification. Optional.
            @client_state
            ## 
            # (Preview) Encrypted content attached with the change notification. Only provided if encryptionCertificate and includeResourceData were defined during the subscription request and if the resource supports it. Optional.
            @encrypted_content
            ## 
            # Unique ID for the notification. Optional.
            @id
            ## 
            # The type of lifecycle notification if the current notification is a lifecycle notification. Optional. Supported values are missed, subscriptionRemoved, reauthorizationRequired. Optional.
            @lifecycle_event
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The URI of the resource that emitted the change notification relative to https://graph.microsoft.com. Required.
            @resource
            ## 
            # The content of this property depends on the type of resource being subscribed to. Optional.
            @resource_data
            ## 
            # The expiration time for the subscription. Required.
            @subscription_expiration_date_time
            ## 
            # The unique identifier of the subscription that generated the notification.Required.
            @subscription_id
            ## 
            # The unique identifier of the tenant from which the change notification originated. Required.
            @tenant_id
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
            ## Gets the changeType property value. The changeType property
            ## @return a change_type
            ## 
            def change_type
                return @change_type
            end
            ## 
            ## Sets the changeType property value. The changeType property
            ## @param value Value to set for the change_type property.
            ## @return a void
            ## 
            def change_type=(value)
                @change_type = value
            end
            ## 
            ## Gets the clientState property value. Value of the clientState property sent in the subscription request (if any). The maximum length is 255 characters. The client can check whether the change notification came from the service by comparing the values of the clientState property. The value of the clientState property sent with the subscription is compared with the value of the clientState property received with each change notification. Optional.
            ## @return a string
            ## 
            def client_state
                return @client_state
            end
            ## 
            ## Sets the clientState property value. Value of the clientState property sent in the subscription request (if any). The maximum length is 255 characters. The client can check whether the change notification came from the service by comparing the values of the clientState property. The value of the clientState property sent with the subscription is compared with the value of the clientState property received with each change notification. Optional.
            ## @param value Value to set for the client_state property.
            ## @return a void
            ## 
            def client_state=(value)
                @client_state = value
            end
            ## 
            ## Instantiates a new changeNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a change_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChangeNotification.new
            end
            ## 
            ## Gets the encryptedContent property value. (Preview) Encrypted content attached with the change notification. Only provided if encryptionCertificate and includeResourceData were defined during the subscription request and if the resource supports it. Optional.
            ## @return a change_notification_encrypted_content
            ## 
            def encrypted_content
                return @encrypted_content
            end
            ## 
            ## Sets the encryptedContent property value. (Preview) Encrypted content attached with the change notification. Only provided if encryptionCertificate and includeResourceData were defined during the subscription request and if the resource supports it. Optional.
            ## @param value Value to set for the encrypted_content property.
            ## @return a void
            ## 
            def encrypted_content=(value)
                @encrypted_content = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "changeType" => lambda {|n| @change_type = n.get_enum_value(MicrosoftGraph::Models::ChangeType) },
                    "clientState" => lambda {|n| @client_state = n.get_string_value() },
                    "encryptedContent" => lambda {|n| @encrypted_content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChangeNotificationEncryptedContent.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "lifecycleEvent" => lambda {|n| @lifecycle_event = n.get_enum_value(MicrosoftGraph::Models::LifecycleEventType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_string_value() },
                    "resourceData" => lambda {|n| @resource_data = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceData.create_from_discriminator_value(pn) }) },
                    "subscriptionExpirationDateTime" => lambda {|n| @subscription_expiration_date_time = n.get_date_time_value() },
                    "subscriptionId" => lambda {|n| @subscription_id = n.get_guid_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_guid_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique ID for the notification. Optional.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique ID for the notification. Optional.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the lifecycleEvent property value. The type of lifecycle notification if the current notification is a lifecycle notification. Optional. Supported values are missed, subscriptionRemoved, reauthorizationRequired. Optional.
            ## @return a lifecycle_event_type
            ## 
            def lifecycle_event
                return @lifecycle_event
            end
            ## 
            ## Sets the lifecycleEvent property value. The type of lifecycle notification if the current notification is a lifecycle notification. Optional. Supported values are missed, subscriptionRemoved, reauthorizationRequired. Optional.
            ## @param value Value to set for the lifecycle_event property.
            ## @return a void
            ## 
            def lifecycle_event=(value)
                @lifecycle_event = value
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
            ## Gets the resource property value. The URI of the resource that emitted the change notification relative to https://graph.microsoft.com. Required.
            ## @return a string
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. The URI of the resource that emitted the change notification relative to https://graph.microsoft.com. Required.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceData property value. The content of this property depends on the type of resource being subscribed to. Optional.
            ## @return a resource_data
            ## 
            def resource_data
                return @resource_data
            end
            ## 
            ## Sets the resourceData property value. The content of this property depends on the type of resource being subscribed to. Optional.
            ## @param value Value to set for the resource_data property.
            ## @return a void
            ## 
            def resource_data=(value)
                @resource_data = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("changeType", @change_type)
                writer.write_string_value("clientState", @client_state)
                writer.write_object_value("encryptedContent", @encrypted_content)
                writer.write_string_value("id", @id)
                writer.write_enum_value("lifecycleEvent", @lifecycle_event)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("resource", @resource)
                writer.write_object_value("resourceData", @resource_data)
                writer.write_date_time_value("subscriptionExpirationDateTime", @subscription_expiration_date_time)
                writer.write_guid_value("subscriptionId", @subscription_id)
                writer.write_guid_value("tenantId", @tenant_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subscriptionExpirationDateTime property value. The expiration time for the subscription. Required.
            ## @return a date_time
            ## 
            def subscription_expiration_date_time
                return @subscription_expiration_date_time
            end
            ## 
            ## Sets the subscriptionExpirationDateTime property value. The expiration time for the subscription. Required.
            ## @param value Value to set for the subscription_expiration_date_time property.
            ## @return a void
            ## 
            def subscription_expiration_date_time=(value)
                @subscription_expiration_date_time = value
            end
            ## 
            ## Gets the subscriptionId property value. The unique identifier of the subscription that generated the notification.Required.
            ## @return a guid
            ## 
            def subscription_id
                return @subscription_id
            end
            ## 
            ## Sets the subscriptionId property value. The unique identifier of the subscription that generated the notification.Required.
            ## @param value Value to set for the subscription_id property.
            ## @return a void
            ## 
            def subscription_id=(value)
                @subscription_id = value
            end
            ## 
            ## Gets the tenantId property value. The unique identifier of the tenant from which the change notification originated. Required.
            ## @return a guid
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The unique identifier of the tenant from which the change notification originated. Required.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
