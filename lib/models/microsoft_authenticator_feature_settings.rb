require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftAuthenticatorFeatureSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Determines whether the user's Authenticator app will show them the client app they are signing into.
            @display_app_information_required_state
            ## 
            # Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.
            @display_location_information_required_state
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new microsoftAuthenticatorFeatureSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_authenticator_feature_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftAuthenticatorFeatureSettings.new
            end
            ## 
            ## Gets the displayAppInformationRequiredState property value. Determines whether the user's Authenticator app will show them the client app they are signing into.
            ## @return a authentication_method_feature_configuration
            ## 
            def display_app_information_required_state
                return @display_app_information_required_state
            end
            ## 
            ## Sets the displayAppInformationRequiredState property value. Determines whether the user's Authenticator app will show them the client app they are signing into.
            ## @param value Value to set for the display_app_information_required_state property.
            ## @return a void
            ## 
            def display_app_information_required_state=(value)
                @display_app_information_required_state = value
            end
            ## 
            ## Gets the displayLocationInformationRequiredState property value. Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.
            ## @return a authentication_method_feature_configuration
            ## 
            def display_location_information_required_state
                return @display_location_information_required_state
            end
            ## 
            ## Sets the displayLocationInformationRequiredState property value. Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.
            ## @param value Value to set for the display_location_information_required_state property.
            ## @return a void
            ## 
            def display_location_information_required_state=(value)
                @display_location_information_required_state = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayAppInformationRequiredState" => lambda {|n| @display_app_information_required_state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodFeatureConfiguration.create_from_discriminator_value(pn) }) },
                    "displayLocationInformationRequiredState" => lambda {|n| @display_location_information_required_state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodFeatureConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("displayAppInformationRequiredState", @display_app_information_required_state)
                writer.write_object_value("displayLocationInformationRequiredState", @display_location_information_required_state)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
