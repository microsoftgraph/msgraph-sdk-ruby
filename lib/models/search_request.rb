require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class SearchRequest
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        @aggregation_filters
        @aggregations
        @content_sources
        @enable_top_results
        @entity_types
        @fields
        @from
        @odata_type
        @query
        @query_alteration_options
        @result_template_options
        @size
        @sort_properties
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
        ## Gets the aggregationFilters property value. 
        ## @return a string
        ## 
        def aggregation_filters
            return @aggregation_filters
        end
        ## 
        ## Sets the aggregationFilters property value. 
        ## @param value Value to set for the aggregationFilters property.
        ## @return a void
        ## 
        def aggregation_filters=(value)
            @aggregation_filters = value
        end
        ## 
        ## Gets the aggregations property value. 
        ## @return a aggregation_option
        ## 
        def aggregations
            return @aggregations
        end
        ## 
        ## Sets the aggregations property value. 
        ## @param value Value to set for the aggregations property.
        ## @return a void
        ## 
        def aggregations=(value)
            @aggregations = value
        end
        ## 
        ## Instantiates a new searchRequest and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the contentSources property value. 
        ## @return a string
        ## 
        def content_sources
            return @content_sources
        end
        ## 
        ## Sets the contentSources property value. 
        ## @param value Value to set for the contentSources property.
        ## @return a void
        ## 
        def content_sources=(value)
            @content_sources = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a search_request
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SearchRequest.new
        end
        ## 
        ## Gets the enableTopResults property value. 
        ## @return a boolean
        ## 
        def enable_top_results
            return @enable_top_results
        end
        ## 
        ## Sets the enableTopResults property value. 
        ## @param value Value to set for the enableTopResults property.
        ## @return a void
        ## 
        def enable_top_results=(value)
            @enable_top_results = value
        end
        ## 
        ## Gets the entityTypes property value. 
        ## @return a entity_type
        ## 
        def entity_types
            return @entity_types
        end
        ## 
        ## Sets the entityTypes property value. 
        ## @param value Value to set for the entityTypes property.
        ## @return a void
        ## 
        def entity_types=(value)
            @entity_types = value
        end
        ## 
        ## Gets the fields property value. 
        ## @return a string
        ## 
        def fields
            return @fields
        end
        ## 
        ## Sets the fields property value. 
        ## @param value Value to set for the fields property.
        ## @return a void
        ## 
        def fields=(value)
            @fields = value
        end
        ## 
        ## Gets the from property value. 
        ## @return a integer
        ## 
        def from
            return @from
        end
        ## 
        ## Sets the from property value. 
        ## @param value Value to set for the from property.
        ## @return a void
        ## 
        def from=(value)
            @from = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "aggregationFilters" => lambda {|n| @aggregation_filters = n.get_collection_of_primitive_values(String) },
                "aggregations" => lambda {|n| @aggregations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AggregationOption.create_from_discriminator_value(pn) }) },
                "contentSources" => lambda {|n| @content_sources = n.get_collection_of_primitive_values(String) },
                "enableTopResults" => lambda {|n| @enable_top_results = n.get_boolean_value() },
                "entityTypes" => lambda {|n| @entity_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EntityType.create_from_discriminator_value(pn) }) },
                "fields" => lambda {|n| @fields = n.get_collection_of_primitive_values(String) },
                "from" => lambda {|n| @from = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "query" => lambda {|n| @query = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SearchQuery.create_from_discriminator_value(pn) }) },
                "queryAlterationOptions" => lambda {|n| @query_alteration_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SearchAlterationOptions.create_from_discriminator_value(pn) }) },
                "resultTemplateOptions" => lambda {|n| @result_template_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResultTemplateOption.create_from_discriminator_value(pn) }) },
                "size" => lambda {|n| @size = n.get_number_value() },
                "sortProperties" => lambda {|n| @sort_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SortProperty.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the @odata.type property value. 
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. 
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the query property value. 
        ## @return a search_query
        ## 
        def query
            return @query
        end
        ## 
        ## Sets the query property value. 
        ## @param value Value to set for the query property.
        ## @return a void
        ## 
        def query=(value)
            @query = value
        end
        ## 
        ## Gets the queryAlterationOptions property value. 
        ## @return a search_alteration_options
        ## 
        def query_alteration_options
            return @query_alteration_options
        end
        ## 
        ## Sets the queryAlterationOptions property value. 
        ## @param value Value to set for the queryAlterationOptions property.
        ## @return a void
        ## 
        def query_alteration_options=(value)
            @query_alteration_options = value
        end
        ## 
        ## Gets the resultTemplateOptions property value. 
        ## @return a result_template_option
        ## 
        def result_template_options
            return @result_template_options
        end
        ## 
        ## Sets the resultTemplateOptions property value. 
        ## @param value Value to set for the resultTemplateOptions property.
        ## @return a void
        ## 
        def result_template_options=(value)
            @result_template_options = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("aggregationFilters", @aggregation_filters)
            writer.write_collection_of_object_values("aggregations", @aggregations)
            writer.write_collection_of_primitive_values("contentSources", @content_sources)
            writer.write_boolean_value("enableTopResults", @enable_top_results)
            writer.write_collection_of_object_values("entityTypes", @entity_types)
            writer.write_collection_of_primitive_values("fields", @fields)
            writer.write_number_value("from", @from)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("query", @query)
            writer.write_object_value("queryAlterationOptions", @query_alteration_options)
            writer.write_object_value("resultTemplateOptions", @result_template_options)
            writer.write_number_value("size", @size)
            writer.write_collection_of_object_values("sortProperties", @sort_properties)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the size property value. 
        ## @return a integer
        ## 
        def size
            return @size
        end
        ## 
        ## Sets the size property value. 
        ## @param value Value to set for the size property.
        ## @return a void
        ## 
        def size=(value)
            @size = value
        end
        ## 
        ## Gets the sortProperties property value. 
        ## @return a sort_property
        ## 
        def sort_properties
            return @sort_properties
        end
        ## 
        ## Sets the sortProperties property value. 
        ## @param value Value to set for the sortProperties property.
        ## @return a void
        ## 
        def sort_properties=(value)
            @sort_properties = value
        end
    end
end
