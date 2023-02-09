require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchHitsContainer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The aggregations property
            @aggregations
            ## 
            # A collection of the search results.
            @hits
            ## 
            # Provides information if more results are available. Based on this information, you can adjust the from and size properties of the searchRequest accordingly.
            @more_results_available
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The total number of results. Note this is not the number of results on the page, but the total number of results satisfying the query.
            @total
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
            ## Gets the aggregations property value. The aggregations property
            ## @return a search_aggregation
            ## 
            def aggregations
                return @aggregations
            end
            ## 
            ## Sets the aggregations property value. The aggregations property
            ## @param value Value to set for the aggregations property.
            ## @return a void
            ## 
            def aggregations=(value)
                @aggregations = value
            end
            ## 
            ## Instantiates a new searchHitsContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a search_hits_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchHitsContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "aggregations" => lambda {|n| @aggregations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchAggregation.create_from_discriminator_value(pn) }) },
                    "hits" => lambda {|n| @hits = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchHit.create_from_discriminator_value(pn) }) },
                    "moreResultsAvailable" => lambda {|n| @more_results_available = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "total" => lambda {|n| @total = n.get_number_value() },
                }
            end
            ## 
            ## Gets the hits property value. A collection of the search results.
            ## @return a search_hit
            ## 
            def hits
                return @hits
            end
            ## 
            ## Sets the hits property value. A collection of the search results.
            ## @param value Value to set for the hits property.
            ## @return a void
            ## 
            def hits=(value)
                @hits = value
            end
            ## 
            ## Gets the moreResultsAvailable property value. Provides information if more results are available. Based on this information, you can adjust the from and size properties of the searchRequest accordingly.
            ## @return a boolean
            ## 
            def more_results_available
                return @more_results_available
            end
            ## 
            ## Sets the moreResultsAvailable property value. Provides information if more results are available. Based on this information, you can adjust the from and size properties of the searchRequest accordingly.
            ## @param value Value to set for the more_results_available property.
            ## @return a void
            ## 
            def more_results_available=(value)
                @more_results_available = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("aggregations", @aggregations)
                writer.write_collection_of_object_values("hits", @hits)
                writer.write_boolean_value("moreResultsAvailable", @more_results_available)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("total", @total)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the total property value. The total number of results. Note this is not the number of results on the page, but the total number of results satisfying the query.
            ## @return a integer
            ## 
            def total
                return @total
            end
            ## 
            ## Sets the total property value. The total number of results. Note this is not the number of results on the page, but the total number of results satisfying the query.
            ## @param value Value to set for the total property.
            ## @return a void
            ## 
            def total=(value)
                @total = value
            end
        end
    end
end
