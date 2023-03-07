require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LobbyBypassSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
            @is_dial_in_bypass_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the type of participants that are automatically admitted into a meeting, bypassing the lobby. Optional.
            @scope
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
            ## Instantiates a new lobbyBypassSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a lobby_bypass_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LobbyBypassSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isDialInBypassEnabled" => lambda {|n| @is_dial_in_bypass_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scope" => lambda {|n| @scope = n.get_enum_value(MicrosoftGraph::Models::LobbyBypassScope) },
                }
            end
            ## 
            ## Gets the isDialInBypassEnabled property value. Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
            ## @return a boolean
            ## 
            def is_dial_in_bypass_enabled
                return @is_dial_in_bypass_enabled
            end
            ## 
            ## Sets the isDialInBypassEnabled property value. Specifies whether or not to always let dial-in callers bypass the lobby. Optional.
            ## @param value Value to set for the is_dial_in_bypass_enabled property.
            ## @return a void
            ## 
            def is_dial_in_bypass_enabled=(value)
                @is_dial_in_bypass_enabled = value
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
            ## Gets the scope property value. Specifies the type of participants that are automatically admitted into a meeting, bypassing the lobby. Optional.
            ## @return a lobby_bypass_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Specifies the type of participants that are automatically admitted into a meeting, bypassing the lobby. Optional.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isDialInBypassEnabled", @is_dial_in_bypass_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("scope", @scope)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
