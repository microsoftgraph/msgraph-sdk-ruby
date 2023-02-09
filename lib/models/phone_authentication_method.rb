require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PhoneAuthenticationMethod < MicrosoftGraph::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The phone number to text or call for authentication. Phone numbers use the format +{country code} {number}x{extension}, with extension optional. For example, +1 5555551234 or +1 5555551234x123 are valid. Numbers are rejected when creating or updating if they do not match the required format.
            @phone_number
            ## 
            # The type of this phone. Possible values are: mobile, alternateMobile, or office.
            @phone_type
            ## 
            # Whether a phone is ready to be used for SMS sign-in or not. Possible values are: notSupported, notAllowedByPolicy, notEnabled, phoneNumberNotUnique, ready, or notConfigured, unknownFutureValue.
            @sms_sign_in_state
            ## 
            ## Instantiates a new PhoneAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.phoneAuthenticationMethod"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a phone_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PhoneAuthenticationMethod.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "phoneType" => lambda {|n| @phone_type = n.get_enum_value(MicrosoftGraph::Models::AuthenticationPhoneType) },
                    "smsSignInState" => lambda {|n| @sms_sign_in_state = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodSignInState) },
                })
            end
            ## 
            ## Gets the phoneNumber property value. The phone number to text or call for authentication. Phone numbers use the format +{country code} {number}x{extension}, with extension optional. For example, +1 5555551234 or +1 5555551234x123 are valid. Numbers are rejected when creating or updating if they do not match the required format.
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. The phone number to text or call for authentication. Phone numbers use the format +{country code} {number}x{extension}, with extension optional. For example, +1 5555551234 or +1 5555551234x123 are valid. Numbers are rejected when creating or updating if they do not match the required format.
            ## @param value Value to set for the phone_number property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Gets the phoneType property value. The type of this phone. Possible values are: mobile, alternateMobile, or office.
            ## @return a authentication_phone_type
            ## 
            def phone_type
                return @phone_type
            end
            ## 
            ## Sets the phoneType property value. The type of this phone. Possible values are: mobile, alternateMobile, or office.
            ## @param value Value to set for the phone_type property.
            ## @return a void
            ## 
            def phone_type=(value)
                @phone_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_enum_value("phoneType", @phone_type)
                writer.write_enum_value("smsSignInState", @sms_sign_in_state)
            end
            ## 
            ## Gets the smsSignInState property value. Whether a phone is ready to be used for SMS sign-in or not. Possible values are: notSupported, notAllowedByPolicy, notEnabled, phoneNumberNotUnique, ready, or notConfigured, unknownFutureValue.
            ## @return a authentication_method_sign_in_state
            ## 
            def sms_sign_in_state
                return @sms_sign_in_state
            end
            ## 
            ## Sets the smsSignInState property value. Whether a phone is ready to be used for SMS sign-in or not. Possible values are: notSupported, notAllowedByPolicy, notEnabled, phoneNumberNotUnique, ready, or notConfigured, unknownFutureValue.
            ## @param value Value to set for the sms_sign_in_state property.
            ## @return a void
            ## 
            def sms_sign_in_state=(value)
                @sms_sign_in_state = value
            end
        end
    end
end
