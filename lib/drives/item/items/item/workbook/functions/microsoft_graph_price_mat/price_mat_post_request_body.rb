require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_price_mat'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphPriceMat
    class PriceMatPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @basis
        @issue
        @maturity
        @rate
        @settlement
        @yld
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
        ## Gets the basis property value. 
        ## @return a json
        ## 
        def basis
            return @basis
        end
        ## 
        ## Sets the basis property value. 
        ## @param value Value to set for the basis property.
        ## @return a void
        ## 
        def basis=(value)
            @basis = value
        end
        ## 
        ## Instantiates a new priceMatPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a price_mat_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PriceMatPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "basis" => lambda {|n| @basis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "issue" => lambda {|n| @issue = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "maturity" => lambda {|n| @maturity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "settlement" => lambda {|n| @settlement = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "yld" => lambda {|n| @yld = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the issue property value. 
        ## @return a json
        ## 
        def issue
            return @issue
        end
        ## 
        ## Sets the issue property value. 
        ## @param value Value to set for the issue property.
        ## @return a void
        ## 
        def issue=(value)
            @issue = value
        end
        ## 
        ## Gets the maturity property value. 
        ## @return a json
        ## 
        def maturity
            return @maturity
        end
        ## 
        ## Sets the maturity property value. 
        ## @param value Value to set for the maturity property.
        ## @return a void
        ## 
        def maturity=(value)
            @maturity = value
        end
        ## 
        ## Gets the rate property value. 
        ## @return a json
        ## 
        def rate
            return @rate
        end
        ## 
        ## Sets the rate property value. 
        ## @param value Value to set for the rate property.
        ## @return a void
        ## 
        def rate=(value)
            @rate = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("basis", @basis)
            writer.write_object_value("issue", @issue)
            writer.write_object_value("maturity", @maturity)
            writer.write_object_value("rate", @rate)
            writer.write_object_value("settlement", @settlement)
            writer.write_object_value("yld", @yld)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the settlement property value. 
        ## @return a json
        ## 
        def settlement
            return @settlement
        end
        ## 
        ## Sets the settlement property value. 
        ## @param value Value to set for the settlement property.
        ## @return a void
        ## 
        def settlement=(value)
            @settlement = value
        end
        ## 
        ## Gets the yld property value. 
        ## @return a json
        ## 
        def yld
            return @yld
        end
        ## 
        ## Sets the yld property value. 
        ## @param value Value to set for the yld property.
        ## @return a void
        ## 
        def yld=(value)
            @yld = value
        end
    end
end