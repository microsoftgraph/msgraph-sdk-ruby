require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LicenseAssignmentState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The assignedByGroup property
            @assigned_by_group
            ## 
            # The disabledPlans property
            @disabled_plans
            ## 
            # The error property
            @error
            ## 
            # The lastUpdatedDateTime property
            @last_updated_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The skuId property
            @sku_id
            ## 
            # The state property
            @state
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
            ## Gets the assignedByGroup property value. The assignedByGroup property
            ## @return a string
            ## 
            def assigned_by_group
                return @assigned_by_group
            end
            ## 
            ## Sets the assignedByGroup property value. The assignedByGroup property
            ## @param value Value to set for the assigned_by_group property.
            ## @return a void
            ## 
            def assigned_by_group=(value)
                @assigned_by_group = value
            end
            ## 
            ## Instantiates a new licenseAssignmentState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a license_assignment_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LicenseAssignmentState.new
            end
            ## 
            ## Gets the disabledPlans property value. The disabledPlans property
            ## @return a guid
            ## 
            def disabled_plans
                return @disabled_plans
            end
            ## 
            ## Sets the disabledPlans property value. The disabledPlans property
            ## @param value Value to set for the disabled_plans property.
            ## @return a void
            ## 
            def disabled_plans=(value)
                @disabled_plans = value
            end
            ## 
            ## Gets the error property value. The error property
            ## @return a string
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error property
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignedByGroup" => lambda {|n| @assigned_by_group = n.get_string_value() },
                    "disabledPlans" => lambda {|n| @disabled_plans = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "error" => lambda {|n| @error = n.get_string_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "skuId" => lambda {|n| @sku_id = n.get_guid_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
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
                writer.write_string_value("assignedByGroup", @assigned_by_group)
                writer.write_collection_of_primitive_values("disabledPlans", @disabled_plans)
                writer.write_string_value("error", @error)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_guid_value("skuId", @sku_id)
                writer.write_string_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the skuId property value. The skuId property
            ## @return a guid
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. The skuId property
            ## @param value Value to set for the sku_id property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
