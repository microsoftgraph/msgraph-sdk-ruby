require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlatformCredentialAuthenticationMethod < MicrosoftGraph::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time that this Platform Credential Key was registered.
            @created_date_time
            ## 
            # The registered device on which this Platform Credential resides. Supports $expand. When you get a user's Platform Credential registration information, this property is returned only on a single GET and when you specify ?$expand. For example, GET /users/admin@contoso.com/authentication/platformCredentialAuthenticationMethod/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device.
            @device
            ## 
            # The name of the device on which Platform Credential is registered.
            @display_name
            ## 
            # Key strength of this Platform Credential key. Possible values are: normal, weak, unknown.
            @key_strength
            ## 
            # Platform on which this Platform Credential key is present. Possible values are: unknown, windows, macOS,iOS, android, linux.
            @platform
            ## 
            ## Instantiates a new PlatformCredentialAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.platformCredentialAuthenticationMethod"
            end
            ## 
            ## Gets the createdDateTime property value. The date and time that this Platform Credential Key was registered.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time that this Platform Credential Key was registered.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a platform_credential_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlatformCredentialAuthenticationMethod.new
            end
            ## 
            ## Gets the device property value. The registered device on which this Platform Credential resides. Supports $expand. When you get a user's Platform Credential registration information, this property is returned only on a single GET and when you specify ?$expand. For example, GET /users/admin@contoso.com/authentication/platformCredentialAuthenticationMethod/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device.
            ## @return a device
            ## 
            def device
                return @device
            end
            ## 
            ## Sets the device property value. The registered device on which this Platform Credential resides. Supports $expand. When you get a user's Platform Credential registration information, this property is returned only on a single GET and when you specify ?$expand. For example, GET /users/admin@contoso.com/authentication/platformCredentialAuthenticationMethod/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device.
            ## @param value Value to set for the device property.
            ## @return a void
            ## 
            def device=(value)
                @device = value
            end
            ## 
            ## Gets the displayName property value. The name of the device on which Platform Credential is registered.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the device on which Platform Credential is registered.
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
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "device" => lambda {|n| @device = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Device.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "keyStrength" => lambda {|n| @key_strength = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodKeyStrength) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodPlatform) },
                })
            end
            ## 
            ## Gets the keyStrength property value. Key strength of this Platform Credential key. Possible values are: normal, weak, unknown.
            ## @return a authentication_method_key_strength
            ## 
            def key_strength
                return @key_strength
            end
            ## 
            ## Sets the keyStrength property value. Key strength of this Platform Credential key. Possible values are: normal, weak, unknown.
            ## @param value Value to set for the keyStrength property.
            ## @return a void
            ## 
            def key_strength=(value)
                @key_strength = value
            end
            ## 
            ## Gets the platform property value. Platform on which this Platform Credential key is present. Possible values are: unknown, windows, macOS,iOS, android, linux.
            ## @return a authentication_method_platform
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. Platform on which this Platform Credential key is present. Possible values are: unknown, windows, macOS,iOS, android, linux.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("device", @device)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("keyStrength", @key_strength)
                writer.write_enum_value("platform", @platform)
            end
        end
    end
end
