require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './lookup'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Lookup
                                class LookupPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The lookupValue property
                                    @lookup_value
                                    ## 
                                    # The lookupVector property
                                    @lookup_vector
                                    ## 
                                    # The resultVector property
                                    @result_vector
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
                                    ## Instantiates a new lookupPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a lookup_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return LookupPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "lookupValue" => lambda {|n| @lookup_value = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "lookupVector" => lambda {|n| @lookup_vector = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "resultVector" => lambda {|n| @result_vector = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
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
                                    ## Gets the lookupVector property value. The lookupVector property
                                    ## @return a json
                                    ## 
                                    def lookup_vector
                                        return @lookup_vector
                                    end
                                    ## 
                                    ## Sets the lookupVector property value. The lookupVector property
                                    ## @param value Value to set for the lookup_vector property.
                                    ## @return a void
                                    ## 
                                    def lookup_vector=(value)
                                        @lookup_vector = value
                                    end
                                    ## 
                                    ## Gets the resultVector property value. The resultVector property
                                    ## @return a json
                                    ## 
                                    def result_vector
                                        return @result_vector
                                    end
                                    ## 
                                    ## Sets the resultVector property value. The resultVector property
                                    ## @param value Value to set for the result_vector property.
                                    ## @return a void
                                    ## 
                                    def result_vector=(value)
                                        @result_vector = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("lookupValue", @lookup_value)
                                        writer.write_object_value("lookupVector", @lookup_vector)
                                        writer.write_object_value("resultVector", @result_vector)
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
