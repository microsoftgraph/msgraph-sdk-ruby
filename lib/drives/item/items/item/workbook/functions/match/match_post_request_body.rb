require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './match'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Match
                                class MatchPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The lookupArray property
                                    @lookup_array
                                    ## 
                                    # The lookupValue property
                                    @lookup_value
                                    ## 
                                    # The matchType property
                                    @match_type
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
                                    ## Instantiates a new matchPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a match_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return MatchPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "lookupArray" => lambda {|n| @lookup_array = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "lookupValue" => lambda {|n| @lookup_value = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "matchType" => lambda {|n| @match_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the lookupArray property value. The lookupArray property
                                    ## @return a json
                                    ## 
                                    def lookup_array
                                        return @lookup_array
                                    end
                                    ## 
                                    ## Sets the lookupArray property value. The lookupArray property
                                    ## @param value Value to set for the lookup_array property.
                                    ## @return a void
                                    ## 
                                    def lookup_array=(value)
                                        @lookup_array = value
                                    end
                                    ## 
                                    ## Gets the lookupValue property value. The lookupValue property
                                    ## @return a json
                                    ## 
                                    def lookup_value
                                        return @lookup_value
                                    end
                                    ## 
                                    ## Sets the lookupValue property value. The lookupValue property
                                    ## @param value Value to set for the lookup_value property.
                                    ## @return a void
                                    ## 
                                    def lookup_value=(value)
                                        @lookup_value = value
                                    end
                                    ## 
                                    ## Gets the matchType property value. The matchType property
                                    ## @return a json
                                    ## 
                                    def match_type
                                        return @match_type
                                    end
                                    ## 
                                    ## Sets the matchType property value. The matchType property
                                    ## @param value Value to set for the match_type property.
                                    ## @return a void
                                    ## 
                                    def match_type=(value)
                                        @match_type = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("lookupArray", @lookup_array)
                                        writer.write_object_value("lookupValue", @lookup_value)
                                        writer.write_object_value("matchType", @match_type)
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
