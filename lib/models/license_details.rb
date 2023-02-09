require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LicenseDetails < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Information about the service plans assigned with the license. Read-only, Not nullable
            @service_plans
            ## 
            # Unique identifier (GUID) for the service SKU. Equal to the skuId property on the related SubscribedSku object. Read-only
            @sku_id
            ## 
            # Unique SKU display name. Equal to the skuPartNumber on the related SubscribedSku object; for example: 'AAD_Premium'. Read-only
            @sku_part_number
            ## 
            ## Instantiates a new licenseDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a license_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LicenseDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "servicePlans" => lambda {|n| @service_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServicePlanInfo.create_from_discriminator_value(pn) }) },
                    "skuId" => lambda {|n| @sku_id = n.get_guid_value() },
                    "skuPartNumber" => lambda {|n| @sku_part_number = n.get_string_value() },
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
                writer.write_collection_of_object_values("servicePlans", @service_plans)
                writer.write_guid_value("skuId", @sku_id)
                writer.write_string_value("skuPartNumber", @sku_part_number)
            end
            ## 
            ## Gets the servicePlans property value. Information about the service plans assigned with the license. Read-only, Not nullable
            ## @return a service_plan_info
            ## 
            def service_plans
                return @service_plans
            end
            ## 
            ## Sets the servicePlans property value. Information about the service plans assigned with the license. Read-only, Not nullable
            ## @param value Value to set for the service_plans property.
            ## @return a void
            ## 
            def service_plans=(value)
                @service_plans = value
            end
            ## 
            ## Gets the skuId property value. Unique identifier (GUID) for the service SKU. Equal to the skuId property on the related SubscribedSku object. Read-only
            ## @return a guid
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. Unique identifier (GUID) for the service SKU. Equal to the skuId property on the related SubscribedSku object. Read-only
            ## @param value Value to set for the sku_id property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
            ## 
            ## Gets the skuPartNumber property value. Unique SKU display name. Equal to the skuPartNumber on the related SubscribedSku object; for example: 'AAD_Premium'. Read-only
            ## @return a string
            ## 
            def sku_part_number
                return @sku_part_number
            end
            ## 
            ## Sets the skuPartNumber property value. Unique SKU display name. Equal to the skuPartNumber on the related SubscribedSku object; for example: 'AAD_Premium'. Read-only
            ## @param value Value to set for the sku_part_number property.
            ## @return a void
            ## 
            def sku_part_number=(value)
                @sku_part_number = value
            end
        end
    end
end
