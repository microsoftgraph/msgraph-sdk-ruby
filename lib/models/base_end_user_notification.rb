require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BaseEndUserNotification
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The defaultLanguage property
            @default_language
            ## 
            # The endUserNotification property
            @end_user_notification
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new baseEndUserNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a base_end_user_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.positiveReinforcementNotification"
                            return PositiveReinforcementNotification.new
                        when "#microsoft.graph.simulationNotification"
                            return SimulationNotification.new
                        when "#microsoft.graph.trainingReminderNotification"
                            return TrainingReminderNotification.new
                    end
                end
                return BaseEndUserNotification.new
            end
            ## 
            ## Gets the defaultLanguage property value. The defaultLanguage property
            ## @return a string
            ## 
            def default_language
                return @default_language
            end
            ## 
            ## Sets the defaultLanguage property value. The defaultLanguage property
            ## @param value Value to set for the defaultLanguage property.
            ## @return a void
            ## 
            def default_language=(value)
                @default_language = value
            end
            ## 
            ## Gets the endUserNotification property value. The endUserNotification property
            ## @return a end_user_notification
            ## 
            def end_user_notification
                return @end_user_notification
            end
            ## 
            ## Sets the endUserNotification property value. The endUserNotification property
            ## @param value Value to set for the endUserNotification property.
            ## @return a void
            ## 
            def end_user_notification=(value)
                @end_user_notification = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultLanguage" => lambda {|n| @default_language = n.get_string_value() },
                    "endUserNotification" => lambda {|n| @end_user_notification = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EndUserNotification.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("defaultLanguage", @default_language)
                writer.write_object_value("endUserNotification", @end_user_notification)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
