require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # RemoteAssistPartner resources represent the metadata and status of a given Remote Assistance partner service.
        class RemoteAssistancePartner < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the partner.
            @display_name
            ## 
            # Timestamp of the last request sent to Intune by the TEM partner.
            @last_connection_date_time
            ## 
            # The current TeamViewer connector status
            @onboarding_status
            ## 
            # URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.
            @onboarding_url
            ## 
            ## Instantiates a new remoteAssistancePartner and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a remote_assistance_partner
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoteAssistancePartner.new
            end
            ## 
            ## Gets the displayName property value. Display name of the partner.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the partner.
            ## @param value Value to set for the display_name property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastConnectionDateTime" => lambda {|n| @last_connection_date_time = n.get_date_time_value() },
                    "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraph::Models::RemoteAssistanceOnboardingStatus) },
                    "onboardingUrl" => lambda {|n| @onboarding_url = n.get_string_value() },
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
            ## Gets the onboardingStatus property value. The current TeamViewer connector status
            ## @return a remote_assistance_onboarding_status
            ## 
            def onboarding_status
                return @onboarding_status
            end
            ## 
            ## Sets the onboardingStatus property value. The current TeamViewer connector status
            ## @param value Value to set for the onboarding_status property.
            ## @return a void
            ## 
            def onboarding_status=(value)
                @onboarding_status = value
            end
            ## 
            ## Gets the onboardingUrl property value. URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.
            ## @return a string
            ## 
            def onboarding_url
                return @onboarding_url
            end
            ## 
            ## Sets the onboardingUrl property value. URL of the partner's onboarding portal, where an administrator can configure their Remote Assistance service.
            ## @param value Value to set for the onboarding_url property.
            ## @return a void
            ## 
            def onboarding_url=(value)
                @onboarding_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastConnectionDateTime", @last_connection_date_time)
                writer.write_enum_value("onboardingStatus", @onboarding_status)
                writer.write_string_value("onboardingUrl", @onboarding_url)
            end
        end
    end
end
