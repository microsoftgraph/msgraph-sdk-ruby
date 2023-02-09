require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CalendarSharingMessageAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # The actionType property
            @action_type
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The importance property
            @importance
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the action property value. The action property
            ## @return a calendar_sharing_action
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. The action property
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Gets the actionType property value. The actionType property
            ## @return a calendar_sharing_action_type
            ## 
            def action_type
                return @action_type
            end
            ## 
            ## Sets the actionType property value. The actionType property
            ## @param value Value to set for the action_type property.
            ## @return a void
            ## 
            def action_type=(value)
                @action_type = value
            end
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
            ## Instantiates a new calendarSharingMessageAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a calendar_sharing_message_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CalendarSharingMessageAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraph::Models::CalendarSharingAction) },
                    "actionType" => lambda {|n| @action_type = n.get_enum_value(MicrosoftGraph::Models::CalendarSharingActionType) },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraph::Models::CalendarSharingActionImportance) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the importance property value. The importance property
            ## @return a calendar_sharing_action_importance
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance property
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
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
                writer.write_enum_value("action", @action)
                writer.write_enum_value("actionType", @action_type)
                writer.write_enum_value("importance", @importance)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
