require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Process
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
            @account_name
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The full process invocation commandline including all parameters.
            @command_line
            ## 
            # Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Complex type containing file hashes (cryptographic and location-sensitive).
            @file_hash
            ## 
            # The integrity level of the process. Possible values are: unknown, untrusted, low, medium, high, system.
            @integrity_level
            ## 
            # True if the process is elevated.
            @is_elevated
            ## 
            # The name of the process' Image file.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @parent_process_created_date_time
            ## 
            # The Process ID (PID) of the parent process.
            @parent_process_id
            ## 
            # The name of the image file of the parent process.
            @parent_process_name
            ## 
            # Full path, including filename.
            @path
            ## 
            # The Process ID (PID) of the process.
            @process_id
            ## 
            ## Gets the accountName property value. User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.
            ## @param value Value to set for the account_name property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
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
            ## Gets the commandLine property value. The full process invocation commandline including all parameters.
            ## @return a string
            ## 
            def command_line
                return @command_line
            end
            ## 
            ## Sets the commandLine property value. The full process invocation commandline including all parameters.
            ## @param value Value to set for the command_line property.
            ## @return a void
            ## 
            def command_line=(value)
                @command_line = value
            end
            ## 
            ## Instantiates a new process and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a process
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Process.new
            end
            ## 
            ## Gets the fileHash property value. Complex type containing file hashes (cryptographic and location-sensitive).
            ## @return a file_hash
            ## 
            def file_hash
                return @file_hash
            end
            ## 
            ## Sets the fileHash property value. Complex type containing file hashes (cryptographic and location-sensitive).
            ## @param value Value to set for the file_hash property.
            ## @return a void
            ## 
            def file_hash=(value)
                @file_hash = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "commandLine" => lambda {|n| @command_line = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "fileHash" => lambda {|n| @file_hash = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileHash.create_from_discriminator_value(pn) }) },
                    "integrityLevel" => lambda {|n| @integrity_level = n.get_enum_value(MicrosoftGraph::Models::ProcessIntegrityLevel) },
                    "isElevated" => lambda {|n| @is_elevated = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parentProcessCreatedDateTime" => lambda {|n| @parent_process_created_date_time = n.get_date_time_value() },
                    "parentProcessId" => lambda {|n| @parent_process_id = n.get_number_value() },
                    "parentProcessName" => lambda {|n| @parent_process_name = n.get_string_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                    "processId" => lambda {|n| @process_id = n.get_number_value() },
                }
            end
            ## 
            ## Gets the integrityLevel property value. The integrity level of the process. Possible values are: unknown, untrusted, low, medium, high, system.
            ## @return a process_integrity_level
            ## 
            def integrity_level
                return @integrity_level
            end
            ## 
            ## Sets the integrityLevel property value. The integrity level of the process. Possible values are: unknown, untrusted, low, medium, high, system.
            ## @param value Value to set for the integrity_level property.
            ## @return a void
            ## 
            def integrity_level=(value)
                @integrity_level = value
            end
            ## 
            ## Gets the isElevated property value. True if the process is elevated.
            ## @return a boolean
            ## 
            def is_elevated
                return @is_elevated
            end
            ## 
            ## Sets the isElevated property value. True if the process is elevated.
            ## @param value Value to set for the is_elevated property.
            ## @return a void
            ## 
            def is_elevated=(value)
                @is_elevated = value
            end
            ## 
            ## Gets the name property value. The name of the process' Image file.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the process' Image file.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the parentProcessCreatedDateTime property value. DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def parent_process_created_date_time
                return @parent_process_created_date_time
            end
            ## 
            ## Sets the parentProcessCreatedDateTime property value. DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the parent_process_created_date_time property.
            ## @return a void
            ## 
            def parent_process_created_date_time=(value)
                @parent_process_created_date_time = value
            end
            ## 
            ## Gets the parentProcessId property value. The Process ID (PID) of the parent process.
            ## @return a integer
            ## 
            def parent_process_id
                return @parent_process_id
            end
            ## 
            ## Sets the parentProcessId property value. The Process ID (PID) of the parent process.
            ## @param value Value to set for the parent_process_id property.
            ## @return a void
            ## 
            def parent_process_id=(value)
                @parent_process_id = value
            end
            ## 
            ## Gets the parentProcessName property value. The name of the image file of the parent process.
            ## @return a string
            ## 
            def parent_process_name
                return @parent_process_name
            end
            ## 
            ## Sets the parentProcessName property value. The name of the image file of the parent process.
            ## @param value Value to set for the parent_process_name property.
            ## @return a void
            ## 
            def parent_process_name=(value)
                @parent_process_name = value
            end
            ## 
            ## Gets the path property value. Full path, including filename.
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. Full path, including filename.
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Gets the processId property value. The Process ID (PID) of the process.
            ## @return a integer
            ## 
            def process_id
                return @process_id
            end
            ## 
            ## Sets the processId property value. The Process ID (PID) of the process.
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
                writer.write_string_value("accountName", @account_name)
                writer.write_string_value("commandLine", @command_line)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("fileHash", @file_hash)
                writer.write_enum_value("integrityLevel", @integrity_level)
                writer.write_boolean_value("isElevated", @is_elevated)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("parentProcessCreatedDateTime", @parent_process_created_date_time)
                writer.write_number_value("parentProcessId", @parent_process_id)
                writer.write_string_value("parentProcessName", @parent_process_name)
                writer.write_string_value("path", @path)
                writer.write_number_value("processId", @process_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
