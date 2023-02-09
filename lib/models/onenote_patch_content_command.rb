require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnenotePatchContentCommand
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A string of well-formed HTML to add to the page, and any image or file binary data. If the content contains binary data, the request must be sent using the multipart/form-data content type with a 'Commands' part.
            @content
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The location to add the supplied content, relative to the target element. The possible values are: after (default) or before.
            @position
            ## 
            # The element to update. Must be the #<data-id> or the generated <id> of the element, or the body or title keyword.
            @target
            ## 
            ## Gets the action property value. The action property
            ## @return a onenote_patch_action_type
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
            ## Instantiates a new onenotePatchContentCommand and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. A string of well-formed HTML to add to the page, and any image or file binary data. If the content contains binary data, the request must be sent using the multipart/form-data content type with a 'Commands' part.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. A string of well-formed HTML to add to the page, and any image or file binary data. If the content contains binary data, the request must be sent using the multipart/form-data content type with a 'Commands' part.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote_patch_content_command
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnenotePatchContentCommand.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraph::Models::OnenotePatchActionType) },
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "position" => lambda {|n| @position = n.get_enum_value(MicrosoftGraph::Models::OnenotePatchInsertPosition) },
                    "target" => lambda {|n| @target = n.get_string_value() },
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
            ## Gets the position property value. The location to add the supplied content, relative to the target element. The possible values are: after (default) or before.
            ## @return a onenote_patch_insert_position
            ## 
            def position
                return @position
            end
            ## 
            ## Sets the position property value. The location to add the supplied content, relative to the target element. The possible values are: after (default) or before.
            ## @param value Value to set for the position property.
            ## @return a void
            ## 
            def position=(value)
                @position = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("action", @action)
                writer.write_string_value("content", @content)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("position", @position)
                writer.write_string_value("target", @target)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the target property value. The element to update. Must be the #<data-id> or the generated <id> of the element, or the body or title keyword.
            ## @return a string
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The element to update. Must be the #<data-id> or the generated <id> of the element, or the body or title keyword.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
