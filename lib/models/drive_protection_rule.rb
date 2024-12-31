require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveProtectionRule < MicrosoftGraph::Models::ProtectionRuleBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains a drive expression. For examples, see driveExpression examples.
            @drive_expression
            ## 
            ## Instantiates a new DriveProtectionRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.driveProtectionRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a drive_protection_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveProtectionRule.new
            end
            ## 
            ## Gets the driveExpression property value. Contains a drive expression. For examples, see driveExpression examples.
            ## @return a string
            ## 
            def drive_expression
                return @drive_expression
            end
            ## 
            ## Sets the driveExpression property value. Contains a drive expression. For examples, see driveExpression examples.
            ## @param value Value to set for the driveExpression property.
            ## @return a void
            ## 
            def drive_expression=(value)
                @drive_expression = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "driveExpression" => lambda {|n| @drive_expression = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("driveExpression", @drive_expression)
            end
        end
    end
end
