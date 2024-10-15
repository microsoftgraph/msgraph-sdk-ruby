require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Reflects the organization level setting controlling delegate access to the trending API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected for the whole organization. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            @contribution_to_content_discovery_as_organization_disabled
            ## 
            # When set to true, the delegate access to the user's trending API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected. Users can control this setting in Office Delve.
            @contribution_to_content_discovery_disabled
            ## 
            # The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. Get userInsightsSettings through this navigation property.
            @item_insights
            ## 
            # The shiftPreferences property
            @shift_preferences
            ## 
            # The storage property
            @storage
            ## 
            # The windows property
            @windows
            ## 
            ## Instantiates a new UserSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contributionToContentDiscoveryAsOrganizationDisabled property value. Reflects the organization level setting controlling delegate access to the trending API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected for the whole organization. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            ## @return a boolean
            ## 
            def contribution_to_content_discovery_as_organization_disabled
                return @contribution_to_content_discovery_as_organization_disabled
            end
            ## 
            ## Sets the contributionToContentDiscoveryAsOrganizationDisabled property value. Reflects the organization level setting controlling delegate access to the trending API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected for the whole organization. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            ## @param value Value to set for the contributionToContentDiscoveryAsOrganizationDisabled property.
            ## @return a void
            ## 
            def contribution_to_content_discovery_as_organization_disabled=(value)
                @contribution_to_content_discovery_as_organization_disabled = value
            end
            ## 
            ## Gets the contributionToContentDiscoveryDisabled property value. When set to true, the delegate access to the user's trending API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected. Users can control this setting in Office Delve.
            ## @return a boolean
            ## 
            def contribution_to_content_discovery_disabled
                return @contribution_to_content_discovery_disabled
            end
            ## 
            ## Sets the contributionToContentDiscoveryDisabled property value. When set to true, the delegate access to the user's trending API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for work or school is affected. Users can control this setting in Office Delve.
            ## @param value Value to set for the contributionToContentDiscoveryDisabled property.
            ## @return a void
            ## 
            def contribution_to_content_discovery_disabled=(value)
                @contribution_to_content_discovery_disabled = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contributionToContentDiscoveryAsOrganizationDisabled" => lambda {|n| @contribution_to_content_discovery_as_organization_disabled = n.get_boolean_value() },
                    "contributionToContentDiscoveryDisabled" => lambda {|n| @contribution_to_content_discovery_disabled = n.get_boolean_value() },
                    "itemInsights" => lambda {|n| @item_insights = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserInsightsSettings.create_from_discriminator_value(pn) }) },
                    "shiftPreferences" => lambda {|n| @shift_preferences = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ShiftPreferences.create_from_discriminator_value(pn) }) },
                    "storage" => lambda {|n| @storage = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserStorage.create_from_discriminator_value(pn) }) },
                    "windows" => lambda {|n| @windows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemInsights property value. The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. Get userInsightsSettings through this navigation property.
            ## @return a user_insights_settings
            ## 
            def item_insights
                return @item_insights
            end
            ## 
            ## Sets the itemInsights property value. The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. Get userInsightsSettings through this navigation property.
            ## @param value Value to set for the itemInsights property.
            ## @return a void
            ## 
            def item_insights=(value)
                @item_insights = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("contributionToContentDiscoveryAsOrganizationDisabled", @contribution_to_content_discovery_as_organization_disabled)
                writer.write_boolean_value("contributionToContentDiscoveryDisabled", @contribution_to_content_discovery_disabled)
                writer.write_object_value("itemInsights", @item_insights)
                writer.write_object_value("shiftPreferences", @shift_preferences)
                writer.write_object_value("storage", @storage)
                writer.write_collection_of_object_values("windows", @windows)
            end
            ## 
            ## Gets the shiftPreferences property value. The shiftPreferences property
            ## @return a shift_preferences
            ## 
            def shift_preferences
                return @shift_preferences
            end
            ## 
            ## Sets the shiftPreferences property value. The shiftPreferences property
            ## @param value Value to set for the shiftPreferences property.
            ## @return a void
            ## 
            def shift_preferences=(value)
                @shift_preferences = value
            end
            ## 
            ## Gets the storage property value. The storage property
            ## @return a user_storage
            ## 
            def storage
                return @storage
            end
            ## 
            ## Sets the storage property value. The storage property
            ## @param value Value to set for the storage property.
            ## @return a void
            ## 
            def storage=(value)
                @storage = value
            end
            ## 
            ## Gets the windows property value. The windows property
            ## @return a windows_setting
            ## 
            def windows
                return @windows
            end
            ## 
            ## Sets the windows property value. The windows property
            ## @param value Value to set for the windows property.
            ## @return a void
            ## 
            def windows=(value)
                @windows = value
            end
        end
    end
end
