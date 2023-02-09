require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UpdateWindowsDeviceAccountActionParameter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Not yet documented
            @calendar_sync_enabled
            ## 
            # Not yet documented
            @device_account
            ## 
            # Not yet documented
            @device_account_email
            ## 
            # Not yet documented
            @exchange_server
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Not yet documented
            @password_rotation_enabled
            ## 
            # Not yet documented
            @session_initiation_protocal_address
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
            ## Gets the calendarSyncEnabled property value. Not yet documented
            ## @return a boolean
            ## 
            def calendar_sync_enabled
                return @calendar_sync_enabled
            end
            ## 
            ## Sets the calendarSyncEnabled property value. Not yet documented
            ## @param value Value to set for the calendar_sync_enabled property.
            ## @return a void
            ## 
            def calendar_sync_enabled=(value)
                @calendar_sync_enabled = value
            end
            ## 
            ## Instantiates a new updateWindowsDeviceAccountActionParameter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a update_windows_device_account_action_parameter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UpdateWindowsDeviceAccountActionParameter.new
            end
            ## 
            ## Gets the deviceAccount property value. Not yet documented
            ## @return a windows_device_account
            ## 
            def device_account
                return @device_account
            end
            ## 
            ## Sets the deviceAccount property value. Not yet documented
            ## @param value Value to set for the device_account property.
            ## @return a void
            ## 
            def device_account=(value)
                @device_account = value
            end
            ## 
            ## Gets the deviceAccountEmail property value. Not yet documented
            ## @return a string
            ## 
            def device_account_email
                return @device_account_email
            end
            ## 
            ## Sets the deviceAccountEmail property value. Not yet documented
            ## @param value Value to set for the device_account_email property.
            ## @return a void
            ## 
            def device_account_email=(value)
                @device_account_email = value
            end
            ## 
            ## Gets the exchangeServer property value. Not yet documented
            ## @return a string
            ## 
            def exchange_server
                return @exchange_server
            end
            ## 
            ## Sets the exchangeServer property value. Not yet documented
            ## @param value Value to set for the exchange_server property.
            ## @return a void
            ## 
            def exchange_server=(value)
                @exchange_server = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "calendarSyncEnabled" => lambda {|n| @calendar_sync_enabled = n.get_boolean_value() },
                    "deviceAccount" => lambda {|n| @device_account = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsDeviceAccount.create_from_discriminator_value(pn) }) },
                    "deviceAccountEmail" => lambda {|n| @device_account_email = n.get_string_value() },
                    "exchangeServer" => lambda {|n| @exchange_server = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "passwordRotationEnabled" => lambda {|n| @password_rotation_enabled = n.get_boolean_value() },
                    "sessionInitiationProtocalAddress" => lambda {|n| @session_initiation_protocal_address = n.get_string_value() },
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
            ## Gets the passwordRotationEnabled property value. Not yet documented
            ## @return a boolean
            ## 
            def password_rotation_enabled
                return @password_rotation_enabled
            end
            ## 
            ## Sets the passwordRotationEnabled property value. Not yet documented
            ## @param value Value to set for the password_rotation_enabled property.
            ## @return a void
            ## 
            def password_rotation_enabled=(value)
                @password_rotation_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("calendarSyncEnabled", @calendar_sync_enabled)
                writer.write_object_value("deviceAccount", @device_account)
                writer.write_string_value("deviceAccountEmail", @device_account_email)
                writer.write_string_value("exchangeServer", @exchange_server)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("passwordRotationEnabled", @password_rotation_enabled)
                writer.write_string_value("sessionInitiationProtocalAddress", @session_initiation_protocal_address)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sessionInitiationProtocalAddress property value. Not yet documented
            ## @return a string
            ## 
            def session_initiation_protocal_address
                return @session_initiation_protocal_address
            end
            ## 
            ## Sets the sessionInitiationProtocalAddress property value. Not yet documented
            ## @param value Value to set for the session_initiation_protocal_address property.
            ## @return a void
            ## 
            def session_initiation_protocal_address=(value)
                @session_initiation_protocal_address = value
            end
        end
    end
end
