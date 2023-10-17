require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EndUserNotificationSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The notificationPreference property
            @notification_preference
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The positiveReinforcement property
            @positive_reinforcement
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
            ## Instantiates a new endUserNotificationSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a end_user_notification_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.noTrainingNotificationSetting"
                            return NoTrainingNotificationSetting.new
                        when "#microsoft.graph.trainingNotificationSetting"
                            return TrainingNotificationSetting.new
                    end
                end
                return EndUserNotificationSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "notificationPreference" => lambda {|n| @notification_preference = n.get_enum_value(MicrosoftGraph::Models::EndUserNotificationPreference) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "positiveReinforcement" => lambda {|n| @positive_reinforcement = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PositiveReinforcementNotification.create_from_discriminator_value(pn) }) },
                    "settingType" => lambda {|n| @setting_type = n.get_enum_value(MicrosoftGraph::Models::EndUserNotificationSettingType) },
                }
            end
            ## 
            ## Gets the notificationPreference property value. The notificationPreference property
            ## @return a end_user_notification_preference
            ## 
            def notification_preference
                return @notification_preference
            end
            ## 
            ## Sets the notificationPreference property value. The notificationPreference property
            ## @param value Value to set for the notificationPreference property.
            ## @return a void
            ## 
            def notification_preference=(value)
                @notification_preference = value
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
            ## Gets the positiveReinforcement property value. The positiveReinforcement property
            ## @return a positive_reinforcement_notification
            ## 
            def positive_reinforcement
                return @positive_reinforcement
            end
            ## 
            ## Sets the positiveReinforcement property value. The positiveReinforcement property
            ## @param value Value to set for the positiveReinforcement property.
            ## @return a void
            ## 
            def positive_reinforcement=(value)
                @positive_reinforcement = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("notificationPreference", @notification_preference)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("positiveReinforcement", @positive_reinforcement)
                writer.write_enum_value("settingType", @setting_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingType property value. The settingType property
            ## @return a end_user_notification_setting_type
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
