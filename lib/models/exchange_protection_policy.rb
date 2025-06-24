require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExchangeProtectionPolicy < MicrosoftGraph::Models::ProtectionPolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The rules associated with the Exchange protection policy.
            @mailbox_inclusion_rules
            ## 
            # The protection units (mailboxes) that are  protected under the Exchange protection policy.
            @mailbox_protection_units
            ## 
            # The mailboxProtectionUnitsBulkAdditionJobs property
            @mailbox_protection_units_bulk_addition_jobs
            ## 
            ## Instantiates a new ExchangeProtectionPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.exchangeProtectionPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exchange_protection_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExchangeProtectionPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mailboxInclusionRules" => lambda {|n| @mailbox_inclusion_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MailboxProtectionRule.create_from_discriminator_value(pn) }) },
                    "mailboxProtectionUnits" => lambda {|n| @mailbox_protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MailboxProtectionUnit.create_from_discriminator_value(pn) }) },
                    "mailboxProtectionUnitsBulkAdditionJobs" => lambda {|n| @mailbox_protection_units_bulk_addition_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MailboxProtectionUnitsBulkAdditionJob.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the mailboxInclusionRules property value. The rules associated with the Exchange protection policy.
            ## @return a mailbox_protection_rule
            ## 
            def mailbox_inclusion_rules
                return @mailbox_inclusion_rules
            end
            ## 
            ## Sets the mailboxInclusionRules property value. The rules associated with the Exchange protection policy.
            ## @param value Value to set for the mailboxInclusionRules property.
            ## @return a void
            ## 
            def mailbox_inclusion_rules=(value)
                @mailbox_inclusion_rules = value
            end
            ## 
            ## Gets the mailboxProtectionUnits property value. The protection units (mailboxes) that are  protected under the Exchange protection policy.
            ## @return a mailbox_protection_unit
            ## 
            def mailbox_protection_units
                return @mailbox_protection_units
            end
            ## 
            ## Sets the mailboxProtectionUnits property value. The protection units (mailboxes) that are  protected under the Exchange protection policy.
            ## @param value Value to set for the mailboxProtectionUnits property.
            ## @return a void
            ## 
            def mailbox_protection_units=(value)
                @mailbox_protection_units = value
            end
            ## 
            ## Gets the mailboxProtectionUnitsBulkAdditionJobs property value. The mailboxProtectionUnitsBulkAdditionJobs property
            ## @return a mailbox_protection_units_bulk_addition_job
            ## 
            def mailbox_protection_units_bulk_addition_jobs
                return @mailbox_protection_units_bulk_addition_jobs
            end
            ## 
            ## Sets the mailboxProtectionUnitsBulkAdditionJobs property value. The mailboxProtectionUnitsBulkAdditionJobs property
            ## @param value Value to set for the mailboxProtectionUnitsBulkAdditionJobs property.
            ## @return a void
            ## 
            def mailbox_protection_units_bulk_addition_jobs=(value)
                @mailbox_protection_units_bulk_addition_jobs = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("mailboxInclusionRules", @mailbox_inclusion_rules)
                writer.write_collection_of_object_values("mailboxProtectionUnits", @mailbox_protection_units)
                writer.write_collection_of_object_values("mailboxProtectionUnitsBulkAdditionJobs", @mailbox_protection_units_bulk_addition_jobs)
            end
        end
    end
end
