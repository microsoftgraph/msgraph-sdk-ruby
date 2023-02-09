require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LicenseUnitsDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of units that are enabled for the active subscription of the service SKU.
            @enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of units that are suspended because the subscription of the service SKU has been cancelled. The units cannot be assigned but can still be reactivated before they are deleted.
            @suspended
            ## 
            # The number of units that are in warning status. When the subscription of the service SKU has expired, the customer has a grace period to renew their subscription before it is cancelled (moved to a suspended state).
            @warning
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
            ## Instantiates a new licenseUnitsDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a license_units_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LicenseUnitsDetail.new
            end
            ## 
            ## Gets the enabled property value. The number of units that are enabled for the active subscription of the service SKU.
            ## @return a integer
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. The number of units that are enabled for the active subscription of the service SKU.
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enabled" => lambda {|n| @enabled = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "suspended" => lambda {|n| @suspended = n.get_number_value() },
                    "warning" => lambda {|n| @warning = n.get_number_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("enabled", @enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("suspended", @suspended)
                writer.write_number_value("warning", @warning)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the suspended property value. The number of units that are suspended because the subscription of the service SKU has been cancelled. The units cannot be assigned but can still be reactivated before they are deleted.
            ## @return a integer
            ## 
            def suspended
                return @suspended
            end
            ## 
            ## Sets the suspended property value. The number of units that are suspended because the subscription of the service SKU has been cancelled. The units cannot be assigned but can still be reactivated before they are deleted.
            ## @param value Value to set for the suspended property.
            ## @return a void
            ## 
            def suspended=(value)
                @suspended = value
            end
            ## 
            ## Gets the warning property value. The number of units that are in warning status. When the subscription of the service SKU has expired, the customer has a grace period to renew their subscription before it is cancelled (moved to a suspended state).
            ## @return a integer
            ## 
            def warning
                return @warning
            end
            ## 
            ## Sets the warning property value. The number of units that are in warning status. When the subscription of the service SKU has expired, the customer has a grace period to renew their subscription before it is cancelled (moved to a suspended state).
            ## @param value Value to set for the warning property.
            ## @return a void
            ## 
            def warning=(value)
                @warning = value
            end
        end
    end
end
