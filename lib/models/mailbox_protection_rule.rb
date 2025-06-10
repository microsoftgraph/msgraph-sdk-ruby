require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MailboxProtectionRule < MicrosoftGraph::Models::ProtectionRuleBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains a mailbox expression. For examples, see mailboxExpression examples.
            @mailbox_expression
            ## 
            ## Instantiates a new MailboxProtectionRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mailboxProtectionRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mailbox_protection_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MailboxProtectionRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mailboxExpression" => lambda {|n| @mailbox_expression = n.get_string_value() },
                })
            end
            ## 
            ## Gets the mailboxExpression property value. Contains a mailbox expression. For examples, see mailboxExpression examples.
            ## @return a string
            ## 
            def mailbox_expression
                return @mailbox_expression
            end
            ## 
            ## Sets the mailboxExpression property value. Contains a mailbox expression. For examples, see mailboxExpression examples.
            ## @param value Value to set for the mailboxExpression property.
            ## @return a void
            ## 
            def mailbox_expression=(value)
                @mailbox_expression = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("mailboxExpression", @mailbox_expression)
            end
        end
    end
end
