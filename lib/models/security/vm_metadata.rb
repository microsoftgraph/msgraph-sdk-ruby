require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class VmMetadata
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The cloudProvider property
                @cloud_provider
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Unique identifier of the Azure resource.
                @resource_id
                ## 
                # Unique identifier of the Azure subscription the customer tenant belongs to.
                @subscription_id
                ## 
                # Unique identifier of the virtual machine instance.
                @vm_id
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
                ## Gets the cloudProvider property value. The cloudProvider property
                ## @return a vm_cloud_provider
                ## 
                def cloud_provider
                    return @cloud_provider
                end
                ## 
                ## Sets the cloudProvider property value. The cloudProvider property
                ## @param value Value to set for the cloud_provider property.
                ## @return a void
                ## 
                def cloud_provider=(value)
                    @cloud_provider = value
                end
                ## 
                ## Instantiates a new vmMetadata and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a vm_metadata
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return VmMetadata.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "cloudProvider" => lambda {|n| @cloud_provider = n.get_enum_value(MicrosoftGraph::Models::Security::VmCloudProvider) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                        "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
                        "vmId" => lambda {|n| @vm_id = n.get_string_value() },
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
                ## Gets the resourceId property value. Unique identifier of the Azure resource.
                ## @return a string
                ## 
                def resource_id
                    return @resource_id
                end
                ## 
                ## Sets the resourceId property value. Unique identifier of the Azure resource.
                ## @param value Value to set for the resource_id property.
                ## @return a void
                ## 
                def resource_id=(value)
                    @resource_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("cloudProvider", @cloud_provider)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("resourceId", @resource_id)
                    writer.write_string_value("subscriptionId", @subscription_id)
                    writer.write_string_value("vmId", @vm_id)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the subscriptionId property value. Unique identifier of the Azure subscription the customer tenant belongs to.
                ## @return a string
                ## 
                def subscription_id
                    return @subscription_id
                end
                ## 
                ## Sets the subscriptionId property value. Unique identifier of the Azure subscription the customer tenant belongs to.
                ## @param value Value to set for the subscription_id property.
                ## @return a void
                ## 
                def subscription_id=(value)
                    @subscription_id = value
                end
                ## 
                ## Gets the vmId property value. Unique identifier of the virtual machine instance.
                ## @return a string
                ## 
                def vm_id
                    return @vm_id
                end
                ## 
                ## Sets the vmId property value. Unique identifier of the virtual machine instance.
                ## @param value Value to set for the vm_id property.
                ## @return a void
                ## 
                def vm_id=(value)
                    @vm_id = value
                end
            end
        end
    end
end
