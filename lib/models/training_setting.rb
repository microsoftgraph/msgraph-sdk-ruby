require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TrainingSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The settingType property
            @setting_type
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
            ## Instantiates a new trainingSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.customTrainingSetting"
                            return CustomTrainingSetting.new
                        when "#microsoft.graph.microsoftCustomTrainingSetting"
                            return MicrosoftCustomTrainingSetting.new
                        when "#microsoft.graph.microsoftManagedTrainingSetting"
                            return MicrosoftManagedTrainingSetting.new
                        when "#microsoft.graph.microsoftTrainingAssignmentMapping"
                            return MicrosoftTrainingAssignmentMapping.new
                        when "#microsoft.graph.noTrainingSetting"
                            return NoTrainingSetting.new
                    end
                end
                return TrainingSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingType" => lambda {|n| @setting_type = n.get_enum_value(MicrosoftGraph::Models::TrainingSettingType) },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("settingType", @setting_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingType property value. The settingType property
            ## @return a training_setting_type
            ## 
            def setting_type
                return @setting_type
            end
            ## 
            ## Sets the settingType property value. The settingType property
            ## @param value Value to set for the settingType property.
            ## @return a void
            ## 
            def setting_type=(value)
                @setting_type = value
            end
        end
    end
end
