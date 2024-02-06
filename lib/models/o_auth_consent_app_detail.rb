require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OAuthConsentAppDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # App scope. Possible values are: unknown, readCalendar, readContact, readMail, readAllChat, readAllFile, readAndWriteMail, sendMail, unknownFutureValue.
            @app_scope
            ## 
            # App display logo.
            @display_logo
            ## 
            # App name.
            @display_name
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the appScope property value. App scope. Possible values are: unknown, readCalendar, readContact, readMail, readAllChat, readAllFile, readAndWriteMail, sendMail, unknownFutureValue.
            ## @return a o_auth_app_scope
            ## 
            def app_scope
                return @app_scope
            end
            ## 
            ## Sets the appScope property value. App scope. Possible values are: unknown, readCalendar, readContact, readMail, readAllChat, readAllFile, readAndWriteMail, sendMail, unknownFutureValue.
            ## @param value Value to set for the appScope property.
            ## @return a void
            ## 
            def app_scope=(value)
                @app_scope = value
            end
            ## 
            ## Instantiates a new oAuthConsentAppDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a o_auth_consent_app_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OAuthConsentAppDetail.new
            end
            ## 
            ## Gets the displayLogo property value. App display logo.
            ## @return a string
            ## 
            def display_logo
                return @display_logo
            end
            ## 
            ## Sets the displayLogo property value. App display logo.
            ## @param value Value to set for the displayLogo property.
            ## @return a void
            ## 
            def display_logo=(value)
                @display_logo = value
            end
            ## 
            ## Gets the displayName property value. App name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. App name.
            ## @param value Value to set for the displayName property.
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
                return {
                    "appScope" => lambda {|n| @app_scope = n.get_enum_value(MicrosoftGraph::Models::OAuthAppScope) },
                    "displayLogo" => lambda {|n| @display_logo = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_enum_value("appScope", @app_scope)
                writer.write_string_value("displayLogo", @display_logo)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
