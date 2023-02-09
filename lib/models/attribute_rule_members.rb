require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttributeRuleMembers < MicrosoftGraph::Models::SubjectSet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A description of the membership rule.
            @description
            ## 
            # Determines the allowed target users for this policy. For more information about the syntax of the membership rule, see Membership Rules syntax.
            @membership_rule
            ## 
            ## Instantiates a new AttributeRuleMembers and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.attributeRuleMembers"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attribute_rule_members
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeRuleMembers.new
            end
            ## 
            ## Gets the description property value. A description of the membership rule.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A description of the membership rule.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "membershipRule" => lambda {|n| @membership_rule = n.get_string_value() },
                })
            end
            ## 
            ## Gets the membershipRule property value. Determines the allowed target users for this policy. For more information about the syntax of the membership rule, see Membership Rules syntax.
            ## @return a string
            ## 
            def membership_rule
                return @membership_rule
            end
            ## 
            ## Sets the membershipRule property value. Determines the allowed target users for this policy. For more information about the syntax of the membership rule, see Membership Rules syntax.
            ## @param value Value to set for the membership_rule property.
            ## @return a void
            ## 
            def membership_rule=(value)
                @membership_rule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("membershipRule", @membership_rule)
            end
        end
    end
end
