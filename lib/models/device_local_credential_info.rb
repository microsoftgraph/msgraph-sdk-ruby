require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceLocalCredentialInfo < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The credentials of the device's local administrator account backed up to Azure Active Directory.
            @credentials
            ## 
            # Display name of the device that the local credentials are associated with.
            @device_name
            ## 
            # When the local administrator account credential was backed up to Azure Active Directory.
            @last_backup_date_time
            ## 
            # When the local administrator account credential will be refreshed and backed up to Azure Active Directory.
            @refresh_date_time
            ## 
            ## Instantiates a new deviceLocalCredentialInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_local_credential_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceLocalCredentialInfo.new
            end
            ## 
            ## Gets the credentials property value. The credentials of the device's local administrator account backed up to Azure Active Directory.
            ## @return a device_local_credential
            ## 
            def credentials
                return @credentials
            end
            ## 
            ## Sets the credentials property value. The credentials of the device's local administrator account backed up to Azure Active Directory.
            ## @param value Value to set for the credentials property.
            ## @return a void
            ## 
            def credentials=(value)
                @credentials = value
            end
            ## 
            ## Gets the deviceName property value. Display name of the device that the local credentials are associated with.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Display name of the device that the local credentials are associated with.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "credentials" => lambda {|n| @credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceLocalCredential.create_from_discriminator_value(pn) }) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "lastBackupDateTime" => lambda {|n| @last_backup_date_time = n.get_date_time_value() },
                    "refreshDateTime" => lambda {|n| @refresh_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastBackupDateTime property value. When the local administrator account credential was backed up to Azure Active Directory.
            ## @return a date_time
            ## 
            def last_backup_date_time
                return @last_backup_date_time
            end
            ## 
            ## Sets the lastBackupDateTime property value. When the local administrator account credential was backed up to Azure Active Directory.
            ## @param value Value to set for the lastBackupDateTime property.
            ## @return a void
            ## 
            def last_backup_date_time=(value)
                @last_backup_date_time = value
            end
            ## 
            ## Gets the refreshDateTime property value. When the local administrator account credential will be refreshed and backed up to Azure Active Directory.
            ## @return a date_time
            ## 
            def refresh_date_time
                return @refresh_date_time
            end
            ## 
            ## Sets the refreshDateTime property value. When the local administrator account credential will be refreshed and backed up to Azure Active Directory.
            ## @param value Value to set for the refreshDateTime property.
            ## @return a void
            ## 
            def refresh_date_time=(value)
                @refresh_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("credentials", @credentials)
                writer.write_string_value("deviceName", @device_name)
                writer.write_date_time_value("lastBackupDateTime", @last_backup_date_time)
                writer.write_date_time_value("refreshDateTime", @refresh_date_time)
            end
        end
    end
end
