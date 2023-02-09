require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # A base complex type to store the detection or requirement rule data for a Win32 LOB app.
        class Win32LobAppRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Contains rule types for Win32 LOB apps.
            @rule_type
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
            ## Instantiates a new win32LobAppRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.win32LobAppFileSystemRule"
                            return Win32LobAppFileSystemRule.new
                        when "#microsoft.graph.win32LobAppPowerShellScriptRule"
                            return Win32LobAppPowerShellScriptRule.new
                        when "#microsoft.graph.win32LobAppProductCodeRule"
                            return Win32LobAppProductCodeRule.new
                        when "#microsoft.graph.win32LobAppRegistryRule"
                            return Win32LobAppRegistryRule.new
                    end
                end
                return Win32LobAppRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ruleType" => lambda {|n| @rule_type = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppRuleType) },
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
            ## Gets the ruleType property value. Contains rule types for Win32 LOB apps.
            ## @return a win32_lob_app_rule_type
            ## 
            def rule_type
                return @rule_type
            end
            ## 
            ## Sets the ruleType property value. Contains rule types for Win32 LOB apps.
            ## @param value Value to set for the rule_type property.
            ## @return a void
            ## 
            def rule_type=(value)
                @rule_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("ruleType", @rule_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
