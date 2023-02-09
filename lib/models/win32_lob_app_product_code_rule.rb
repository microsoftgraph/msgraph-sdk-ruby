require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Win32LobAppProductCodeRule < MicrosoftGraph::Models::Win32LobAppRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The product code of the app.
            @product_code
            ## 
            # The product version comparison value.
            @product_version
            ## 
            # Contains properties for detection operator.
            @product_version_operator
            ## 
            ## Instantiates a new Win32LobAppProductCodeRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobAppProductCodeRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_product_code_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppProductCodeRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "productCode" => lambda {|n| @product_code = n.get_string_value() },
                    "productVersion" => lambda {|n| @product_version = n.get_string_value() },
                    "productVersionOperator" => lambda {|n| @product_version_operator = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppRuleOperator) },
                })
            end
            ## 
            ## Gets the productCode property value. The product code of the app.
            ## @return a string
            ## 
            def product_code
                return @product_code
            end
            ## 
            ## Sets the productCode property value. The product code of the app.
            ## @param value Value to set for the product_code property.
            ## @return a void
            ## 
            def product_code=(value)
                @product_code = value
            end
            ## 
            ## Gets the productVersion property value. The product version comparison value.
            ## @return a string
            ## 
            def product_version
                return @product_version
            end
            ## 
            ## Sets the productVersion property value. The product version comparison value.
            ## @param value Value to set for the product_version property.
            ## @return a void
            ## 
            def product_version=(value)
                @product_version = value
            end
            ## 
            ## Gets the productVersionOperator property value. Contains properties for detection operator.
            ## @return a win32_lob_app_rule_operator
            ## 
            def product_version_operator
                return @product_version_operator
            end
            ## 
            ## Sets the productVersionOperator property value. Contains properties for detection operator.
            ## @param value Value to set for the product_version_operator property.
            ## @return a void
            ## 
            def product_version_operator=(value)
                @product_version_operator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("productCode", @product_code)
                writer.write_string_value("productVersion", @product_version)
                writer.write_enum_value("productVersionOperator", @product_version_operator)
            end
        end
    end
end
