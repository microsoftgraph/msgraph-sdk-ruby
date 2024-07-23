require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceLocalCredential < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the local admin account for which LAPS is enabled.
            @account_name
            ## 
            # The SID of the local admin account for which LAPS is enabled.
            @account_sid
            ## 
            # When the local administrator account credential for the device object was backed up to Azure Active Directory.
            @backup_date_time
            ## 
            # The password for the local administrator account that is backed up to Azure Active Directory and returned as a Base64 encoded value.
            @password_base64
            ## 
            ## Gets the accountName property value. The name of the local admin account for which LAPS is enabled.
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. The name of the local admin account for which LAPS is enabled.
            ## @param value Value to set for the accountName property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
            ## 
            ## Gets the accountSid property value. The SID of the local admin account for which LAPS is enabled.
            ## @return a string
            ## 
            def account_sid
                return @account_sid
            end
            ## 
            ## Sets the accountSid property value. The SID of the local admin account for which LAPS is enabled.
            ## @param value Value to set for the accountSid property.
            ## @return a void
            ## 
            def account_sid=(value)
                @account_sid = value
            end
            ## 
            ## Gets the backupDateTime property value. When the local administrator account credential for the device object was backed up to Azure Active Directory.
            ## @return a date_time
            ## 
            def backup_date_time
                return @backup_date_time
            end
            ## 
            ## Sets the backupDateTime property value. When the local administrator account credential for the device object was backed up to Azure Active Directory.
            ## @param value Value to set for the backupDateTime property.
            ## @return a void
            ## 
            def backup_date_time=(value)
                @backup_date_time = value
            end
            ## 
            ## Instantiates a new DeviceLocalCredential and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_local_credential
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceLocalCredential.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "accountSid" => lambda {|n| @account_sid = n.get_string_value() },
                    "backupDateTime" => lambda {|n| @backup_date_time = n.get_date_time_value() },
                    "passwordBase64" => lambda {|n| @password_base64 = n.get_string_value() },
                })
            end
            ## 
            ## Gets the passwordBase64 property value. The password for the local administrator account that is backed up to Azure Active Directory and returned as a Base64 encoded value.
            ## @return a string
            ## 
            def password_base64
                return @password_base64
            end
            ## 
            ## Sets the passwordBase64 property value. The password for the local administrator account that is backed up to Azure Active Directory and returned as a Base64 encoded value.
            ## @param value Value to set for the passwordBase64 property.
            ## @return a void
            ## 
            def password_base64=(value)
                @password_base64 = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("accountName", @account_name)
                writer.write_string_value("accountSid", @account_sid)
                writer.write_date_time_value("backupDateTime", @backup_date_time)
                writer.write_string_value("passwordBase64", @password_base64)
            end
        end
    end
end
