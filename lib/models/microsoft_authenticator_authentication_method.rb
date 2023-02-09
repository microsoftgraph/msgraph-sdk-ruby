require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftAuthenticatorAuthenticationMethod < MicrosoftGraph::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time that this app was registered. This property is null if the device is not registered for passwordless Phone Sign-In.
            @created_date_time
            ## 
            # The registered device on which Microsoft Authenticator resides. This property is null if the device is not registered for passwordless Phone Sign-In.
            @device
            ## 
            # Tags containing app metadata.
            @device_tag
            ## 
            # The name of the device on which this app is registered.
            @display_name
            ## 
            # Numerical version of this instance of the Authenticator app.
            @phone_app_version
            ## 
            ## Instantiates a new MicrosoftAuthenticatorAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftAuthenticatorAuthenticationMethod"
            end
            ## 
            ## Gets the createdDateTime property value. The date and time that this app was registered. This property is null if the device is not registered for passwordless Phone Sign-In.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time that this app was registered. This property is null if the device is not registered for passwordless Phone Sign-In.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_authenticator_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftAuthenticatorAuthenticationMethod.new
            end
            ## 
            ## Gets the device property value. The registered device on which Microsoft Authenticator resides. This property is null if the device is not registered for passwordless Phone Sign-In.
            ## @return a device
            ## 
            def device
                return @device
            end
            ## 
            ## Sets the device property value. The registered device on which Microsoft Authenticator resides. This property is null if the device is not registered for passwordless Phone Sign-In.
            ## @param value Value to set for the device property.
            ## @return a void
            ## 
            def device=(value)
                @device = value
            end
            ## 
            ## Gets the deviceTag property value. Tags containing app metadata.
            ## @return a string
            ## 
            def device_tag
                return @device_tag
            end
            ## 
            ## Sets the deviceTag property value. Tags containing app metadata.
            ## @param value Value to set for the device_tag property.
            ## @return a void
            ## 
            def device_tag=(value)
                @device_tag = value
            end
            ## 
            ## Gets the displayName property value. The name of the device on which this app is registered.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the device on which this app is registered.
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
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "device" => lambda {|n| @device = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Device.create_from_discriminator_value(pn) }) },
                    "deviceTag" => lambda {|n| @device_tag = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "phoneAppVersion" => lambda {|n| @phone_app_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the phoneAppVersion property value. Numerical version of this instance of the Authenticator app.
            ## @return a string
            ## 
            def phone_app_version
                return @phone_app_version
            end
            ## 
            ## Sets the phoneAppVersion property value. Numerical version of this instance of the Authenticator app.
            ## @param value Value to set for the phone_app_version property.
            ## @return a void
            ## 
            def phone_app_version=(value)
                @phone_app_version = value
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
                writer.write_string_value("deviceTag", @device_tag)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("phoneAppVersion", @phone_app_version)
            end
        end
    end
end
