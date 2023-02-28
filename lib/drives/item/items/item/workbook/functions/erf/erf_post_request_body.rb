require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './erf'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Erf
                                class ErfPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The lowerLimit property
                                    @lower_limit
                                    ## 
                                    # The upperLimit property
                                    @upper_limit
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
                                    ## Instantiates a new erfPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a erf_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ErfPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "lowerLimit" => lambda {|n| @lower_limit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "upperLimit" => lambda {|n| @upper_limit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the lowerLimit property value. The lowerLimit property
                                    ## @return a json
                                    ## 
                                    def lower_limit
                                        return @lower_limit
                                    end
                                    ## 
                                    ## Sets the lowerLimit property value. The lowerLimit property
                                    ## @param value Value to set for the lower_limit property.
                                    ## @return a void
                                    ## 
                                    def lower_limit=(value)
                                        @lower_limit = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("lowerLimit", @lower_limit)
                                        writer.write_object_value("upperLimit", @upper_limit)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the upperLimit property value. The upperLimit property
                                    ## @return a json
                                    ## 
                                    def upper_limit
                                        return @upper_limit
                                    end
                                    ## 
                                    ## Sets the upperLimit property value. The upperLimit property
                                    ## @param value Value to set for the upper_limit property.
                                    ## @return a void
                                    ## 
                                    def upper_limit=(value)
                                        @upper_limit = value
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
