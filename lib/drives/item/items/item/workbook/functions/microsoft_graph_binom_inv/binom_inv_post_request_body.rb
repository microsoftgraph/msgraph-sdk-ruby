require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './microsoft_graph_binom_inv'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::MicrosoftGraphBinom_Inv
    class Binom_InvPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The alpha property
        @alpha
        ## 
        # The probabilityS property
        @probability_s
        ## 
        # The trials property
        @trials
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
        ## Gets the alpha property value. The alpha property
        ## @return a json
        ## 
        def alpha
            return @alpha
        end
        ## 
        ## Sets the alpha property value. The alpha property
        ## @param value Value to set for the alpha property.
        ## @return a void
        ## 
        def alpha=(value)
            @alpha = value
        end
        ## 
        ## Instantiates a new binom_InvPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a binom_inv_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Binom_InvPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "alpha" => lambda {|n| @alpha = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "probabilityS" => lambda {|n| @probability_s = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                "trials" => lambda {|n| @trials = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the probabilityS property value. The probabilityS property
        ## @return a json
        ## 
        def probability_s
            return @probability_s
        end
        ## 
        ## Sets the probabilityS property value. The probabilityS property
        ## @param value Value to set for the probability_s property.
        ## @return a void
        ## 
        def probability_s=(value)
            @probability_s = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("alpha", @alpha)
            writer.write_object_value("probabilityS", @probability_s)
            writer.write_object_value("trials", @trials)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the trials property value. The trials property
        ## @return a json
        ## 
        def trials
            return @trials
        end
        ## 
        ## Sets the trials property value. The trials property
        ## @param value Value to set for the trials property.
        ## @return a void
        ## 
        def trials=(value)
            @trials = value
        end
    end
end
