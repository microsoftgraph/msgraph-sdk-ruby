require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Win32LobAppFileSystemRule < MicrosoftGraph::Models::Win32LobAppRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A value indicating whether to expand environment variables in the 32-bit context on 64-bit systems.
            @check32_bit_on64_system
            ## 
            # The file or folder comparison value.
            @comparison_value
            ## 
            # The file or folder name to look up.
            @file_or_folder_name
            ## 
            # Contains all supported file system detection type.
            @operation_type
            ## 
            # Contains properties for detection operator.
            @operator
            ## 
            # The file or folder path to look up.
            @path
            ## 
            ## Gets the check32BitOn64System property value. A value indicating whether to expand environment variables in the 32-bit context on 64-bit systems.
            ## @return a boolean
            ## 
            def check32_bit_on64_system
                return @check32_bit_on64_system
            end
            ## 
            ## Sets the check32BitOn64System property value. A value indicating whether to expand environment variables in the 32-bit context on 64-bit systems.
            ## @param value Value to set for the check32_bit_on64_system property.
            ## @return a void
            ## 
            def check32_bit_on64_system=(value)
                @check32_bit_on64_system = value
            end
            ## 
            ## Gets the comparisonValue property value. The file or folder comparison value.
            ## @return a string
            ## 
            def comparison_value
                return @comparison_value
            end
            ## 
            ## Sets the comparisonValue property value. The file or folder comparison value.
            ## @param value Value to set for the comparison_value property.
            ## @return a void
            ## 
            def comparison_value=(value)
                @comparison_value = value
            end
            ## 
            ## Instantiates a new Win32LobAppFileSystemRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobAppFileSystemRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_file_system_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppFileSystemRule.new
            end
            ## 
            ## Gets the fileOrFolderName property value. The file or folder name to look up.
            ## @return a string
            ## 
            def file_or_folder_name
                return @file_or_folder_name
            end
            ## 
            ## Sets the fileOrFolderName property value. The file or folder name to look up.
            ## @param value Value to set for the file_or_folder_name property.
            ## @return a void
            ## 
            def file_or_folder_name=(value)
                @file_or_folder_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "check32BitOn64System" => lambda {|n| @check32_bit_on64_system = n.get_boolean_value() },
                    "comparisonValue" => lambda {|n| @comparison_value = n.get_string_value() },
                    "fileOrFolderName" => lambda {|n| @file_or_folder_name = n.get_string_value() },
                    "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppFileSystemOperationType) },
                    "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppRuleOperator) },
                    "path" => lambda {|n| @path = n.get_string_value() },
                })
            end
            ## 
            ## Gets the operationType property value. Contains all supported file system detection type.
            ## @return a win32_lob_app_file_system_operation_type
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. Contains all supported file system detection type.
            ## @param value Value to set for the operation_type property.
            ## @return a void
            ## 
            def operation_type=(value)
                @operation_type = value
            end
            ## 
            ## Gets the operator property value. Contains properties for detection operator.
            ## @return a win32_lob_app_rule_operator
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. Contains properties for detection operator.
            ## @param value Value to set for the operator property.
            ## @return a void
            ## 
            def operator=(value)
                @operator = value
            end
            ## 
            ## Gets the path property value. The file or folder path to look up.
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. The file or folder path to look up.
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("check32BitOn64System", @check32_bit_on64_system)
                writer.write_string_value("comparisonValue", @comparison_value)
                writer.write_string_value("fileOrFolderName", @file_or_folder_name)
                writer.write_enum_value("operationType", @operation_type)
                writer.write_enum_value("operator", @operator)
                writer.write_string_value("path", @path)
            end
        end
    end
end
