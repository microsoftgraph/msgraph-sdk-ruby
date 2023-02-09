require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProvisionedPlan
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # For example, 'Enabled'.
            @capability_status
            ## 
            # The OdataType property
            @odata_type
            ## 
            # For example, 'Success'.
            @provisioning_status
            ## 
            # The name of the service; for example, 'AccessControlS2S'
            @service
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
            ## Gets the capabilityStatus property value. For example, 'Enabled'.
            ## @return a string
            ## 
            def capability_status
                return @capability_status
            end
            ## 
            ## Sets the capabilityStatus property value. For example, 'Enabled'.
            ## @param value Value to set for the capability_status property.
            ## @return a void
            ## 
            def capability_status=(value)
                @capability_status = value
            end
            ## 
            ## Instantiates a new provisionedPlan and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a provisioned_plan
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProvisionedPlan.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "capabilityStatus" => lambda {|n| @capability_status = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "provisioningStatus" => lambda {|n| @provisioning_status = n.get_string_value() },
                    "service" => lambda {|n| @service = n.get_string_value() },
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
            ## Gets the provisioningStatus property value. For example, 'Success'.
            ## @return a string
            ## 
            def provisioning_status
                return @provisioning_status
            end
            ## 
            ## Sets the provisioningStatus property value. For example, 'Success'.
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
                writer.write_string_value("capabilityStatus", @capability_status)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("provisioningStatus", @provisioning_status)
                writer.write_string_value("service", @service)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the service property value. The name of the service; for example, 'AccessControlS2S'
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. The name of the service; for example, 'AccessControlS2S'
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
        end
    end
end
