require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # telecomExpenseManagementPartner resources represent the metadata and status of a given TEM service. Once your organization has onboarded with a partner, the partner can be enabled or disabled to switch TEM functionality on or off.
        class TelecomExpenseManagementPartner < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Whether the partner's AAD app has been authorized to access Intune.
            @app_authorized
            ## 
            # Display name of the TEM partner.
            @display_name
            ## 
            # Whether Intune's connection to the TEM service is currently enabled or disabled.
            @enabled
            ## 
            # Timestamp of the last request sent to Intune by the TEM partner.
            @last_connection_date_time
            ## 
            # URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.
            @url
            ## 
            ## Gets the appAuthorized property value. Whether the partner's AAD app has been authorized to access Intune.
            ## @return a boolean
            ## 
            def app_authorized
                return @app_authorized
            end
            ## 
            ## Sets the appAuthorized property value. Whether the partner's AAD app has been authorized to access Intune.
            ## @param value Value to set for the app_authorized property.
            ## @return a void
            ## 
            def app_authorized=(value)
                @app_authorized = value
            end
            ## 
            ## Instantiates a new telecomExpenseManagementPartner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a telecom_expense_management_partner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TelecomExpenseManagementPartner.new
            end
            ## 
            ## Gets the displayName property value. Display name of the TEM partner.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the TEM partner.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enabled property value. Whether Intune's connection to the TEM service is currently enabled or disabled.
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. Whether Intune's connection to the TEM service is currently enabled or disabled.
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appAuthorized" => lambda {|n| @app_authorized = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "lastConnectionDateTime" => lambda {|n| @last_connection_date_time = n.get_date_time_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastConnectionDateTime property value. Timestamp of the last request sent to Intune by the TEM partner.
            ## @return a date_time
            ## 
            def last_connection_date_time
                return @last_connection_date_time
            end
            ## 
            ## Sets the lastConnectionDateTime property value. Timestamp of the last request sent to Intune by the TEM partner.
            ## @param value Value to set for the last_connection_date_time property.
            ## @return a void
            ## 
            def last_connection_date_time=(value)
                @last_connection_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("appAuthorized", @app_authorized)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("enabled", @enabled)
                writer.write_date_time_value("lastConnectionDateTime", @last_connection_date_time)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the url property value. URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. URL of the TEM partner's administrative control panel, where an administrator can configure their TEM service.
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
