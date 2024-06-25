require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SubscribedSku < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique ID of the account this SKU belongs to.
            @account_id
            ## 
            # The name of the account this SKU belongs to.
            @account_name
            ## 
            # The target class for this SKU. Only SKUs with target class User are assignable. Possible values are: 'User', 'Company'.
            @applies_to
            ## 
            # Enabled indicates that the prepaidUnits property has at least one unit that is enabled. LockedOut indicates that the customer canceled their subscription. Possible values are: Enabled, Warning, Suspended, Deleted, LockedOut.
            @capability_status
            ## 
            # The number of licenses that have been assigned.
            @consumed_units
            ## 
            # Information about the number and status of prepaid licenses.
            @prepaid_units
            ## 
            # Information about the service plans that are available with the SKU. Not nullable.
            @service_plans
            ## 
            # The unique identifier (GUID) for the service SKU.
            @sku_id
            ## 
            # The SKU part number; for example: 'AAD_PREMIUM' or 'RMSBASIC'. To get a list of commercial subscriptions that an organization has acquired, see List subscribedSkus.
            @sku_part_number
            ## 
            # A list of all subscription IDs associated with this SKU.
            @subscription_ids
            ## 
            ## Gets the accountId property value. The unique ID of the account this SKU belongs to.
            ## @return a string
            ## 
            def account_id
                return @account_id
            end
            ## 
            ## Sets the accountId property value. The unique ID of the account this SKU belongs to.
            ## @param value Value to set for the accountId property.
            ## @return a void
            ## 
            def account_id=(value)
                @account_id = value
            end
            ## 
            ## Gets the accountName property value. The name of the account this SKU belongs to.
            ## @return a string
            ## 
            def account_name
                return @account_name
            end
            ## 
            ## Sets the accountName property value. The name of the account this SKU belongs to.
            ## @param value Value to set for the accountName property.
            ## @return a void
            ## 
            def account_name=(value)
                @account_name = value
            end
            ## 
            ## Gets the appliesTo property value. The target class for this SKU. Only SKUs with target class User are assignable. Possible values are: 'User', 'Company'.
            ## @return a string
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. The target class for this SKU. Only SKUs with target class User are assignable. Possible values are: 'User', 'Company'.
            ## @param value Value to set for the appliesTo property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Gets the capabilityStatus property value. Enabled indicates that the prepaidUnits property has at least one unit that is enabled. LockedOut indicates that the customer canceled their subscription. Possible values are: Enabled, Warning, Suspended, Deleted, LockedOut.
            ## @return a string
            ## 
            def capability_status
                return @capability_status
            end
            ## 
            ## Sets the capabilityStatus property value. Enabled indicates that the prepaidUnits property has at least one unit that is enabled. LockedOut indicates that the customer canceled their subscription. Possible values are: Enabled, Warning, Suspended, Deleted, LockedOut.
            ## @param value Value to set for the capabilityStatus property.
            ## @return a void
            ## 
            def capability_status=(value)
                @capability_status = value
            end
            ## 
            ## Instantiates a new SubscribedSku and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the consumedUnits property value. The number of licenses that have been assigned.
            ## @return a integer
            ## 
            def consumed_units
                return @consumed_units
            end
            ## 
            ## Sets the consumedUnits property value. The number of licenses that have been assigned.
            ## @param value Value to set for the consumedUnits property.
            ## @return a void
            ## 
            def consumed_units=(value)
                @consumed_units = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a subscribed_sku
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubscribedSku.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountId" => lambda {|n| @account_id = n.get_string_value() },
                    "accountName" => lambda {|n| @account_name = n.get_string_value() },
                    "appliesTo" => lambda {|n| @applies_to = n.get_string_value() },
                    "capabilityStatus" => lambda {|n| @capability_status = n.get_string_value() },
                    "consumedUnits" => lambda {|n| @consumed_units = n.get_number_value() },
                    "prepaidUnits" => lambda {|n| @prepaid_units = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LicenseUnitsDetail.create_from_discriminator_value(pn) }) },
                    "servicePlans" => lambda {|n| @service_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ServicePlanInfo.create_from_discriminator_value(pn) }) },
                    "skuId" => lambda {|n| @sku_id = n.get_guid_value() },
                    "skuPartNumber" => lambda {|n| @sku_part_number = n.get_string_value() },
                    "subscriptionIds" => lambda {|n| @subscription_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the prepaidUnits property value. Information about the number and status of prepaid licenses.
            ## @return a license_units_detail
            ## 
            def prepaid_units
                return @prepaid_units
            end
            ## 
            ## Sets the prepaidUnits property value. Information about the number and status of prepaid licenses.
            ## @param value Value to set for the prepaidUnits property.
            ## @return a void
            ## 
            def prepaid_units=(value)
                @prepaid_units = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("accountId", @account_id)
                writer.write_string_value("accountName", @account_name)
                writer.write_string_value("appliesTo", @applies_to)
                writer.write_string_value("capabilityStatus", @capability_status)
                writer.write_number_value("consumedUnits", @consumed_units)
                writer.write_object_value("prepaidUnits", @prepaid_units)
                writer.write_collection_of_object_values("servicePlans", @service_plans)
                writer.write_guid_value("skuId", @sku_id)
                writer.write_string_value("skuPartNumber", @sku_part_number)
                writer.write_collection_of_primitive_values("subscriptionIds", @subscription_ids)
            end
            ## 
            ## Gets the servicePlans property value. Information about the service plans that are available with the SKU. Not nullable.
            ## @return a service_plan_info
            ## 
            def service_plans
                return @service_plans
            end
            ## 
            ## Sets the servicePlans property value. Information about the service plans that are available with the SKU. Not nullable.
            ## @param value Value to set for the servicePlans property.
            ## @return a void
            ## 
            def service_plans=(value)
                @service_plans = value
            end
            ## 
            ## Gets the skuId property value. The unique identifier (GUID) for the service SKU.
            ## @return a guid
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. The unique identifier (GUID) for the service SKU.
            ## @param value Value to set for the skuId property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
            ## 
            ## Gets the skuPartNumber property value. The SKU part number; for example: 'AAD_PREMIUM' or 'RMSBASIC'. To get a list of commercial subscriptions that an organization has acquired, see List subscribedSkus.
            ## @return a string
            ## 
            def sku_part_number
                return @sku_part_number
            end
            ## 
            ## Sets the skuPartNumber property value. The SKU part number; for example: 'AAD_PREMIUM' or 'RMSBASIC'. To get a list of commercial subscriptions that an organization has acquired, see List subscribedSkus.
            ## @param value Value to set for the skuPartNumber property.
            ## @return a void
            ## 
            def sku_part_number=(value)
                @sku_part_number = value
            end
            ## 
            ## Gets the subscriptionIds property value. A list of all subscription IDs associated with this SKU.
            ## @return a string
            ## 
            def subscription_ids
                return @subscription_ids
            end
            ## 
            ## Sets the subscriptionIds property value. A list of all subscription IDs associated with this SKU.
            ## @param value Value to set for the subscriptionIds property.
            ## @return a void
            ## 
            def subscription_ids=(value)
                @subscription_ids = value
            end
        end
    end
end
