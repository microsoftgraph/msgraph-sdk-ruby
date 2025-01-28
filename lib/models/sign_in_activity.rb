require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SignInActivity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The last non-interactive sign-in date for a specific user. You can use this field to calculate the last time a client attempted (either successfully or unsuccessfully) to sign in to the directory on behalf of a user. Because some users may use clients to access tenant resources rather than signing into your tenant directly, you can use the non-interactive sign-in date to along with lastSignInDateTime to identify inactive users. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Microsoft Entra ID maintains non-interactive sign-ins going back to May 2020. For more information about using the value of this property, see Manage inactive user accounts in Microsoft Entra ID.
            @last_non_interactive_sign_in_date_time
            ## 
            # Request identifier of the last non-interactive sign-in performed by this user.
            @last_non_interactive_sign_in_request_id
            ## 
            # The last interactive sign-in date and time for a specific user. You can use this field to calculate the last time a user attempted (either successfully or unsuccessfully) to sign in to the directory with an interactive authentication method. This field can be used to build reports, such as inactive users. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Microsoft Entra ID maintains interactive sign-ins going back to April 2020. For more information about using the value of this property, see Manage inactive user accounts in Microsoft Entra ID.
            @last_sign_in_date_time
            ## 
            # Request identifier of the last interactive sign-in performed by this user.
            @last_sign_in_request_id
            ## 
            # The date and time of the user's most recent successful sign-in activity. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_successful_sign_in_date_time
            ## 
            # The request ID of the last successful sign-in.
            @last_successful_sign_in_request_id
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
            ## Instantiates a new SignInActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sign_in_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignInActivity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "lastNonInteractiveSignInDateTime" => lambda {|n| @last_non_interactive_sign_in_date_time = n.get_date_time_value() },
                    "lastNonInteractiveSignInRequestId" => lambda {|n| @last_non_interactive_sign_in_request_id = n.get_string_value() },
                    "lastSignInDateTime" => lambda {|n| @last_sign_in_date_time = n.get_date_time_value() },
                    "lastSignInRequestId" => lambda {|n| @last_sign_in_request_id = n.get_string_value() },
                    "lastSuccessfulSignInDateTime" => lambda {|n| @last_successful_sign_in_date_time = n.get_date_time_value() },
                    "lastSuccessfulSignInRequestId" => lambda {|n| @last_successful_sign_in_request_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastNonInteractiveSignInDateTime property value. The last non-interactive sign-in date for a specific user. You can use this field to calculate the last time a client attempted (either successfully or unsuccessfully) to sign in to the directory on behalf of a user. Because some users may use clients to access tenant resources rather than signing into your tenant directly, you can use the non-interactive sign-in date to along with lastSignInDateTime to identify inactive users. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Microsoft Entra ID maintains non-interactive sign-ins going back to May 2020. For more information about using the value of this property, see Manage inactive user accounts in Microsoft Entra ID.
            ## @return a date_time
            ## 
            def last_non_interactive_sign_in_date_time
                return @last_non_interactive_sign_in_date_time
            end
            ## 
            ## Sets the lastNonInteractiveSignInDateTime property value. The last non-interactive sign-in date for a specific user. You can use this field to calculate the last time a client attempted (either successfully or unsuccessfully) to sign in to the directory on behalf of a user. Because some users may use clients to access tenant resources rather than signing into your tenant directly, you can use the non-interactive sign-in date to along with lastSignInDateTime to identify inactive users. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Microsoft Entra ID maintains non-interactive sign-ins going back to May 2020. For more information about using the value of this property, see Manage inactive user accounts in Microsoft Entra ID.
            ## @param value Value to set for the lastNonInteractiveSignInDateTime property.
            ## @return a void
            ## 
            def last_non_interactive_sign_in_date_time=(value)
                @last_non_interactive_sign_in_date_time = value
            end
            ## 
            ## Gets the lastNonInteractiveSignInRequestId property value. Request identifier of the last non-interactive sign-in performed by this user.
            ## @return a string
            ## 
            def last_non_interactive_sign_in_request_id
                return @last_non_interactive_sign_in_request_id
            end
            ## 
            ## Sets the lastNonInteractiveSignInRequestId property value. Request identifier of the last non-interactive sign-in performed by this user.
            ## @param value Value to set for the lastNonInteractiveSignInRequestId property.
            ## @return a void
            ## 
            def last_non_interactive_sign_in_request_id=(value)
                @last_non_interactive_sign_in_request_id = value
            end
            ## 
            ## Gets the lastSignInDateTime property value. The last interactive sign-in date and time for a specific user. You can use this field to calculate the last time a user attempted (either successfully or unsuccessfully) to sign in to the directory with an interactive authentication method. This field can be used to build reports, such as inactive users. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Microsoft Entra ID maintains interactive sign-ins going back to April 2020. For more information about using the value of this property, see Manage inactive user accounts in Microsoft Entra ID.
            ## @return a date_time
            ## 
            def last_sign_in_date_time
                return @last_sign_in_date_time
            end
            ## 
            ## Sets the lastSignInDateTime property value. The last interactive sign-in date and time for a specific user. You can use this field to calculate the last time a user attempted (either successfully or unsuccessfully) to sign in to the directory with an interactive authentication method. This field can be used to build reports, such as inactive users. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Microsoft Entra ID maintains interactive sign-ins going back to April 2020. For more information about using the value of this property, see Manage inactive user accounts in Microsoft Entra ID.
            ## @param value Value to set for the lastSignInDateTime property.
            ## @return a void
            ## 
            def last_sign_in_date_time=(value)
                @last_sign_in_date_time = value
            end
            ## 
            ## Gets the lastSignInRequestId property value. Request identifier of the last interactive sign-in performed by this user.
            ## @return a string
            ## 
            def last_sign_in_request_id
                return @last_sign_in_request_id
            end
            ## 
            ## Sets the lastSignInRequestId property value. Request identifier of the last interactive sign-in performed by this user.
            ## @param value Value to set for the lastSignInRequestId property.
            ## @return a void
            ## 
            def last_sign_in_request_id=(value)
                @last_sign_in_request_id = value
            end
            ## 
            ## Gets the lastSuccessfulSignInDateTime property value. The date and time of the user's most recent successful sign-in activity. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_successful_sign_in_date_time
                return @last_successful_sign_in_date_time
            end
            ## 
            ## Sets the lastSuccessfulSignInDateTime property value. The date and time of the user's most recent successful sign-in activity. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastSuccessfulSignInDateTime property.
            ## @return a void
            ## 
            def last_successful_sign_in_date_time=(value)
                @last_successful_sign_in_date_time = value
            end
            ## 
            ## Gets the lastSuccessfulSignInRequestId property value. The request ID of the last successful sign-in.
            ## @return a string
            ## 
            def last_successful_sign_in_request_id
                return @last_successful_sign_in_request_id
            end
            ## 
            ## Sets the lastSuccessfulSignInRequestId property value. The request ID of the last successful sign-in.
            ## @param value Value to set for the lastSuccessfulSignInRequestId property.
            ## @return a void
            ## 
            def last_successful_sign_in_request_id=(value)
                @last_successful_sign_in_request_id = value
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
                writer.write_date_time_value("lastNonInteractiveSignInDateTime", @last_non_interactive_sign_in_date_time)
                writer.write_string_value("lastNonInteractiveSignInRequestId", @last_non_interactive_sign_in_request_id)
                writer.write_date_time_value("lastSignInDateTime", @last_sign_in_date_time)
                writer.write_string_value("lastSignInRequestId", @last_sign_in_request_id)
                writer.write_date_time_value("lastSuccessfulSignInDateTime", @last_successful_sign_in_date_time)
                writer.write_string_value("lastSuccessfulSignInRequestId", @last_successful_sign_in_request_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
