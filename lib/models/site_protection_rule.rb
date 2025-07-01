require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SiteProtectionRule < MicrosoftGraph::Models::ProtectionRuleBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains a site expression. For examples, see siteExpression example.
            @site_expression
            ## 
            ## Instantiates a new SiteProtectionRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.siteProtectionRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site_protection_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SiteProtectionRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "siteExpression" => lambda {|n| @site_expression = n.get_string_value() },
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
                writer.write_string_value("siteExpression", @site_expression)
            end
            ## 
            ## Gets the siteExpression property value. Contains a site expression. For examples, see siteExpression example.
            ## @return a string
            ## 
            def site_expression
                return @site_expression
            end
            ## 
            ## Sets the siteExpression property value. Contains a site expression. For examples, see siteExpression example.
            ## @param value Value to set for the siteExpression property.
            ## @return a void
            ## 
            def site_expression=(value)
                @site_expression = value
            end
        end
    end
end
