require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookFormatProtection < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if Excel hides the formula for the cells in the range. A null value indicates that the entire range doesn't have uniform formula hidden setting.
            @formula_hidden
            ## 
            # Indicates if Excel locks the cells in the object. A null value indicates that the entire range doesn't have uniform lock setting.
            @locked
            ## 
            ## Instantiates a new WorkbookFormatProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_format_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookFormatProtection.new
            end
            ## 
            ## Gets the formulaHidden property value. Indicates if Excel hides the formula for the cells in the range. A null value indicates that the entire range doesn't have uniform formula hidden setting.
            ## @return a boolean
            ## 
            def formula_hidden
                return @formula_hidden
            end
            ## 
            ## Sets the formulaHidden property value. Indicates if Excel hides the formula for the cells in the range. A null value indicates that the entire range doesn't have uniform formula hidden setting.
            ## @param value Value to set for the formula_hidden property.
            ## @return a void
            ## 
            def formula_hidden=(value)
                @formula_hidden = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "formulaHidden" => lambda {|n| @formula_hidden = n.get_boolean_value() },
                    "locked" => lambda {|n| @locked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the locked property value. Indicates if Excel locks the cells in the object. A null value indicates that the entire range doesn't have uniform lock setting.
            ## @return a boolean
            ## 
            def locked
                return @locked
            end
            ## 
            ## Sets the locked property value. Indicates if Excel locks the cells in the object. A null value indicates that the entire range doesn't have uniform lock setting.
            ## @param value Value to set for the locked property.
            ## @return a void
            ## 
            def locked=(value)
                @locked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("formulaHidden", @formula_hidden)
                writer.write_boolean_value("locked", @locked)
            end
        end
    end
end
