require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodsRegistrationCampaignIncludeTarget
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The object identifier of a Microsoft Entra user or group.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The targetType property
            @target_type
            ## 
            # The authentication method that the user is prompted to register. The value must be microsoftAuthenticator.
            @targeted_authentication_method
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AuthenticationMethodsRegistrationCampaignIncludeTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_methods_registration_campaign_include_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationMethodsRegistrationCampaignIncludeTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "targetType" => lambda {|n| @target_type = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodTargetType) },
                    "targetedAuthenticationMethod" => lambda {|n| @targeted_authentication_method = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The object identifier of a Microsoft Entra user or group.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The object identifier of a Microsoft Entra user or group.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("targetType", @target_type)
                writer.write_string_value("targetedAuthenticationMethod", @targeted_authentication_method)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the targetType property value. The targetType property
            ## @return a authentication_method_target_type
            ## 
            def target_type
                return @target_type
            end
            ## 
            ## Sets the targetType property value. The targetType property
            ## @param value Value to set for the targetType property.
            ## @return a void
            ## 
            def target_type=(value)
                @target_type = value
            end
            ## 
            ## Gets the targetedAuthenticationMethod property value. The authentication method that the user is prompted to register. The value must be microsoftAuthenticator.
            ## @return a string
            ## 
            def targeted_authentication_method
                return @targeted_authentication_method
            end
            ## 
            ## Sets the targetedAuthenticationMethod property value. The authentication method that the user is prompted to register. The value must be microsoftAuthenticator.
            ## @param value Value to set for the targetedAuthenticationMethod property.
            ## @return a void
            ## 
            def targeted_authentication_method=(value)
                @targeted_authentication_method = value
            end
        end
    end
end
