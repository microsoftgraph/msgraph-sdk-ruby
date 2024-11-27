require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../reports'
require_relative '../../../../partners'
require_relative '../../../billing'
require_relative '../../usage'
require_relative '../billed'
require_relative './microsoft_graph_partners_billing_export'
require_relative '.models.partners.billing_attribute_set'

module MicrosoftGraph
    module Reports
        module Partners
            module Billing
                module Usage
                    module Billed
                        module MicrosoftGraphPartnersBillingExport
                            class ExportPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The attributeSet property
                                @attribute_set
                                ## 
                                # The invoiceId property
                                @invoice_id
                                ## 
                                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @return a i_dictionary
                                ## 
                                def additional_data
                                    return @additional_data
                                end
                                ## 
                                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @param value Value to set for the AdditionalData property.
                                ## @return a void
                                ## 
                                def additional_data=(value)
                                    @additional_data = value
                                end
                                ## 
                                ## Gets the attributeSet property value. The attributeSet property
                                ## @return a .models.partners.billing_attribute_set
                                ## 
                                def attribute_set
                                    return @attribute_set
                                end
                                ## 
                                ## Sets the attributeSet property value. The attributeSet property
                                ## @param value Value to set for the attributeSet property.
                                ## @return a void
                                ## 
                                def attribute_set=(value)
                                    @attribute_set = value
                                end
                                ## 
                                ## Instantiates a new ExportPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a export_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return ExportPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "attributeSet" => lambda {|n| @attribute_set = n.get_enum_value(MicrosoftGraph::Models::.models.partners.billingAttributeSet) },
                                        "invoiceId" => lambda {|n| @invoice_id = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Gets the invoiceId property value. The invoiceId property
                                ## @return a string
                                ## 
                                def invoice_id
                                    return @invoice_id
                                end
                                ## 
                                ## Sets the invoiceId property value. The invoiceId property
                                ## @param value Value to set for the invoiceId property.
                                ## @return a void
                                ## 
                                def invoice_id=(value)
                                    @invoice_id = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_enum_value("attributeSet", @attribute_set)
                                    writer.write_string_value("invoiceId", @invoice_id)
                                    writer.write_additional_data(@additional_data)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
