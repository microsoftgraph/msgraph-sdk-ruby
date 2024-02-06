require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Reflects the organization level setting controlling delegate access to the trending API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected for the whole organization. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            @contribution_to_content_discovery_as_organization_disabled
            ## 
            # When set to true, the delegate access to the user's trending API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected. Users can control this setting in Office Delve.
            @contribution_to_content_discovery_disabled
            ## 
            # The shiftPreferences property
            @shift_preferences
            ## 
            ## Instantiates a new userSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contributionToContentDiscoveryAsOrganizationDisabled property value. Reflects the organization level setting controlling delegate access to the trending API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected for the whole organization. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            ## @return a boolean
            ## 
            def contribution_to_content_discovery_as_organization_disabled
                return @contribution_to_content_discovery_as_organization_disabled
            end
            ## 
            ## Sets the contributionToContentDiscoveryAsOrganizationDisabled property value. Reflects the organization level setting controlling delegate access to the trending API. When set to true, the organization doesn't have access to Office Delve. The relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected for the whole organization. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            ## @param value Value to set for the contributionToContentDiscoveryAsOrganizationDisabled property.
            ## @return a void
            ## 
            def contribution_to_content_discovery_as_organization_disabled=(value)
                @contribution_to_content_discovery_as_organization_disabled = value
            end
            ## 
            ## Gets the contributionToContentDiscoveryDisabled property value. When set to true, the delegate access to the user's trending API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected. Users can control this setting in Office Delve.
            ## @return a boolean
            ## 
            def contribution_to_content_discovery_disabled
                return @contribution_to_content_discovery_disabled
            end
            ## 
            ## Sets the contributionToContentDiscoveryDisabled property value. When set to true, the delegate access to the user's trending API is disabled. When set to true, documents in the user's Office Delve are disabled. When set to true, the relevancy of the content displayed in Microsoft 365, for example in Suggested sites in SharePoint Home and the Discover view in OneDrive for Business is affected. Users can control this setting in Office Delve.
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
                    "shiftPreferences" => lambda {|n| @shift_preferences = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ShiftPreferences.create_from_discriminator_value(pn) }) },
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
                writer.write_boolean_value("contributionToContentDiscoveryAsOrganizationDisabled", @contribution_to_content_discovery_as_organization_disabled) unless @contribution_to_content_discovery_as_organization_disabled.nil?
                writer.write_boolean_value("contributionToContentDiscoveryDisabled", @contribution_to_content_discovery_disabled) unless @contribution_to_content_discovery_disabled.nil?
                writer.write_object_value("shiftPreferences", @shift_preferences) unless @shift_preferences.nil?
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
        end
    end
end
