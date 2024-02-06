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
            # Contains one or more filters to obtain search results aggregated and filtered to a specific value of a field. Optional.Build this filter based on a prior search that aggregates by the same field. From the response of the prior search, identify the searchBucket that filters results to the specific value of the field, use the string in its aggregationFilterToken property, and build an aggregation filter string in the format '{field}:/'{aggregationFilterToken}/''. If multiple values for the same field need to be provided, use the strings in its aggregationFilterToken property and build an aggregation filter string in the format '{field}:or(/'{aggregationFilterToken1}/',/'{aggregationFilterToken2}/')'. For example, searching and aggregating drive items by file type returns a searchBucket for the file type docx in the response. You can conveniently use the aggregationFilterToken returned for this searchBucket in a subsequent search query and filter matches down to drive items of the docx file type. Example 1 and example 2 show the actual requests and responses.
            @aggregation_filters
            ## 
            # Specifies aggregations (also known as refiners) to be returned alongside search results. Optional.
            @aggregations
            ## 
            # Contains the ordered collection of fields and limit to collapse results. Optional.
            @collapse_properties
            ## 
            # Contains the connection to be targeted.
            @content_sources
            ## 
            # This triggers hybrid sort for messages : the first 3 messages are the most relevant. This property is only applicable to entityType=message. Optional.
            @enable_top_results
            ## 
            # One or more types of resources expected in the response. Possible values are: event, message, driveItem, externalItem, site, list, listItem, drive, chatMessage, person, acronym, bookmark.  Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum:chatMessage, person, acronym, bookmark. See known limitations for those combinations of two or more entity types that are supported in the same search request. Required.
            @entity_types
            ## 
            # Contains the fields to be returned for each resource object specified in entityTypes, allowing customization of the fields returned by default; otherwise, including additional fields such as custom managed properties from SharePoint and OneDrive, or custom fields in externalItem from the content that Microsoft Graph connectors bring in. The fields property can use the semantic labels applied to properties. For example, if a property is labeled as title, you can retrieve it using the following syntax: label_title. Optional.
            @fields
            ## 
            # Specifies the offset for the search results. Offset 0 returns the very first result. Optional.
            @from
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The query property
            @query
            ## 
            # Query alteration options formatted in a JSON blob that contains two optional flags related to spelling correction. Optional.
            @query_alteration_options
            ## 
            # The geographic location for the search. Required for searches that use application permissions. For details, see Get the region value.
            @region
            ## 
            # Provides the search result template options to render search results from connectors.
            @result_template_options
            ## 
            # Indicates the kind of contents to be searched when a search is performed using application permissions. Optional.
            @share_point_one_drive_options
            ## 
            # The size of the page to be retrieved. The maximum value is 500. Optional.
            @size
            ## 
            # Contains the ordered collection of fields and direction to sort results. There can be at most 5 sort properties in the collection. Optional.
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the aggregationFilters property value. Contains one or more filters to obtain search results aggregated and filtered to a specific value of a field. Optional.Build this filter based on a prior search that aggregates by the same field. From the response of the prior search, identify the searchBucket that filters results to the specific value of the field, use the string in its aggregationFilterToken property, and build an aggregation filter string in the format '{field}:/'{aggregationFilterToken}/''. If multiple values for the same field need to be provided, use the strings in its aggregationFilterToken property and build an aggregation filter string in the format '{field}:or(/'{aggregationFilterToken1}/',/'{aggregationFilterToken2}/')'. For example, searching and aggregating drive items by file type returns a searchBucket for the file type docx in the response. You can conveniently use the aggregationFilterToken returned for this searchBucket in a subsequent search query and filter matches down to drive items of the docx file type. Example 1 and example 2 show the actual requests and responses.
            ## @return a string
            ## 
            def aggregation_filters
                return @aggregation_filters
            end
            ## 
            ## Sets the aggregationFilters property value. Contains one or more filters to obtain search results aggregated and filtered to a specific value of a field. Optional.Build this filter based on a prior search that aggregates by the same field. From the response of the prior search, identify the searchBucket that filters results to the specific value of the field, use the string in its aggregationFilterToken property, and build an aggregation filter string in the format '{field}:/'{aggregationFilterToken}/''. If multiple values for the same field need to be provided, use the strings in its aggregationFilterToken property and build an aggregation filter string in the format '{field}:or(/'{aggregationFilterToken1}/',/'{aggregationFilterToken2}/')'. For example, searching and aggregating drive items by file type returns a searchBucket for the file type docx in the response. You can conveniently use the aggregationFilterToken returned for this searchBucket in a subsequent search query and filter matches down to drive items of the docx file type. Example 1 and example 2 show the actual requests and responses.
            ## @param value Value to set for the aggregationFilters property.
            ## @return a void
            ## 
            def aggregation_filters=(value)
                @aggregation_filters = value
            end
            ## 
            ## Gets the aggregations property value. Specifies aggregations (also known as refiners) to be returned alongside search results. Optional.
            ## @return a aggregation_option
            ## 
            def aggregations
                return @aggregations
            end
            ## 
            ## Sets the aggregations property value. Specifies aggregations (also known as refiners) to be returned alongside search results. Optional.
            ## @param value Value to set for the aggregations property.
            ## @return a void
            ## 
            def aggregations=(value)
                @aggregations = value
            end
            ## 
            ## Gets the collapseProperties property value. Contains the ordered collection of fields and limit to collapse results. Optional.
            ## @return a collapse_property
            ## 
            def collapse_properties
                return @collapse_properties
            end
            ## 
            ## Sets the collapseProperties property value. Contains the ordered collection of fields and limit to collapse results. Optional.
            ## @param value Value to set for the collapseProperties property.
            ## @return a void
            ## 
            def collapse_properties=(value)
                @collapse_properties = value
            end
            ## 
            ## Instantiates a new searchRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentSources property value. Contains the connection to be targeted.
            ## @return a string
            ## 
            def content_sources
                return @content_sources
            end
            ## 
            ## Sets the contentSources property value. Contains the connection to be targeted.
            ## @param value Value to set for the contentSources property.
            ## @return a void
            ## 
            def content_sources=(value)
                @content_sources = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a search_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchRequest.new
            end
            ## 
            ## Gets the enableTopResults property value. This triggers hybrid sort for messages : the first 3 messages are the most relevant. This property is only applicable to entityType=message. Optional.
            ## @return a boolean
            ## 
            def enable_top_results
                return @enable_top_results
            end
            ## 
            ## Sets the enableTopResults property value. This triggers hybrid sort for messages : the first 3 messages are the most relevant. This property is only applicable to entityType=message. Optional.
            ## @param value Value to set for the enableTopResults property.
            ## @return a void
            ## 
            def enable_top_results=(value)
                @enable_top_results = value
            end
            ## 
            ## Gets the entityTypes property value. One or more types of resources expected in the response. Possible values are: event, message, driveItem, externalItem, site, list, listItem, drive, chatMessage, person, acronym, bookmark.  Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum:chatMessage, person, acronym, bookmark. See known limitations for those combinations of two or more entity types that are supported in the same search request. Required.
            ## @return a entity_type
            ## 
            def entity_types
                return @entity_types
            end
            ## 
            ## Sets the entityTypes property value. One or more types of resources expected in the response. Possible values are: event, message, driveItem, externalItem, site, list, listItem, drive, chatMessage, person, acronym, bookmark.  Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum:chatMessage, person, acronym, bookmark. See known limitations for those combinations of two or more entity types that are supported in the same search request. Required.
            ## @param value Value to set for the entityTypes property.
            ## @return a void
            ## 
            def entity_types=(value)
                @entity_types = value
            end
            ## 
            ## Gets the fields property value. Contains the fields to be returned for each resource object specified in entityTypes, allowing customization of the fields returned by default; otherwise, including additional fields such as custom managed properties from SharePoint and OneDrive, or custom fields in externalItem from the content that Microsoft Graph connectors bring in. The fields property can use the semantic labels applied to properties. For example, if a property is labeled as title, you can retrieve it using the following syntax: label_title. Optional.
            ## @return a string
            ## 
            def fields
                return @fields
            end
            ## 
            ## Sets the fields property value. Contains the fields to be returned for each resource object specified in entityTypes, allowing customization of the fields returned by default; otherwise, including additional fields such as custom managed properties from SharePoint and OneDrive, or custom fields in externalItem from the content that Microsoft Graph connectors bring in. The fields property can use the semantic labels applied to properties. For example, if a property is labeled as title, you can retrieve it using the following syntax: label_title. Optional.
            ## @param value Value to set for the fields property.
            ## @return a void
            ## 
            def fields=(value)
                @fields = value
            end
            ## 
            ## Gets the from property value. Specifies the offset for the search results. Offset 0 returns the very first result. Optional.
            ## @return a integer
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. Specifies the offset for the search results. Offset 0 returns the very first result. Optional.
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
                    "collapseProperties" => lambda {|n| @collapse_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CollapseProperty.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the @odata.type property.
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
            ## Gets the queryAlterationOptions property value. Query alteration options formatted in a JSON blob that contains two optional flags related to spelling correction. Optional.
            ## @return a search_alteration_options
            ## 
            def query_alteration_options
                return @query_alteration_options
            end
            ## 
            ## Sets the queryAlterationOptions property value. Query alteration options formatted in a JSON blob that contains two optional flags related to spelling correction. Optional.
            ## @param value Value to set for the queryAlterationOptions property.
            ## @return a void
            ## 
            def query_alteration_options=(value)
                @query_alteration_options = value
            end
            ## 
            ## Gets the region property value. The geographic location for the search. Required for searches that use application permissions. For details, see Get the region value.
            ## @return a string
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The geographic location for the search. Required for searches that use application permissions. For details, see Get the region value.
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Gets the resultTemplateOptions property value. Provides the search result template options to render search results from connectors.
            ## @return a result_template_option
            ## 
            def result_template_options
                return @result_template_options
            end
            ## 
            ## Sets the resultTemplateOptions property value. Provides the search result template options to render search results from connectors.
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
                writer.write_collection_of_primitive_values("aggregationFilters", @aggregation_filters) unless @aggregation_filters.nil?
                writer.write_collection_of_object_values("aggregations", @aggregations) unless @aggregations.nil?
                writer.write_collection_of_object_values("collapseProperties", @collapse_properties) unless @collapse_properties.nil?
                writer.write_collection_of_primitive_values("contentSources", @content_sources) unless @content_sources.nil?
                writer.write_boolean_value("enableTopResults", @enable_top_results) unless @enable_top_results.nil?
                writer.write_collection_of_object_values("entityTypes", @entity_types) unless @entity_types.nil?
                writer.write_collection_of_primitive_values("fields", @fields) unless @fields.nil?
                writer.write_number_value("from", @from) unless @from.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_object_value("query", @query) unless @query.nil?
                writer.write_object_value("queryAlterationOptions", @query_alteration_options) unless @query_alteration_options.nil?
                writer.write_string_value("region", @region) unless @region.nil?
                writer.write_object_value("resultTemplateOptions", @result_template_options) unless @result_template_options.nil?
                writer.write_object_value("sharePointOneDriveOptions", @share_point_one_drive_options) unless @share_point_one_drive_options.nil?
                writer.write_number_value("size", @size) unless @size.nil?
                writer.write_collection_of_object_values("sortProperties", @sort_properties) unless @sort_properties.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the sharePointOneDriveOptions property value. Indicates the kind of contents to be searched when a search is performed using application permissions. Optional.
            ## @return a share_point_one_drive_options
            ## 
            def share_point_one_drive_options
                return @share_point_one_drive_options
            end
            ## 
            ## Sets the sharePointOneDriveOptions property value. Indicates the kind of contents to be searched when a search is performed using application permissions. Optional.
            ## @param value Value to set for the sharePointOneDriveOptions property.
            ## @return a void
            ## 
            def share_point_one_drive_options=(value)
                @share_point_one_drive_options = value
            end
            ## 
            ## Gets the size property value. The size of the page to be retrieved. The maximum value is 500. Optional.
            ## @return a integer
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size of the page to be retrieved. The maximum value is 500. Optional.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the sortProperties property value. Contains the ordered collection of fields and direction to sort results. There can be at most 5 sort properties in the collection. Optional.
            ## @return a sort_property
            ## 
            def sort_properties
                return @sort_properties
            end
            ## 
            ## Sets the sortProperties property value. Contains the ordered collection of fields and direction to sort results. There can be at most 5 sort properties in the collection. Optional.
            ## @param value Value to set for the sortProperties property.
            ## @return a void
            ## 
            def sort_properties=(value)
                @sort_properties = value
            end
        end
    end
end
