require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './quartile_exc'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Quartile_Exc
                                class Quartile_ExcPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The array property
                                    @array
                                    ## 
                                    # The quart property
                                    @quart
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
                                    ## Gets the array property value. The array property
                                    ## @return a json
                                    ## 
                                    def array
                                        return @array
                                    end
                                    ## 
                                    ## Sets the array property value. The array property
                                    ## @param value Value to set for the array property.
                                    ## @return a void
                                    ## 
                                    def array=(value)
                                        @array = value
                                    end
                                    ## 
                                    ## Instantiates a new quartile_ExcPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a quartile_exc_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return Quartile_ExcPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "array" => lambda {|n| @array = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "quart" => lambda {|n| @quart = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the quart property value. The quart property
                                    ## @return a json
                                    ## 
                                    def quart
                                        return @quart
                                    end
                                    ## 
                                    ## Sets the quart property value. The quart property
                                    ## @param value Value to set for the quart property.
                                    ## @return a void
                                    ## 
                                    def quart=(value)
                                        @quart = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("array", @array)
                                        writer.write_object_value("quart", @quart)
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
