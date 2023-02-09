require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AssignedLicense
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A collection of the unique identifiers for plans that have been disabled.
            @disabled_plans
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier for the SKU.
            @sku_id
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
            ## Instantiates a new assignedLicense and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a assigned_license
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignedLicense.new
            end
            ## 
            ## Gets the disabledPlans property value. A collection of the unique identifiers for plans that have been disabled.
            ## @return a guid
            ## 
            def disabled_plans
                return @disabled_plans
            end
            ## 
            ## Sets the disabledPlans property value. A collection of the unique identifiers for plans that have been disabled.
            ## @param value Value to set for the disabled_plans property.
            ## @return a void
            ## 
            def disabled_plans=(value)
                @disabled_plans = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "disabledPlans" => lambda {|n| @disabled_plans = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "skuId" => lambda {|n| @sku_id = n.get_guid_value() },
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
                writer.write_collection_of_primitive_values("disabledPlans", @disabled_plans)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_guid_value("skuId", @sku_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the skuId property value. The unique identifier for the SKU.
            ## @return a guid
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. The unique identifier for the SKU.
            ## @param value Value to set for the sku_id property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
        end
    end
end
