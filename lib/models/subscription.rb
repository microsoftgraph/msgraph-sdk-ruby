require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Subscription < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Optional. Identifier of the application used to create the subscription. Read-only.
            @application_id
            ## 
            # Required. Indicates the type of change in the subscribed resource that will raise a change notification. The supported values are: created, updated, deleted. Multiple values can be combined using a comma-separated list. Note:  Drive root item and list change notifications support only the updated changeType. User and group change notifications support updated and deleted changeType. Use updated to receive notifications when user or group is created, updated or soft deleted.  Use deleted to receive notifications when user or group is permanently deleted.
            @change_type
            ## 
            # Required. Specifies the value of the clientState property sent by the service in each change notification. The maximum length is 128 characters. The client can check that the change notification came from the service by comparing the value of the clientState property sent with the subscription with the value of the clientState property received with each change notification.
            @client_state
            ## 
            # Optional. Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the id of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the id of the service principal corresponding to the app. Read-only.
            @creator_id
            ## 
            # Optional. A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional but required when includeResourceData is true.
            @encryption_certificate
            ## 
            # Optional. A custom app-provided identifier to help identify the certificate needed to decrypt resource data.
            @encryption_certificate_id
            ## 
            # Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to. For the maximum supported subscription length of time, see the table below.
            @expiration_date_time
            ## 
            # Optional. When set to true, change notifications include resource data (such as content of a chat message).
            @include_resource_data
            ## 
            # Optional. Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by notificationUrl, supports. The possible values are: v1_0, v1_1, v1_2, v1_3. For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set timeline allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to v1_2.
            @latest_supported_tls_version
            ## 
            # Optional. The URL of the endpoint that receives lifecycle notifications, including subscriptionRemoved, reauthorizationRequired, and missed notifications. This URL must make use of the HTTPS protocol.
            @lifecycle_notification_url
            ## 
            # Optional. OData query options for specifying value for the targeting resource. Clients receive notifications when resource reaches the state matching the query options provided here. With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the notificationQueryOptions property. For example, when the print job is completed or when a print job resource isFetchable property value becomes true etc.  Supported only for Universal Print Service. For more information, see Subscribe to change notifications from cloud printing APIs using Microsoft Graph.
            @notification_query_options
            ## 
            # Required. The URL of the endpoint that will receive the change notifications. This URL must make use of the HTTPS protocol.
            @notification_url
            ## 
            # Optional. The app ID that the subscription service can use to generate the validation token. This allows the client to validate the authenticity of the notification received.
            @notification_url_app_id
            ## 
            # Required. Specifies the resource that will be monitored for changes. Do not include the base URL (https://graph.microsoft.com/v1.0/). See the possible resource path values for each supported resource.
            @resource
            ## 
            ## Gets the applicationId property value. Optional. Identifier of the application used to create the subscription. Read-only.
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. Optional. Identifier of the application used to create the subscription. Read-only.
            ## @param value Value to set for the application_id property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Gets the changeType property value. Required. Indicates the type of change in the subscribed resource that will raise a change notification. The supported values are: created, updated, deleted. Multiple values can be combined using a comma-separated list. Note:  Drive root item and list change notifications support only the updated changeType. User and group change notifications support updated and deleted changeType. Use updated to receive notifications when user or group is created, updated or soft deleted.  Use deleted to receive notifications when user or group is permanently deleted.
            ## @return a string
            ## 
            def change_type
                return @change_type
            end
            ## 
            ## Sets the changeType property value. Required. Indicates the type of change in the subscribed resource that will raise a change notification. The supported values are: created, updated, deleted. Multiple values can be combined using a comma-separated list. Note:  Drive root item and list change notifications support only the updated changeType. User and group change notifications support updated and deleted changeType. Use updated to receive notifications when user or group is created, updated or soft deleted.  Use deleted to receive notifications when user or group is permanently deleted.
            ## @param value Value to set for the change_type property.
            ## @return a void
            ## 
            def change_type=(value)
                @change_type = value
            end
            ## 
            ## Gets the clientState property value. Required. Specifies the value of the clientState property sent by the service in each change notification. The maximum length is 128 characters. The client can check that the change notification came from the service by comparing the value of the clientState property sent with the subscription with the value of the clientState property received with each change notification.
            ## @return a string
            ## 
            def client_state
                return @client_state
            end
            ## 
            ## Sets the clientState property value. Required. Specifies the value of the clientState property sent by the service in each change notification. The maximum length is 128 characters. The client can check that the change notification came from the service by comparing the value of the clientState property sent with the subscription with the value of the clientState property received with each change notification.
            ## @param value Value to set for the client_state property.
            ## @return a void
            ## 
            def client_state=(value)
                @client_state = value
            end
            ## 
            ## Instantiates a new subscription and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a subscription
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Subscription.new
            end
            ## 
            ## Gets the creatorId property value. Optional. Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the id of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the id of the service principal corresponding to the app. Read-only.
            ## @return a string
            ## 
            def creator_id
                return @creator_id
            end
            ## 
            ## Sets the creatorId property value. Optional. Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the id of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the id of the service principal corresponding to the app. Read-only.
            ## @param value Value to set for the creator_id property.
            ## @return a void
            ## 
            def creator_id=(value)
                @creator_id = value
            end
            ## 
            ## Gets the encryptionCertificate property value. Optional. A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional but required when includeResourceData is true.
            ## @return a string
            ## 
            def encryption_certificate
                return @encryption_certificate
            end
            ## 
            ## Sets the encryptionCertificate property value. Optional. A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional but required when includeResourceData is true.
            ## @param value Value to set for the encryption_certificate property.
            ## @return a void
            ## 
            def encryption_certificate=(value)
                @encryption_certificate = value
            end
            ## 
            ## Gets the encryptionCertificateId property value. Optional. A custom app-provided identifier to help identify the certificate needed to decrypt resource data.
            ## @return a string
            ## 
            def encryption_certificate_id
                return @encryption_certificate_id
            end
            ## 
            ## Sets the encryptionCertificateId property value. Optional. A custom app-provided identifier to help identify the certificate needed to decrypt resource data.
            ## @param value Value to set for the encryption_certificate_id property.
            ## @return a void
            ## 
            def encryption_certificate_id=(value)
                @encryption_certificate_id = value
            end
            ## 
            ## Gets the expirationDateTime property value. Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to. For the maximum supported subscription length of time, see the table below.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to. For the maximum supported subscription length of time, see the table below.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "changeType" => lambda {|n| @change_type = n.get_string_value() },
                    "clientState" => lambda {|n| @client_state = n.get_string_value() },
                    "creatorId" => lambda {|n| @creator_id = n.get_string_value() },
                    "encryptionCertificate" => lambda {|n| @encryption_certificate = n.get_string_value() },
                    "encryptionCertificateId" => lambda {|n| @encryption_certificate_id = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "includeResourceData" => lambda {|n| @include_resource_data = n.get_boolean_value() },
                    "latestSupportedTlsVersion" => lambda {|n| @latest_supported_tls_version = n.get_string_value() },
                    "lifecycleNotificationUrl" => lambda {|n| @lifecycle_notification_url = n.get_string_value() },
                    "notificationQueryOptions" => lambda {|n| @notification_query_options = n.get_string_value() },
                    "notificationUrl" => lambda {|n| @notification_url = n.get_string_value() },
                    "notificationUrlAppId" => lambda {|n| @notification_url_app_id = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_string_value() },
                })
            end
            ## 
            ## Gets the includeResourceData property value. Optional. When set to true, change notifications include resource data (such as content of a chat message).
            ## @return a boolean
            ## 
            def include_resource_data
                return @include_resource_data
            end
            ## 
            ## Sets the includeResourceData property value. Optional. When set to true, change notifications include resource data (such as content of a chat message).
            ## @param value Value to set for the include_resource_data property.
            ## @return a void
            ## 
            def include_resource_data=(value)
                @include_resource_data = value
            end
            ## 
            ## Gets the latestSupportedTlsVersion property value. Optional. Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by notificationUrl, supports. The possible values are: v1_0, v1_1, v1_2, v1_3. For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set timeline allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to v1_2.
            ## @return a string
            ## 
            def latest_supported_tls_version
                return @latest_supported_tls_version
            end
            ## 
            ## Sets the latestSupportedTlsVersion property value. Optional. Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by notificationUrl, supports. The possible values are: v1_0, v1_1, v1_2, v1_3. For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set timeline allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to v1_2.
            ## @param value Value to set for the latest_supported_tls_version property.
            ## @return a void
            ## 
            def latest_supported_tls_version=(value)
                @latest_supported_tls_version = value
            end
            ## 
            ## Gets the lifecycleNotificationUrl property value. Optional. The URL of the endpoint that receives lifecycle notifications, including subscriptionRemoved, reauthorizationRequired, and missed notifications. This URL must make use of the HTTPS protocol.
            ## @return a string
            ## 
            def lifecycle_notification_url
                return @lifecycle_notification_url
            end
            ## 
            ## Sets the lifecycleNotificationUrl property value. Optional. The URL of the endpoint that receives lifecycle notifications, including subscriptionRemoved, reauthorizationRequired, and missed notifications. This URL must make use of the HTTPS protocol.
            ## @param value Value to set for the lifecycle_notification_url property.
            ## @return a void
            ## 
            def lifecycle_notification_url=(value)
                @lifecycle_notification_url = value
            end
            ## 
            ## Gets the notificationQueryOptions property value. Optional. OData query options for specifying value for the targeting resource. Clients receive notifications when resource reaches the state matching the query options provided here. With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the notificationQueryOptions property. For example, when the print job is completed or when a print job resource isFetchable property value becomes true etc.  Supported only for Universal Print Service. For more information, see Subscribe to change notifications from cloud printing APIs using Microsoft Graph.
            ## @return a string
            ## 
            def notification_query_options
                return @notification_query_options
            end
            ## 
            ## Sets the notificationQueryOptions property value. Optional. OData query options for specifying value for the targeting resource. Clients receive notifications when resource reaches the state matching the query options provided here. With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the notificationQueryOptions property. For example, when the print job is completed or when a print job resource isFetchable property value becomes true etc.  Supported only for Universal Print Service. For more information, see Subscribe to change notifications from cloud printing APIs using Microsoft Graph.
            ## @param value Value to set for the notification_query_options property.
            ## @return a void
            ## 
            def notification_query_options=(value)
                @notification_query_options = value
            end
            ## 
            ## Gets the notificationUrl property value. Required. The URL of the endpoint that will receive the change notifications. This URL must make use of the HTTPS protocol.
            ## @return a string
            ## 
            def notification_url
                return @notification_url
            end
            ## 
            ## Sets the notificationUrl property value. Required. The URL of the endpoint that will receive the change notifications. This URL must make use of the HTTPS protocol.
            ## @param value Value to set for the notification_url property.
            ## @return a void
            ## 
            def notification_url=(value)
                @notification_url = value
            end
            ## 
            ## Gets the notificationUrlAppId property value. Optional. The app ID that the subscription service can use to generate the validation token. This allows the client to validate the authenticity of the notification received.
            ## @return a string
            ## 
            def notification_url_app_id
                return @notification_url_app_id
            end
            ## 
            ## Sets the notificationUrlAppId property value. Optional. The app ID that the subscription service can use to generate the validation token. This allows the client to validate the authenticity of the notification received.
            ## @param value Value to set for the notification_url_app_id property.
            ## @return a void
            ## 
            def notification_url_app_id=(value)
                @notification_url_app_id = value
            end
            ## 
            ## Gets the resource property value. Required. Specifies the resource that will be monitored for changes. Do not include the base URL (https://graph.microsoft.com/v1.0/). See the possible resource path values for each supported resource.
            ## @return a string
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Required. Specifies the resource that will be monitored for changes. Do not include the base URL (https://graph.microsoft.com/v1.0/). See the possible resource path values for each supported resource.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("applicationId", @application_id)
                writer.write_string_value("changeType", @change_type)
                writer.write_string_value("clientState", @client_state)
                writer.write_string_value("creatorId", @creator_id)
                writer.write_string_value("encryptionCertificate", @encryption_certificate)
                writer.write_string_value("encryptionCertificateId", @encryption_certificate_id)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_boolean_value("includeResourceData", @include_resource_data)
                writer.write_string_value("latestSupportedTlsVersion", @latest_supported_tls_version)
                writer.write_string_value("lifecycleNotificationUrl", @lifecycle_notification_url)
                writer.write_string_value("notificationQueryOptions", @notification_query_options)
                writer.write_string_value("notificationUrl", @notification_url)
                writer.write_string_value("notificationUrlAppId", @notification_url_app_id)
                writer.write_string_value("resource", @resource)
            end
        end
    end
end
