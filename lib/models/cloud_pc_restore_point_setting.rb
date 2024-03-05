require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcRestorePointSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The frequencyType property
            @frequency_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The userRestoreEnabled property
            @user_restore_enabled
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
            ## Instantiates a new CloudPcRestorePointSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_restore_point_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcRestorePointSetting.new
            end
            ## 
            ## Gets the frequencyType property value. The frequencyType property
            ## @return a cloud_pc_restore_point_frequency_type
            ## 
            def frequency_type
                return @frequency_type
            end
            ## 
            ## Sets the frequencyType property value. The frequencyType property
            ## @param value Value to set for the frequencyType property.
            ## @return a void
            ## 
            def frequency_type=(value)
                @frequency_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "frequencyType" => lambda {|n| @frequency_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcRestorePointFrequencyType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userRestoreEnabled" => lambda {|n| @user_restore_enabled = n.get_boolean_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_enum_value("frequencyType", @frequency_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("userRestoreEnabled", @user_restore_enabled)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userRestoreEnabled property value. The userRestoreEnabled property
            ## @return a boolean
            ## 
            def user_restore_enabled
                return @user_restore_enabled
            end
            ## 
            ## Sets the userRestoreEnabled property value. The userRestoreEnabled property
            ## @param value Value to set for the userRestoreEnabled property.
            ## @return a void
            ## 
            def user_restore_enabled=(value)
                @user_restore_enabled = value
            end
        end
    end
end
