require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Win32LobAppPowerShellScriptRule < MicrosoftGraph::Models::Win32LobAppRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The script output comparison value. Do not specify a value if the rule is used for detection.
            @comparison_value
            ## 
            # The display name for the rule. Do not specify this value if the rule is used for detection.
            @display_name
            ## 
            # A value indicating whether a signature check is enforced.
            @enforce_signature_check
            ## 
            # Contains all supported Powershell Script output detection type.
            @operation_type
            ## 
            # Contains properties for detection operator.
            @operator
            ## 
            # The execution context of the script. Do not specify this value if the rule is used for detection. Script detection rules will run in the same context as the associated app install context. Possible values are: system, user.
            @run_as_account
            ## 
            # A value indicating whether the script should run as 32-bit.
            @run_as32_bit
            ## 
            # The base64-encoded script content.
            @script_content
            ## 
            ## Gets the comparisonValue property value. The script output comparison value. Do not specify a value if the rule is used for detection.
            ## @return a string
            ## 
            def comparison_value
                return @comparison_value
            end
            ## 
            ## Sets the comparisonValue property value. The script output comparison value. Do not specify a value if the rule is used for detection.
            ## @param value Value to set for the comparison_value property.
            ## @return a void
            ## 
            def comparison_value=(value)
                @comparison_value = value
            end
            ## 
            ## Instantiates a new Win32LobAppPowerShellScriptRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobAppPowerShellScriptRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_power_shell_script_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppPowerShellScriptRule.new
            end
            ## 
            ## Gets the displayName property value. The display name for the rule. Do not specify this value if the rule is used for detection.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the rule. Do not specify this value if the rule is used for detection.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enforceSignatureCheck property value. A value indicating whether a signature check is enforced.
            ## @return a boolean
            ## 
            def enforce_signature_check
                return @enforce_signature_check
            end
            ## 
            ## Sets the enforceSignatureCheck property value. A value indicating whether a signature check is enforced.
            ## @param value Value to set for the enforce_signature_check property.
            ## @return a void
            ## 
            def enforce_signature_check=(value)
                @enforce_signature_check = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "comparisonValue" => lambda {|n| @comparison_value = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enforceSignatureCheck" => lambda {|n| @enforce_signature_check = n.get_boolean_value() },
                    "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppPowerShellScriptRuleOperationType) },
                    "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppRuleOperator) },
                    "runAsAccount" => lambda {|n| @run_as_account = n.get_enum_value(MicrosoftGraph::Models::RunAsAccountType) },
                    "runAs32Bit" => lambda {|n| @run_as32_bit = n.get_boolean_value() },
                    "scriptContent" => lambda {|n| @script_content = n.get_string_value() },
                })
            end
            ## 
            ## Gets the operationType property value. Contains all supported Powershell Script output detection type.
            ## @return a win32_lob_app_power_shell_script_rule_operation_type
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. Contains all supported Powershell Script output detection type.
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
            ## Gets the runAsAccount property value. The execution context of the script. Do not specify this value if the rule is used for detection. Script detection rules will run in the same context as the associated app install context. Possible values are: system, user.
            ## @return a run_as_account_type
            ## 
            def run_as_account
                return @run_as_account
            end
            ## 
            ## Sets the runAsAccount property value. The execution context of the script. Do not specify this value if the rule is used for detection. Script detection rules will run in the same context as the associated app install context. Possible values are: system, user.
            ## @param value Value to set for the run_as_account property.
            ## @return a void
            ## 
            def run_as_account=(value)
                @run_as_account = value
            end
            ## 
            ## Gets the runAs32Bit property value. A value indicating whether the script should run as 32-bit.
            ## @return a boolean
            ## 
            def run_as32_bit
                return @run_as32_bit
            end
            ## 
            ## Sets the runAs32Bit property value. A value indicating whether the script should run as 32-bit.
            ## @param value Value to set for the run_as32_bit property.
            ## @return a void
            ## 
            def run_as32_bit=(value)
                @run_as32_bit = value
            end
            ## 
            ## Gets the scriptContent property value. The base64-encoded script content.
            ## @return a string
            ## 
            def script_content
                return @script_content
            end
            ## 
            ## Sets the scriptContent property value. The base64-encoded script content.
            ## @param value Value to set for the script_content property.
            ## @return a void
            ## 
            def script_content=(value)
                @script_content = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("comparisonValue", @comparison_value)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("enforceSignatureCheck", @enforce_signature_check)
                writer.write_enum_value("operationType", @operation_type)
                writer.write_enum_value("operator", @operator)
                writer.write_enum_value("runAsAccount", @run_as_account)
                writer.write_boolean_value("runAs32Bit", @run_as32_bit)
                writer.write_string_value("scriptContent", @script_content)
            end
        end
    end
end
