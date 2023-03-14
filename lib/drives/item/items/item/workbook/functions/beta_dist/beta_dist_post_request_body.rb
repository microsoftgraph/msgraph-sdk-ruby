require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './beta_dist'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Beta_Dist
                                class BetaDistPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # The A property
                                    @a
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The alpha property
                                    @alpha
                                    ## 
                                    # The B property
                                    @b
                                    ## 
                                    # The beta property
                                    @beta
                                    ## 
                                    # The cumulative property
                                    @cumulative
                                    ## 
                                    # The x property
                                    @x
                                    ## 
                                    ## Gets the a property value. The A property
                                    ## @return a json
                                    ## 
                                    def a
                                        return @a
                                    end
                                    ## 
                                    ## Sets the a property value. The A property
                                    ## @param value Value to set for the A property.
                                    ## @return a void
                                    ## 
                                    def a=(value)
                                        @a = value
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
                                    ## Gets the b property value. The B property
                                    ## @return a json
                                    ## 
                                    def b
                                        return @b
                                    end
                                    ## 
                                    ## Sets the b property value. The B property
                                    ## @param value Value to set for the B property.
                                    ## @return a void
                                    ## 
                                    def b=(value)
                                        @b = value
                                    end
                                    ## 
                                    ## Gets the beta property value. The beta property
                                    ## @return a json
                                    ## 
                                    def beta
                                        return @beta
                                    end
                                    ## 
                                    ## Sets the beta property value. The beta property
                                    ## @param value Value to set for the beta property.
                                    ## @return a void
                                    ## 
                                    def beta=(value)
                                        @beta = value
                                    end
                                    ## 
                                    ## Instantiates a new BetaDistPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a beta_dist_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return BetaDistPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the cumulative property value. The cumulative property
                                    ## @return a json
                                    ## 
                                    def cumulative
                                        return @cumulative
                                    end
                                    ## 
                                    ## Sets the cumulative property value. The cumulative property
                                    ## @param value Value to set for the cumulative property.
                                    ## @return a void
                                    ## 
                                    def cumulative=(value)
                                        @cumulative = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "A" => lambda {|n| @a = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "alpha" => lambda {|n| @alpha = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "B" => lambda {|n| @b = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "beta" => lambda {|n| @beta = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "cumulative" => lambda {|n| @cumulative = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "x" => lambda {|n| @x = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("A", @a)
                                        writer.write_object_value("alpha", @alpha)
                                        writer.write_object_value("B", @b)
                                        writer.write_object_value("beta", @beta)
                                        writer.write_object_value("cumulative", @cumulative)
                                        writer.write_object_value("x", @x)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the x property value. The x property
                                    ## @return a json
                                    ## 
                                    def x
                                        return @x
                                    end
                                    ## 
                                    ## Sets the x property value. The x property
                                    ## @param value Value to set for the x property.
                                    ## @return a void
                                    ## 
                                    def x=(value)
                                        @x = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
