require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../reports'
require_relative '../../../../partners'
require_relative '../../../billing'
require_relative '../../usage'
require_relative '../unbilled'
require_relative './microsoft_graph_partners_billing_export'
require_relative '.models.partners.billing_attribute_set'
require_relative '.models.partners.billing_billing_period'

module MicrosoftGraph
    module Reports
        module Partners
            module Billing
                module Usage
                    module Unbilled
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
                                # The billingPeriod property
                                @billing_period
                                ## 
                                # The currencyCode property
                                @currency_code
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
                                ## Gets the billingPeriod property value. The billingPeriod property
                                ## @return a .models.partners.billing_billing_period
                                ## 
                                def billing_period
                                    return @billing_period
                                end
                                ## 
                                ## Sets the billingPeriod property value. The billingPeriod property
                                ## @param value Value to set for the billingPeriod property.
                                ## @return a void
                                ## 
                                def billing_period=(value)
                                    @billing_period = value
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
                                ## Gets the currencyCode property value. The currencyCode property
                                ## @return a string
                                ## 
                                def currency_code
                                    return @currency_code
                                end
                                ## 
                                ## Sets the currencyCode property value. The currencyCode property
                                ## @param value Value to set for the currencyCode property.
                                ## @return a void
                                ## 
                                def currency_code=(value)
                                    @currency_code = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "attributeSet" => lambda {|n| @attribute_set = n.get_enum_value(MicrosoftGraph::Models::.models.partners.billingAttributeSet) },
                                        "billingPeriod" => lambda {|n| @billing_period = n.get_enum_value(MicrosoftGraph::Models::.models.partners.billingBillingPeriod) },
                                        "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_enum_value("attributeSet", @attribute_set)
                                    writer.write_enum_value("billingPeriod", @billing_period)
                                    writer.write_string_value("currencyCode", @currency_code)
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
