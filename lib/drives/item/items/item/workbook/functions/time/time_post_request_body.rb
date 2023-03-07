require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './time'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Time
                                class TimePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The hour property
                                    @hour
                                    ## 
                                    # The minute property
                                    @minute
                                    ## 
                                    # The second property
                                    @second
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
                                    ## Instantiates a new timePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a time_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return TimePostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "hour" => lambda {|n| @hour = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "minute" => lambda {|n| @minute = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "second" => lambda {|n| @second = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the hour property value. The hour property
                                    ## @return a json
                                    ## 
                                    def hour
                                        return @hour
                                    end
                                    ## 
                                    ## Sets the hour property value. The hour property
                                    ## @param value Value to set for the hour property.
                                    ## @return a void
                                    ## 
                                    def hour=(value)
                                        @hour = value
                                    end
                                    ## 
                                    ## Gets the minute property value. The minute property
                                    ## @return a json
                                    ## 
                                    def minute
                                        return @minute
                                    end
                                    ## 
                                    ## Sets the minute property value. The minute property
                                    ## @param value Value to set for the minute property.
                                    ## @return a void
                                    ## 
                                    def minute=(value)
                                        @minute = value
                                    end
                                    ## 
                                    ## Gets the second property value. The second property
                                    ## @return a json
                                    ## 
                                    def second
                                        return @second
                                    end
                                    ## 
                                    ## Sets the second property value. The second property
                                    ## @param value Value to set for the second property.
                                    ## @return a void
                                    ## 
                                    def second=(value)
                                        @second = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("hour", @hour)
                                        writer.write_object_value("minute", @minute)
                                        writer.write_object_value("second", @second)
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
