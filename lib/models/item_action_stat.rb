require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemActionStat
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of times the action took place. Read-only.
            @action_count
            ## 
            # The number of distinct actors that performed the action. Read-only.
            @actor_count
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the actionCount property value. The number of times the action took place. Read-only.
            ## @return a integer
            ## 
            def action_count
                return @action_count
            end
            ## 
            ## Sets the actionCount property value. The number of times the action took place. Read-only.
            ## @param value Value to set for the action_count property.
            ## @return a void
            ## 
            def action_count=(value)
                @action_count = value
            end
            ## 
            ## Gets the actorCount property value. The number of distinct actors that performed the action. Read-only.
            ## @return a integer
            ## 
            def actor_count
                return @actor_count
            end
            ## 
            ## Sets the actorCount property value. The number of distinct actors that performed the action. Read-only.
            ## @param value Value to set for the actor_count property.
            ## @return a void
            ## 
            def actor_count=(value)
                @actor_count = value
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
            ## Instantiates a new itemActionStat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_action_stat
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemActionStat.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionCount" => lambda {|n| @action_count = n.get_number_value() },
                    "actorCount" => lambda {|n| @actor_count = n.get_number_value() },
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
                writer.write_number_value("actionCount", @action_count)
                writer.write_number_value("actorCount", @actor_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
