require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServicePlanInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The object the service plan can be assigned to. The possible values are:User - service plan can be assigned to individual users.Company - service plan can be assigned to the entire tenant.
            @applies_to
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The provisioning status of the service plan. The possible values are:Success - Service is fully provisioned.Disabled - Service has been disabled.ErrorStatus - The service plan has not been provisioned and is in an error state.PendingInput - Service is not yet provisioned; awaiting service confirmation.PendingActivation - Service is provisioned but requires explicit activation by administrator (for example, Intune_O365 service plan)PendingProvisioning - Microsoft has added a new service to the product SKU and it has not been activated in the tenant, yet.
            @provisioning_status
            ## 
            # The unique identifier of the service plan.
            @service_plan_id
            ## 
            # The name of the service plan.
            @service_plan_name
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appliesTo property value. The object the service plan can be assigned to. The possible values are:User - service plan can be assigned to individual users.Company - service plan can be assigned to the entire tenant.
            ## @return a string
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. The object the service plan can be assigned to. The possible values are:User - service plan can be assigned to individual users.Company - service plan can be assigned to the entire tenant.
            ## @param value Value to set for the applies_to property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new servicePlanInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_plan_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePlanInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appliesTo" => lambda {|n| @applies_to = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "provisioningStatus" => lambda {|n| @provisioning_status = n.get_string_value() },
                    "servicePlanId" => lambda {|n| @service_plan_id = n.get_guid_value() },
                    "servicePlanName" => lambda {|n| @service_plan_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the provisioningStatus property value. The provisioning status of the service plan. The possible values are:Success - Service is fully provisioned.Disabled - Service has been disabled.ErrorStatus - The service plan has not been provisioned and is in an error state.PendingInput - Service is not yet provisioned; awaiting service confirmation.PendingActivation - Service is provisioned but requires explicit activation by administrator (for example, Intune_O365 service plan)PendingProvisioning - Microsoft has added a new service to the product SKU and it has not been activated in the tenant, yet.
            ## @return a string
            ## 
            def provisioning_status
                return @provisioning_status
            end
            ## 
            ## Sets the provisioningStatus property value. The provisioning status of the service plan. The possible values are:Success - Service is fully provisioned.Disabled - Service has been disabled.ErrorStatus - The service plan has not been provisioned and is in an error state.PendingInput - Service is not yet provisioned; awaiting service confirmation.PendingActivation - Service is provisioned but requires explicit activation by administrator (for example, Intune_O365 service plan)PendingProvisioning - Microsoft has added a new service to the product SKU and it has not been activated in the tenant, yet.
            ## @param value Value to set for the provisioning_status property.
            ## @return a void
            ## 
            def provisioning_status=(value)
                @provisioning_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("appliesTo", @applies_to)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("provisioningStatus", @provisioning_status)
                writer.write_guid_value("servicePlanId", @service_plan_id)
                writer.write_string_value("servicePlanName", @service_plan_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePlanId property value. The unique identifier of the service plan.
            ## @return a guid
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. The unique identifier of the service plan.
            ## @param value Value to set for the service_plan_id property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
            ## 
            ## Gets the servicePlanName property value. The name of the service plan.
            ## @return a string
            ## 
            def service_plan_name
                return @service_plan_name
            end
            ## 
            ## Sets the servicePlanName property value. The name of the service plan.
            ## @param value Value to set for the service_plan_name property.
            ## @return a void
            ## 
            def service_plan_name=(value)
                @service_plan_name = value
            end
        end
    end
end
