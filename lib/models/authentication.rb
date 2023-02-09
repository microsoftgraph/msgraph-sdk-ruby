require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Authentication < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email address registered to a user for authentication.
            @email_methods
            ## 
            # Represents the FIDO2 security keys registered to a user for authentication.
            @fido2_methods
            ## 
            # Represents all authentication methods registered to a user.
            @methods
            ## 
            # The details of the Microsoft Authenticator app registered to a user for authentication.
            @microsoft_authenticator_methods
            ## 
            # Represents the status of a long-running operation.
            @operations
            ## 
            # Represents the password that's registered to a user for authentication. For security, the password itself will never be returned in the object, but action can be taken to reset a password.
            @password_methods
            ## 
            # The phone numbers registered to a user for authentication.
            @phone_methods
            ## 
            # The software OATH TOTP applications registered to a user for authentication.
            @software_oath_methods
            ## 
            # Represents a Temporary Access Pass registered to a user for authentication through time-limited passcodes.
            @temporary_access_pass_methods
            ## 
            # Represents the Windows Hello for Business authentication method registered to a user for authentication.
            @windows_hello_for_business_methods
            ## 
            ## Instantiates a new authentication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Authentication.new
            end
            ## 
            ## Gets the emailMethods property value. The email address registered to a user for authentication.
            ## @return a email_authentication_method
            ## 
            def email_methods
                return @email_methods
            end
            ## 
            ## Sets the emailMethods property value. The email address registered to a user for authentication.
            ## @param value Value to set for the email_methods property.
            ## @return a void
            ## 
            def email_methods=(value)
                @email_methods = value
            end
            ## 
            ## Gets the fido2Methods property value. Represents the FIDO2 security keys registered to a user for authentication.
            ## @return a fido2_authentication_method
            ## 
            def fido2_methods
                return @fido2_methods
            end
            ## 
            ## Sets the fido2Methods property value. Represents the FIDO2 security keys registered to a user for authentication.
            ## @param value Value to set for the fido2_methods property.
            ## @return a void
            ## 
            def fido2_methods=(value)
                @fido2_methods = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "emailMethods" => lambda {|n| @email_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EmailAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "fido2Methods" => lambda {|n| @fido2_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Fido2AuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "methods" => lambda {|n| @methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "microsoftAuthenticatorMethods" => lambda {|n| @microsoft_authenticator_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MicrosoftAuthenticatorAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LongRunningOperation.create_from_discriminator_value(pn) }) },
                    "passwordMethods" => lambda {|n| @password_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PasswordAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "phoneMethods" => lambda {|n| @phone_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PhoneAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "softwareOathMethods" => lambda {|n| @software_oath_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SoftwareOathAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "temporaryAccessPassMethods" => lambda {|n| @temporary_access_pass_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TemporaryAccessPassAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "windowsHelloForBusinessMethods" => lambda {|n| @windows_hello_for_business_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsHelloForBusinessAuthenticationMethod.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the methods property value. Represents all authentication methods registered to a user.
            ## @return a authentication_method
            ## 
            def methods
                return @methods
            end
            ## 
            ## Sets the methods property value. Represents all authentication methods registered to a user.
            ## @param value Value to set for the methods property.
            ## @return a void
            ## 
            def methods=(value)
                @methods = value
            end
            ## 
            ## Gets the microsoftAuthenticatorMethods property value. The details of the Microsoft Authenticator app registered to a user for authentication.
            ## @return a microsoft_authenticator_authentication_method
            ## 
            def microsoft_authenticator_methods
                return @microsoft_authenticator_methods
            end
            ## 
            ## Sets the microsoftAuthenticatorMethods property value. The details of the Microsoft Authenticator app registered to a user for authentication.
            ## @param value Value to set for the microsoft_authenticator_methods property.
            ## @return a void
            ## 
            def microsoft_authenticator_methods=(value)
                @microsoft_authenticator_methods = value
            end
            ## 
            ## Gets the operations property value. Represents the status of a long-running operation.
            ## @return a long_running_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. Represents the status of a long-running operation.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the passwordMethods property value. Represents the password that's registered to a user for authentication. For security, the password itself will never be returned in the object, but action can be taken to reset a password.
            ## @return a password_authentication_method
            ## 
            def password_methods
                return @password_methods
            end
            ## 
            ## Sets the passwordMethods property value. Represents the password that's registered to a user for authentication. For security, the password itself will never be returned in the object, but action can be taken to reset a password.
            ## @param value Value to set for the password_methods property.
            ## @return a void
            ## 
            def password_methods=(value)
                @password_methods = value
            end
            ## 
            ## Gets the phoneMethods property value. The phone numbers registered to a user for authentication.
            ## @return a phone_authentication_method
            ## 
            def phone_methods
                return @phone_methods
            end
            ## 
            ## Sets the phoneMethods property value. The phone numbers registered to a user for authentication.
            ## @param value Value to set for the phone_methods property.
            ## @return a void
            ## 
            def phone_methods=(value)
                @phone_methods = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("emailMethods", @email_methods)
                writer.write_collection_of_object_values("fido2Methods", @fido2_methods)
                writer.write_collection_of_object_values("methods", @methods)
                writer.write_collection_of_object_values("microsoftAuthenticatorMethods", @microsoft_authenticator_methods)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("passwordMethods", @password_methods)
                writer.write_collection_of_object_values("phoneMethods", @phone_methods)
                writer.write_collection_of_object_values("softwareOathMethods", @software_oath_methods)
                writer.write_collection_of_object_values("temporaryAccessPassMethods", @temporary_access_pass_methods)
                writer.write_collection_of_object_values("windowsHelloForBusinessMethods", @windows_hello_for_business_methods)
            end
            ## 
            ## Gets the softwareOathMethods property value. The software OATH TOTP applications registered to a user for authentication.
            ## @return a software_oath_authentication_method
            ## 
            def software_oath_methods
                return @software_oath_methods
            end
            ## 
            ## Sets the softwareOathMethods property value. The software OATH TOTP applications registered to a user for authentication.
            ## @param value Value to set for the software_oath_methods property.
            ## @return a void
            ## 
            def software_oath_methods=(value)
                @software_oath_methods = value
            end
            ## 
            ## Gets the temporaryAccessPassMethods property value. Represents a Temporary Access Pass registered to a user for authentication through time-limited passcodes.
            ## @return a temporary_access_pass_authentication_method
            ## 
            def temporary_access_pass_methods
                return @temporary_access_pass_methods
            end
            ## 
            ## Sets the temporaryAccessPassMethods property value. Represents a Temporary Access Pass registered to a user for authentication through time-limited passcodes.
            ## @param value Value to set for the temporary_access_pass_methods property.
            ## @return a void
            ## 
            def temporary_access_pass_methods=(value)
                @temporary_access_pass_methods = value
            end
            ## 
            ## Gets the windowsHelloForBusinessMethods property value. Represents the Windows Hello for Business authentication method registered to a user for authentication.
            ## @return a windows_hello_for_business_authentication_method
            ## 
            def windows_hello_for_business_methods
                return @windows_hello_for_business_methods
            end
            ## 
            ## Sets the windowsHelloForBusinessMethods property value. Represents the Windows Hello for Business authentication method registered to a user for authentication.
            ## @param value Value to set for the windows_hello_for_business_methods property.
            ## @return a void
            ## 
            def windows_hello_for_business_methods=(value)
                @windows_hello_for_business_methods = value
            end
        end
    end
end
