require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessSessionControls
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Session control to enforce application restrictions. Only Exchange Online and Sharepoint Online support this session control.
            @application_enforced_restrictions
            ## 
            # Session control to apply cloud app security.
            @cloud_app_security
            ## 
            # Session control that determines whether it is acceptable for Azure AD to extend existing sessions based on information collected prior to an outage or not.
            @disable_resilience_defaults
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Session control to define whether to persist cookies or not. All apps should be selected for this session control to work correctly.
            @persistent_browser
            ## 
            # Session control to enforce signin frequency.
            @sign_in_frequency
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
            ## Gets the applicationEnforcedRestrictions property value. Session control to enforce application restrictions. Only Exchange Online and Sharepoint Online support this session control.
            ## @return a application_enforced_restrictions_session_control
            ## 
            def application_enforced_restrictions
                return @application_enforced_restrictions
            end
            ## 
            ## Sets the applicationEnforcedRestrictions property value. Session control to enforce application restrictions. Only Exchange Online and Sharepoint Online support this session control.
            ## @param value Value to set for the application_enforced_restrictions property.
            ## @return a void
            ## 
            def application_enforced_restrictions=(value)
                @application_enforced_restrictions = value
            end
            ## 
            ## Gets the cloudAppSecurity property value. Session control to apply cloud app security.
            ## @return a cloud_app_security_session_control
            ## 
            def cloud_app_security
                return @cloud_app_security
            end
            ## 
            ## Sets the cloudAppSecurity property value. Session control to apply cloud app security.
            ## @param value Value to set for the cloud_app_security property.
            ## @return a void
            ## 
            def cloud_app_security=(value)
                @cloud_app_security = value
            end
            ## 
            ## Instantiates a new conditionalAccessSessionControls and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_session_controls
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessSessionControls.new
            end
            ## 
            ## Gets the disableResilienceDefaults property value. Session control that determines whether it is acceptable for Azure AD to extend existing sessions based on information collected prior to an outage or not.
            ## @return a boolean
            ## 
            def disable_resilience_defaults
                return @disable_resilience_defaults
            end
            ## 
            ## Sets the disableResilienceDefaults property value. Session control that determines whether it is acceptable for Azure AD to extend existing sessions based on information collected prior to an outage or not.
            ## @param value Value to set for the disable_resilience_defaults property.
            ## @return a void
            ## 
            def disable_resilience_defaults=(value)
                @disable_resilience_defaults = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationEnforcedRestrictions" => lambda {|n| @application_enforced_restrictions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ApplicationEnforcedRestrictionsSessionControl.create_from_discriminator_value(pn) }) },
                    "cloudAppSecurity" => lambda {|n| @cloud_app_security = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CloudAppSecuritySessionControl.create_from_discriminator_value(pn) }) },
                    "disableResilienceDefaults" => lambda {|n| @disable_resilience_defaults = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "persistentBrowser" => lambda {|n| @persistent_browser = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PersistentBrowserSessionControl.create_from_discriminator_value(pn) }) },
                    "signInFrequency" => lambda {|n| @sign_in_frequency = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SignInFrequencySessionControl.create_from_discriminator_value(pn) }) },
                }
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
            ## Gets the persistentBrowser property value. Session control to define whether to persist cookies or not. All apps should be selected for this session control to work correctly.
            ## @return a persistent_browser_session_control
            ## 
            def persistent_browser
                return @persistent_browser
            end
            ## 
            ## Sets the persistentBrowser property value. Session control to define whether to persist cookies or not. All apps should be selected for this session control to work correctly.
            ## @param value Value to set for the persistent_browser property.
            ## @return a void
            ## 
            def persistent_browser=(value)
                @persistent_browser = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("applicationEnforcedRestrictions", @application_enforced_restrictions)
                writer.write_object_value("cloudAppSecurity", @cloud_app_security)
                writer.write_boolean_value("disableResilienceDefaults", @disable_resilience_defaults)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("persistentBrowser", @persistent_browser)
                writer.write_object_value("signInFrequency", @sign_in_frequency)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signInFrequency property value. Session control to enforce signin frequency.
            ## @return a sign_in_frequency_session_control
            ## 
            def sign_in_frequency
                return @sign_in_frequency
            end
            ## 
            ## Sets the signInFrequency property value. Session control to enforce signin frequency.
            ## @param value Value to set for the sign_in_frequency property.
            ## @return a void
            ## 
            def sign_in_frequency=(value)
                @sign_in_frequency = value
            end
        end
    end
end
