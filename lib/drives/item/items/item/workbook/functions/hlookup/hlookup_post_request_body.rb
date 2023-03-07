require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './hlookup'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Hlookup
                                class HlookupPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The lookupValue property
                                    @lookup_value
                                    ## 
                                    # The rangeLookup property
                                    @range_lookup
                                    ## 
                                    # The rowIndexNum property
                                    @row_index_num
                                    ## 
                                    # The tableArray property
                                    @table_array
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
                                    ## Instantiates a new hlookupPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a hlookup_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return HlookupPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "lookupValue" => lambda {|n| @lookup_value = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rangeLookup" => lambda {|n| @range_lookup = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rowIndexNum" => lambda {|n| @row_index_num = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "tableArray" => lambda {|n| @table_array = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
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
                                    ## Gets the rangeLookup property value. The rangeLookup property
                                    ## @return a json
                                    ## 
                                    def range_lookup
                                        return @range_lookup
                                    end
                                    ## 
                                    ## Sets the rangeLookup property value. The rangeLookup property
                                    ## @param value Value to set for the range_lookup property.
                                    ## @return a void
                                    ## 
                                    def range_lookup=(value)
                                        @range_lookup = value
                                    end
                                    ## 
                                    ## Gets the rowIndexNum property value. The rowIndexNum property
                                    ## @return a json
                                    ## 
                                    def row_index_num
                                        return @row_index_num
                                    end
                                    ## 
                                    ## Sets the rowIndexNum property value. The rowIndexNum property
                                    ## @param value Value to set for the row_index_num property.
                                    ## @return a void
                                    ## 
                                    def row_index_num=(value)
                                        @row_index_num = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("lookupValue", @lookup_value)
                                        writer.write_object_value("rangeLookup", @range_lookup)
                                        writer.write_object_value("rowIndexNum", @row_index_num)
                                        writer.write_object_value("tableArray", @table_array)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the tableArray property value. The tableArray property
                                    ## @return a json
                                    ## 
                                    def table_array
                                        return @table_array
                                    end
                                    ## 
                                    ## Sets the tableArray property value. The tableArray property
                                    ## @param value Value to set for the table_array property.
                                    ## @return a void
                                    ## 
                                    def table_array=(value)
                                        @table_array = value
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
