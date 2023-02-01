require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_rightb'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRightb
    class RightbPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The numBytes property
        @num_bytes
        ## 
        # The text property
        @text
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
        ## Instantiates a new rightbPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a rightb_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RightbPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "numBytes" => lambda {|n| @num_bytes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the numBytes property value. The numBytes property
        ## @return a json
        ## 
        def num_bytes
            return @num_bytes
        end
        ## 
        ## Sets the numBytes property value. The numBytes property
        ## @param value Value to set for the num_bytes property.
        ## @return a void
        ## 
        def num_bytes=(value)
            @num_bytes = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("numBytes", @num_bytes)
            writer.write_object_value("text", @text)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the text property value. The text property
        ## @return a json
        ## 
        def text
            return @text
        end
        ## 
        ## Sets the text property value. The text property
        ## @param value Value to set for the text property.
        ## @return a void
        ## 
        def text=(value)
            @text = value
        end
    end
end
