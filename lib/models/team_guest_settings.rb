require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class TeamGuestSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # If set to true, guests can add and update channels.
        @allow_create_update_channels
        ## 
        # If set to true, guests can delete channels.
        @allow_delete_channels
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the allowCreateUpdateChannels property value. If set to true, guests can add and update channels.
        ## @return a boolean
        ## 
        def allow_create_update_channels
            return @allow_create_update_channels
        end
        ## 
        ## Sets the allowCreateUpdateChannels property value. If set to true, guests can add and update channels.
        ## @param value Value to set for the allow_create_update_channels property.
        ## @return a void
        ## 
        def allow_create_update_channels=(value)
            @allow_create_update_channels = value
        end
        ## 
        ## Gets the allowDeleteChannels property value. If set to true, guests can delete channels.
        ## @return a boolean
        ## 
        def allow_delete_channels
            return @allow_delete_channels
        end
        ## 
        ## Sets the allowDeleteChannels property value. If set to true, guests can delete channels.
        ## @param value Value to set for the allow_delete_channels property.
        ## @return a void
        ## 
        def allow_delete_channels=(value)
            @allow_delete_channels = value
        end
        ## 
        ## Instantiates a new teamGuestSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a team_guest_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamGuestSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "allowCreateUpdateChannels" => lambda {|n| @allow_create_update_channels = n.get_boolean_value() },
                "allowDeleteChannels" => lambda {|n| @allow_delete_channels = n.get_boolean_value() },
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
            writer.write_boolean_value("allowCreateUpdateChannels", @allow_create_update_channels)
            writer.write_boolean_value("allowDeleteChannels", @allow_delete_channels)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
