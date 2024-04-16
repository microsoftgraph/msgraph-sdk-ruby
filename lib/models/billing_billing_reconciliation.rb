require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class .models.partners.billingBillingReconciliation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The billed property
            @billed
            ## 
            ## Gets the billed property value. The billed property
            ## @return a .models.partners.billing_billed_reconciliation
            ## 
            def billed
                return @billed
            end
            ## 
            ## Sets the billed property value. The billed property
            ## @param value Value to set for the billed property.
            ## @return a void
            ## 
            def billed=(value)
                @billed = value
            end
            ## 
            ## Instantiates a new .models.partners.billingBillingReconciliation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a .models.partners.billing_billing_reconciliation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return .models.partners.billingBillingReconciliation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "billed" => lambda {|n| @billed = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::.models.partners.billingBilledReconciliation.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("billed", @billed)
            end
        end
    end
end
