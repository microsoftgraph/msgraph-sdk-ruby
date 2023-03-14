require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './hyp_geom_dist'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module HypGeom_Dist
                                class HypGeomDistPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The cumulative property
                                    @cumulative
                                    ## 
                                    # The numberPop property
                                    @number_pop
                                    ## 
                                    # The numberSample property
                                    @number_sample
                                    ## 
                                    # The populationS property
                                    @population_s
                                    ## 
                                    # The sampleS property
                                    @sample_s
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
                                    ## Instantiates a new HypGeomDistPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a hyp_geom_dist_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return HypGeomDistPostRequestBody.new
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
                                            "cumulative" => lambda {|n| @cumulative = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "numberPop" => lambda {|n| @number_pop = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "numberSample" => lambda {|n| @number_sample = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "populationS" => lambda {|n| @population_s = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "sampleS" => lambda {|n| @sample_s = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the numberPop property value. The numberPop property
                                    ## @return a json
                                    ## 
                                    def number_pop
                                        return @number_pop
                                    end
                                    ## 
                                    ## Sets the numberPop property value. The numberPop property
                                    ## @param value Value to set for the number_pop property.
                                    ## @return a void
                                    ## 
                                    def number_pop=(value)
                                        @number_pop = value
                                    end
                                    ## 
                                    ## Gets the numberSample property value. The numberSample property
                                    ## @return a json
                                    ## 
                                    def number_sample
                                        return @number_sample
                                    end
                                    ## 
                                    ## Sets the numberSample property value. The numberSample property
                                    ## @param value Value to set for the number_sample property.
                                    ## @return a void
                                    ## 
                                    def number_sample=(value)
                                        @number_sample = value
                                    end
                                    ## 
                                    ## Gets the populationS property value. The populationS property
                                    ## @return a json
                                    ## 
                                    def population_s
                                        return @population_s
                                    end
                                    ## 
                                    ## Sets the populationS property value. The populationS property
                                    ## @param value Value to set for the population_s property.
                                    ## @return a void
                                    ## 
                                    def population_s=(value)
                                        @population_s = value
                                    end
                                    ## 
                                    ## Gets the sampleS property value. The sampleS property
                                    ## @return a json
                                    ## 
                                    def sample_s
                                        return @sample_s
                                    end
                                    ## 
                                    ## Sets the sampleS property value. The sampleS property
                                    ## @param value Value to set for the sample_s property.
                                    ## @return a void
                                    ## 
                                    def sample_s=(value)
                                        @sample_s = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("cumulative", @cumulative)
                                        writer.write_object_value("numberPop", @number_pop)
                                        writer.write_object_value("numberSample", @number_sample)
                                        writer.write_object_value("populationS", @population_s)
                                        writer.write_object_value("sampleS", @sample_s)
                                        writer.write_additional_data(@additional_data)
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
