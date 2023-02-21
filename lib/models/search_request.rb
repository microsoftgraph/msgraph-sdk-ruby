require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The aggregationFilters property
            @aggregation_filters
            ## 
            # The aggregations property
            @aggregations
            ## 
            # The contentSources property
            @content_sources
            ## 
            # The enableTopResults property
            @enable_top_results
            ## 
            # The entityTypes property
            @entity_types
            ## 
            # The fields property
            @fields
            ## 
            # The from property
            @from
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The query property
            @query
            ## 
            # The queryAlterationOptions property
            @query_alteration_options
            ## 
            # The region property
            @region
            ## 
            # The resultTemplateOptions property
            @result_template_options
            ## 
            # The sharePointOneDriveOptions property
            @share_point_one_drive_options
            ## 
            # The size property
            @size
            ## 
            # The sortProperties property
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
            ## Gets the aggregationFilters property value. The aggregationFilters property
            ## @return a string
            ## 
            def aggregation_filters
                return @aggregation_filters
            end
            ## 
            ## Sets the aggregationFilters property value. The aggregationFilters property
            ## @param value Value to set for the aggregation_filters property.
            ## @return a void
            ## 
            def aggregation_filters=(value)
                @aggregation_filters = value
            end
            ## 
            ## Gets the aggregations property value. The aggregations property
            ## @return a aggregation_option
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
            ## Instantiates a new searchRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentSources property value. The contentSources property
            ## @return a string
            ## 
            def content_sources
                return @content_sources
            end
            ## 
            ## Sets the contentSources property value. The contentSources property
            ## @param value Value to set for the content_sources property.
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
            ## Gets the enableTopResults property value. The enableTopResults property
            ## @return a boolean
            ## 
            def enable_top_results
                return @enable_top_results
            end
            ## 
            ## Sets the enableTopResults property value. The enableTopResults property
            ## @param value Value to set for the enable_top_results property.
            ## @return a void
            ## 
            def enable_top_results=(value)
                @enable_top_results = value
            end
            ## 
            ## Gets the entityTypes property value. The entityTypes property
            ## @return a entity_type
            ## 
            def entity_types
                return @entity_types
            end
            ## 
            ## Sets the entityTypes property value. The entityTypes property
            ## @param value Value to set for the entity_types property.
            ## @return a void
            ## 
            def entity_types=(value)
                @entity_types = value
            end
            ## 
            ## Gets the fields property value. The fields property
            ## @return a string
            ## 
            def fields
                return @fields
            end
            ## 
            ## Sets the fields property value. The fields property
            ## @param value Value to set for the fields property.
            ## @return a void
            ## 
            def fields=(value)
                @fields = value
            end
            ## 
            ## Gets the from property value. The from property
            ## @return a integer
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. The from property
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
                    "region" => lambda {|n| @region = n.get_string_value() },
                    "resultTemplateOptions" => lambda {|n| @result_template_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResultTemplateOption.create_from_discriminator_value(pn) }) },
                    "sharePointOneDriveOptions" => lambda {|n| @share_point_one_drive_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharePointOneDriveOptions.create_from_discriminator_value(pn) }) },
                    "size" => lambda {|n| @size = n.get_number_value() },
                    "sortProperties" => lambda {|n| @sort_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SortProperty.create_from_discriminator_value(pn) }) },
                }
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
            ## Gets the query property value. The query property
            ## @return a search_query
            ## 
            def query
                return @query
            end
            ## 
            ## Sets the query property value. The query property
            ## @param value Value to set for the query property.
            ## @return a void
            ## 
            def query=(value)
                @query = value
            end
            ## 
            ## Gets the queryAlterationOptions property value. The queryAlterationOptions property
            ## @return a search_alteration_options
            ## 
            def query_alteration_options
                return @query_alteration_options
            end
            ## 
            ## Sets the queryAlterationOptions property value. The queryAlterationOptions property
            ## @param value Value to set for the query_alteration_options property.
            ## @return a void
            ## 
            def query_alteration_options=(value)
                @query_alteration_options = value
            end
            ## 
            ## Gets the region property value. The region property
            ## @return a string
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The region property
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Gets the resultTemplateOptions property value. The resultTemplateOptions property
            ## @return a result_template_option
            ## 
            def result_template_options
                return @result_template_options
            end
            ## 
            ## Sets the resultTemplateOptions property value. The resultTemplateOptions property
            ## @param value Value to set for the result_template_options property.
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
                writer.write_string_value("region", @region)
                writer.write_object_value("resultTemplateOptions", @result_template_options)
                writer.write_object_value("sharePointOneDriveOptions", @share_point_one_drive_options)
                writer.write_number_value("size", @size)
                writer.write_collection_of_object_values("sortProperties", @sort_properties)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharePointOneDriveOptions property value. The sharePointOneDriveOptions property
            ## @return a share_point_one_drive_options
            ## 
            def share_point_one_drive_options
                return @share_point_one_drive_options
            end
            ## 
            ## Sets the sharePointOneDriveOptions property value. The sharePointOneDriveOptions property
            ## @param value Value to set for the share_point_one_drive_options property.
            ## @return a void
            ## 
            def share_point_one_drive_options=(value)
                @share_point_one_drive_options = value
            end
            ## 
            ## Gets the size property value. The size property
            ## @return a integer
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size property
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the sortProperties property value. The sortProperties property
            ## @return a sort_property
            ## 
            def sort_properties
                return @sort_properties
            end
            ## 
            ## Sets the sortProperties property value. The sortProperties property
            ## @param value Value to set for the sort_properties property.
            ## @return a void
            ## 
            def sort_properties=(value)
                @sort_properties = value
            end
        end
    end
end
