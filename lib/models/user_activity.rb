require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserActivity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
            @activation_url
            ## 
            # Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
            @activity_source_host
            ## 
            # Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
            @app_activity_id
            ## 
            # Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
            @app_display_name
            ## 
            # Optional. A custom piece of data - JSON-LD extensible description of content according to schema.org syntax.
            @content_info
            ## 
            # Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
            @content_url
            ## 
            # Set by the server. DateTime in UTC when the object was created on the server.
            @created_date_time
            ## 
            # Set by the server. DateTime in UTC when the object expired on the server.
            @expiration_date_time
            ## 
            # Optional. URL used to launch the activity in a web-based app, if available.
            @fallback_url
            ## 
            # Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
            @history_items
            ## 
            # Set by the server. DateTime in UTC when the object was modified on the server.
            @last_modified_date_time
            ## 
            # Set by the server. A status code used to identify valid objects. Values: active, updated, deleted, ignored.
            @status
            ## 
            # Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
            @user_timezone
            ## 
            # The visualElements property
            @visual_elements
            ## 
            ## Gets the activationUrl property value. Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
            ## @return a string
            ## 
            def activation_url
                return @activation_url
            end
            ## 
            ## Sets the activationUrl property value. Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.
            ## @param value Value to set for the activation_url property.
            ## @return a void
            ## 
            def activation_url=(value)
                @activation_url = value
            end
            ## 
            ## Gets the activitySourceHost property value. Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
            ## @return a string
            ## 
            def activity_source_host
                return @activity_source_host
            end
            ## 
            ## Sets the activitySourceHost property value. Required. URL for the domain representing the cross-platform identity mapping for the app. Mapping is stored either as a JSON file hosted on the domain or configurable via Windows Dev Center. The JSON file is named cross-platform-app-identifiers and is hosted at root of your HTTPS domain, either at the top level domain or include a sub domain. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique file and domain (or sub domain) per cross-platform app identity. For example, a separate file and domain is needed for Word vs. PowerPoint.
            ## @param value Value to set for the activity_source_host property.
            ## @return a void
            ## 
            def activity_source_host=(value)
                @activity_source_host = value
            end
            ## 
            ## Gets the appActivityId property value. Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
            ## @return a string
            ## 
            def app_activity_id
                return @app_activity_id
            end
            ## 
            ## Sets the appActivityId property value. Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.
            ## @param value Value to set for the app_activity_id property.
            ## @return a void
            ## 
            def app_activity_id=(value)
                @app_activity_id = value
            end
            ## 
            ## Gets the appDisplayName property value. Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Instantiates a new userActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentInfo property value. Optional. A custom piece of data - JSON-LD extensible description of content according to schema.org syntax.
            ## @return a json
            ## 
            def content_info
                return @content_info
            end
            ## 
            ## Sets the contentInfo property value. Optional. A custom piece of data - JSON-LD extensible description of content according to schema.org syntax.
            ## @param value Value to set for the content_info property.
            ## @return a void
            ## 
            def content_info=(value)
                @content_info = value
            end
            ## 
            ## Gets the contentUrl property value. Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
            ## @return a string
            ## 
            def content_url
                return @content_url
            end
            ## 
            ## Sets the contentUrl property value. Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).
            ## @param value Value to set for the content_url property.
            ## @return a void
            ## 
            def content_url=(value)
                @content_url = value
            end
            ## 
            ## Gets the createdDateTime property value. Set by the server. DateTime in UTC when the object was created on the server.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Set by the server. DateTime in UTC when the object was created on the server.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserActivity.new
            end
            ## 
            ## Gets the expirationDateTime property value. Set by the server. DateTime in UTC when the object expired on the server.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Set by the server. DateTime in UTC when the object expired on the server.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the fallbackUrl property value. Optional. URL used to launch the activity in a web-based app, if available.
            ## @return a string
            ## 
            def fallback_url
                return @fallback_url
            end
            ## 
            ## Sets the fallbackUrl property value. Optional. URL used to launch the activity in a web-based app, if available.
            ## @param value Value to set for the fallback_url property.
            ## @return a void
            ## 
            def fallback_url=(value)
                @fallback_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activationUrl" => lambda {|n| @activation_url = n.get_string_value() },
                    "activitySourceHost" => lambda {|n| @activity_source_host = n.get_string_value() },
                    "appActivityId" => lambda {|n| @app_activity_id = n.get_string_value() },
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "contentInfo" => lambda {|n| @content_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "contentUrl" => lambda {|n| @content_url = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "fallbackUrl" => lambda {|n| @fallback_url = n.get_string_value() },
                    "historyItems" => lambda {|n| @history_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ActivityHistoryItem.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::Status) },
                    "userTimezone" => lambda {|n| @user_timezone = n.get_string_value() },
                    "visualElements" => lambda {|n| @visual_elements = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VisualInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the historyItems property value. Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
            ## @return a activity_history_item
            ## 
            def history_items
                return @history_items
            end
            ## 
            ## Sets the historyItems property value. Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.
            ## @param value Value to set for the history_items property.
            ## @return a void
            ## 
            def history_items=(value)
                @history_items = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Set by the server. DateTime in UTC when the object was modified on the server.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Set by the server. DateTime in UTC when the object was modified on the server.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("activationUrl", @activation_url)
                writer.write_string_value("activitySourceHost", @activity_source_host)
                writer.write_string_value("appActivityId", @app_activity_id)
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_object_value("contentInfo", @content_info)
                writer.write_string_value("contentUrl", @content_url)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("fallbackUrl", @fallback_url)
                writer.write_collection_of_object_values("historyItems", @history_items)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("userTimezone", @user_timezone)
                writer.write_object_value("visualElements", @visual_elements)
            end
            ## 
            ## Gets the status property value. Set by the server. A status code used to identify valid objects. Values: active, updated, deleted, ignored.
            ## @return a status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Set by the server. A status code used to identify valid objects. Values: active, updated, deleted, ignored.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userTimezone property value. Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
            ## @return a string
            ## 
            def user_timezone
                return @user_timezone
            end
            ## 
            ## Sets the userTimezone property value. Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.
            ## @param value Value to set for the user_timezone property.
            ## @return a void
            ## 
            def user_timezone=(value)
                @user_timezone = value
            end
            ## 
            ## Gets the visualElements property value. The visualElements property
            ## @return a visual_info
            ## 
            def visual_elements
                return @visual_elements
            end
            ## 
            ## Sets the visualElements property value. The visualElements property
            ## @param value Value to set for the visual_elements property.
            ## @return a void
            ## 
            def visual_elements=(value)
                @visual_elements = value
            end
        end
    end
end
