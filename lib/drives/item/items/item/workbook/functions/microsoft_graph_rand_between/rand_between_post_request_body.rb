require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_rand_between'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphRandBetween
    class RandBetweenPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The bottom property
        @bottom
        ## 
        # The top property
        @top
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
        ## Gets the bottom property value. The bottom property
        ## @return a json
        ## 
        def bottom
            return @bottom
        end
        ## 
        ## Sets the bottom property value. The bottom property
        ## @param value Value to set for the bottom property.
        ## @return a void
        ## 
        def bottom=(value)
            @bottom = value
        end
        ## 
        ## Instantiates a new randBetweenPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a rand_between_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RandBetweenPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "bottom" => lambda {|n| @bottom = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "top" => lambda {|n| @top = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("bottom", @bottom)
            writer.write_object_value("top", @top)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the top property value. The top property
        ## @return a json
        ## 
        def top
            return @top
        end
        ## 
        ## Sets the top property value. The top property
        ## @param value Value to set for the top property.
        ## @return a void
        ## 
        def top=(value)
            @top = value
        end
    end
end
