require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VisualInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional. JSON object used to represent an icon which represents the application used to generate the activity
            @attribution
            ## 
            # Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
            @background_color
            ## 
            # Optional. Custom piece of data - JSON object used to provide custom content to render the activity in the Windows Shell UI
            @content
            ## 
            # Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
            @description
            ## 
            # Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
            @display_text
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
            ## Gets the attribution property value. Optional. JSON object used to represent an icon which represents the application used to generate the activity
            ## @return a image_info
            ## 
            def attribution
                return @attribution
            end
            ## 
            ## Sets the attribution property value. Optional. JSON object used to represent an icon which represents the application used to generate the activity
            ## @param value Value to set for the attribution property.
            ## @return a void
            ## 
            def attribution=(value)
                @attribution = value
            end
            ## 
            ## Gets the backgroundColor property value. Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
            ## @return a string
            ## 
            def background_color
                return @background_color
            end
            ## 
            ## Sets the backgroundColor property value. Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color
            ## @param value Value to set for the background_color property.
            ## @return a void
            ## 
            def background_color=(value)
                @background_color = value
            end
            ## 
            ## Instantiates a new visualInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. Optional. Custom piece of data - JSON object used to provide custom content to render the activity in the Windows Shell UI
            ## @return a json
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. Optional. Custom piece of data - JSON object used to provide custom content to render the activity in the Windows Shell UI
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a visual_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VisualInfo.new
            end
            ## 
            ## Gets the description property value. Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayText property value. Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
            ## @return a string
            ## 
            def display_text
                return @display_text
            end
            ## 
            ## Sets the displayText property value. Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)
            ## @param value Value to set for the display_text property.
            ## @return a void
            ## 
            def display_text=(value)
                @display_text = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attribution" => lambda {|n| @attribution = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ImageInfo.create_from_discriminator_value(pn) }) },
                    "backgroundColor" => lambda {|n| @background_color = n.get_string_value() },
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayText" => lambda {|n| @display_text = n.get_string_value() },
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
                writer.write_object_value("attribution", @attribution)
                writer.write_string_value("backgroundColor", @background_color)
                writer.write_object_value("content", @content)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayText", @display_text)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
