require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './fixed'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Fixed
                                class FixedPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The decimals property
                                    @decimals
                                    ## 
                                    # The noCommas property
                                    @no_commas
                                    ## 
                                    # The number property
                                    @number
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
                                    ## Instantiates a new fixedPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a fixed_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return FixedPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the decimals property value. The decimals property
                                    ## @return a json
                                    ## 
                                    def decimals
                                        return @decimals
                                    end
                                    ## 
                                    ## Sets the decimals property value. The decimals property
                                    ## @param value Value to set for the decimals property.
                                    ## @return a void
                                    ## 
                                    def decimals=(value)
                                        @decimals = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "decimals" => lambda {|n| @decimals = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "noCommas" => lambda {|n| @no_commas = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "number" => lambda {|n| @number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the noCommas property value. The noCommas property
                                    ## @return a json
                                    ## 
                                    def no_commas
                                        return @no_commas
                                    end
                                    ## 
                                    ## Sets the noCommas property value. The noCommas property
                                    ## @param value Value to set for the no_commas property.
                                    ## @return a void
                                    ## 
                                    def no_commas=(value)
                                        @no_commas = value
                                    end
                                    ## 
                                    ## Gets the number property value. The number property
                                    ## @return a json
                                    ## 
                                    def number
                                        return @number
                                    end
                                    ## 
                                    ## Sets the number property value. The number property
                                    ## @param value Value to set for the number property.
                                    ## @return a void
                                    ## 
                                    def number=(value)
                                        @number = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("decimals", @decimals)
                                        writer.write_object_value("noCommas", @no_commas)
                                        writer.write_object_value("number", @number)
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
