require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PartnersModelModelModelModelModelModelModelModel < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents billing details for billed and unbilled data.
            @billing
            ## 
            ## Gets the billing property value. Represents billing details for billed and unbilled data.
            ## @return a .models.partners.billing_billing
            ## 
            def billing
                return @billing
            end
            ## 
            ## Sets the billing property value. Represents billing details for billed and unbilled data.
            ## @param value Value to set for the billing property.
            ## @return a void
            ## 
            def billing=(value)
                @billing = value
            end
            ## 
            ## Instantiates a new PartnersModelModelModelModelModelModelModelModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a partners_model_model_model_model_model_model_model_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PartnersModelModelModelModelModelModelModelModel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "billing" => lambda {|n| @billing = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::.models.partners.billingBilling.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("billing", @billing)
            end
        end
    end
end
