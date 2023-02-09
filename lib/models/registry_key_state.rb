require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RegistryKeyState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A Windows registry hive : HKEY_CURRENT_CONFIG HKEY_CURRENT_USER HKEY_LOCAL_MACHINE/SAM HKEY_LOCAL_MACHINE/Security HKEY_LOCAL_MACHINE/Software HKEY_LOCAL_MACHINE/System HKEY_USERS/.Default. Possible values are: unknown, currentConfig, currentUser, localMachineSam, localMachineSecurity, localMachineSoftware, localMachineSystem, usersDefault.
            @hive
            ## 
            # Current (i.e. changed) registry key (excludes HIVE).
            @key
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Previous (i.e. before changed) registry key (excludes HIVE).
            @old_key
            ## 
            # Previous (i.e. before changed) registry key value data (contents).
            @old_value_data
            ## 
            # Previous (i.e. before changed) registry key value name.
            @old_value_name
            ## 
            # Operation that changed the registry key name and/or value. Possible values are: unknown, create, modify, delete.
            @operation
            ## 
            # Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
            @process_id
            ## 
            # Current (i.e. changed) registry key value data (contents).
            @value_data
            ## 
            # Current (i.e. changed) registry key value name
            @value_name
            ## 
            # Registry key value type REG_BINARY REG_DWORD REG_DWORD_LITTLE_ENDIAN REG_DWORD_BIG_ENDIANREG_EXPAND_SZ REG_LINK REG_MULTI_SZ REG_NONE REG_QWORD REG_QWORD_LITTLE_ENDIAN REG_SZ Possible values are: unknown, binary, dword, dwordLittleEndian, dwordBigEndian, expandSz, link, multiSz, none, qword, qwordlittleEndian, sz.
            @value_type
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
            ## Instantiates a new registryKeyState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a registry_key_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RegistryKeyState.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hive" => lambda {|n| @hive = n.get_enum_value(MicrosoftGraph::Models::RegistryHive) },
                    "key" => lambda {|n| @key = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "oldKey" => lambda {|n| @old_key = n.get_string_value() },
                    "oldValueData" => lambda {|n| @old_value_data = n.get_string_value() },
                    "oldValueName" => lambda {|n| @old_value_name = n.get_string_value() },
                    "operation" => lambda {|n| @operation = n.get_enum_value(MicrosoftGraph::Models::RegistryOperation) },
                    "processId" => lambda {|n| @process_id = n.get_number_value() },
                    "valueData" => lambda {|n| @value_data = n.get_string_value() },
                    "valueName" => lambda {|n| @value_name = n.get_string_value() },
                    "valueType" => lambda {|n| @value_type = n.get_enum_value(MicrosoftGraph::Models::RegistryValueType) },
                }
            end
            ## 
            ## Gets the hive property value. A Windows registry hive : HKEY_CURRENT_CONFIG HKEY_CURRENT_USER HKEY_LOCAL_MACHINE/SAM HKEY_LOCAL_MACHINE/Security HKEY_LOCAL_MACHINE/Software HKEY_LOCAL_MACHINE/System HKEY_USERS/.Default. Possible values are: unknown, currentConfig, currentUser, localMachineSam, localMachineSecurity, localMachineSoftware, localMachineSystem, usersDefault.
            ## @return a registry_hive
            ## 
            def hive
                return @hive
            end
            ## 
            ## Sets the hive property value. A Windows registry hive : HKEY_CURRENT_CONFIG HKEY_CURRENT_USER HKEY_LOCAL_MACHINE/SAM HKEY_LOCAL_MACHINE/Security HKEY_LOCAL_MACHINE/Software HKEY_LOCAL_MACHINE/System HKEY_USERS/.Default. Possible values are: unknown, currentConfig, currentUser, localMachineSam, localMachineSecurity, localMachineSoftware, localMachineSystem, usersDefault.
            ## @param value Value to set for the hive property.
            ## @return a void
            ## 
            def hive=(value)
                @hive = value
            end
            ## 
            ## Gets the key property value. Current (i.e. changed) registry key (excludes HIVE).
            ## @return a string
            ## 
            def key
                return @key
            end
            ## 
            ## Sets the key property value. Current (i.e. changed) registry key (excludes HIVE).
            ## @param value Value to set for the key property.
            ## @return a void
            ## 
            def key=(value)
                @key = value
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
            ## Gets the oldKey property value. Previous (i.e. before changed) registry key (excludes HIVE).
            ## @return a string
            ## 
            def old_key
                return @old_key
            end
            ## 
            ## Sets the oldKey property value. Previous (i.e. before changed) registry key (excludes HIVE).
            ## @param value Value to set for the old_key property.
            ## @return a void
            ## 
            def old_key=(value)
                @old_key = value
            end
            ## 
            ## Gets the oldValueData property value. Previous (i.e. before changed) registry key value data (contents).
            ## @return a string
            ## 
            def old_value_data
                return @old_value_data
            end
            ## 
            ## Sets the oldValueData property value. Previous (i.e. before changed) registry key value data (contents).
            ## @param value Value to set for the old_value_data property.
            ## @return a void
            ## 
            def old_value_data=(value)
                @old_value_data = value
            end
            ## 
            ## Gets the oldValueName property value. Previous (i.e. before changed) registry key value name.
            ## @return a string
            ## 
            def old_value_name
                return @old_value_name
            end
            ## 
            ## Sets the oldValueName property value. Previous (i.e. before changed) registry key value name.
            ## @param value Value to set for the old_value_name property.
            ## @return a void
            ## 
            def old_value_name=(value)
                @old_value_name = value
            end
            ## 
            ## Gets the operation property value. Operation that changed the registry key name and/or value. Possible values are: unknown, create, modify, delete.
            ## @return a registry_operation
            ## 
            def operation
                return @operation
            end
            ## 
            ## Sets the operation property value. Operation that changed the registry key name and/or value. Possible values are: unknown, create, modify, delete.
            ## @param value Value to set for the operation property.
            ## @return a void
            ## 
            def operation=(value)
                @operation = value
            end
            ## 
            ## Gets the processId property value. Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
            ## @return a integer
            ## 
            def process_id
                return @process_id
            end
            ## 
            ## Sets the processId property value. Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).
            ## @param value Value to set for the process_id property.
            ## @return a void
            ## 
            def process_id=(value)
                @process_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("hive", @hive)
                writer.write_string_value("key", @key)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("oldKey", @old_key)
                writer.write_string_value("oldValueData", @old_value_data)
                writer.write_string_value("oldValueName", @old_value_name)
                writer.write_enum_value("operation", @operation)
                writer.write_number_value("processId", @process_id)
                writer.write_string_value("valueData", @value_data)
                writer.write_string_value("valueName", @value_name)
                writer.write_enum_value("valueType", @value_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the valueData property value. Current (i.e. changed) registry key value data (contents).
            ## @return a string
            ## 
            def value_data
                return @value_data
            end
            ## 
            ## Sets the valueData property value. Current (i.e. changed) registry key value data (contents).
            ## @param value Value to set for the value_data property.
            ## @return a void
            ## 
            def value_data=(value)
                @value_data = value
            end
            ## 
            ## Gets the valueName property value. Current (i.e. changed) registry key value name
            ## @return a string
            ## 
            def value_name
                return @value_name
            end
            ## 
            ## Sets the valueName property value. Current (i.e. changed) registry key value name
            ## @param value Value to set for the value_name property.
            ## @return a void
            ## 
            def value_name=(value)
                @value_name = value
            end
            ## 
            ## Gets the valueType property value. Registry key value type REG_BINARY REG_DWORD REG_DWORD_LITTLE_ENDIAN REG_DWORD_BIG_ENDIANREG_EXPAND_SZ REG_LINK REG_MULTI_SZ REG_NONE REG_QWORD REG_QWORD_LITTLE_ENDIAN REG_SZ Possible values are: unknown, binary, dword, dwordLittleEndian, dwordBigEndian, expandSz, link, multiSz, none, qword, qwordlittleEndian, sz.
            ## @return a registry_value_type
            ## 
            def value_type
                return @value_type
            end
            ## 
            ## Sets the valueType property value. Registry key value type REG_BINARY REG_DWORD REG_DWORD_LITTLE_ENDIAN REG_DWORD_BIG_ENDIANREG_EXPAND_SZ REG_LINK REG_MULTI_SZ REG_NONE REG_QWORD REG_QWORD_LITTLE_ENDIAN REG_SZ Possible values are: unknown, binary, dword, dwordLittleEndian, dwordBigEndian, expandSz, link, multiSz, none, qword, qwordlittleEndian, sz.
            ## @param value Value to set for the value_type property.
            ## @return a void
            ## 
            def value_type=(value)
                @value_type = value
            end
        end
    end
end
