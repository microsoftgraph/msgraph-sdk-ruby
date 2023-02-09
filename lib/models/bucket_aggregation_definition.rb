require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BucketAggregationDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # True to specify the sort order as descending. The default is false, with the sort order as ascending. Optional.
            @is_descending
            ## 
            # The minimum number of items that should be present in the aggregation to be returned in a bucket. Optional.
            @minimum_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A filter to define a matching criteria. The key should start with the specified prefix to be returned in the response. Optional.
            @prefix_filter
            ## 
            # Specifies the manual ranges to compute the aggregations. This is only valid for non-string refiners of date or numeric type. Optional.
            @ranges
            ## 
            # The sortBy property
            @sort_by
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
            ## Instantiates a new bucketAggregationDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a bucket_aggregation_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BucketAggregationDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isDescending" => lambda {|n| @is_descending = n.get_boolean_value() },
                    "minimumCount" => lambda {|n| @minimum_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "prefixFilter" => lambda {|n| @prefix_filter = n.get_string_value() },
                    "ranges" => lambda {|n| @ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BucketAggregationRange.create_from_discriminator_value(pn) }) },
                    "sortBy" => lambda {|n| @sort_by = n.get_enum_value(MicrosoftGraph::Models::BucketAggregationSortProperty) },
                }
            end
            ## 
            ## Gets the isDescending property value. True to specify the sort order as descending. The default is false, with the sort order as ascending. Optional.
            ## @return a boolean
            ## 
            def is_descending
                return @is_descending
            end
            ## 
            ## Sets the isDescending property value. True to specify the sort order as descending. The default is false, with the sort order as ascending. Optional.
            ## @param value Value to set for the is_descending property.
            ## @return a void
            ## 
            def is_descending=(value)
                @is_descending = value
            end
            ## 
            ## Gets the minimumCount property value. The minimum number of items that should be present in the aggregation to be returned in a bucket. Optional.
            ## @return a integer
            ## 
            def minimum_count
                return @minimum_count
            end
            ## 
            ## Sets the minimumCount property value. The minimum number of items that should be present in the aggregation to be returned in a bucket. Optional.
            ## @param value Value to set for the minimum_count property.
            ## @return a void
            ## 
            def minimum_count=(value)
                @minimum_count = value
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
            ## Gets the prefixFilter property value. A filter to define a matching criteria. The key should start with the specified prefix to be returned in the response. Optional.
            ## @return a string
            ## 
            def prefix_filter
                return @prefix_filter
            end
            ## 
            ## Sets the prefixFilter property value. A filter to define a matching criteria. The key should start with the specified prefix to be returned in the response. Optional.
            ## @param value Value to set for the prefix_filter property.
            ## @return a void
            ## 
            def prefix_filter=(value)
                @prefix_filter = value
            end
            ## 
            ## Gets the ranges property value. Specifies the manual ranges to compute the aggregations. This is only valid for non-string refiners of date or numeric type. Optional.
            ## @return a bucket_aggregation_range
            ## 
            def ranges
                return @ranges
            end
            ## 
            ## Sets the ranges property value. Specifies the manual ranges to compute the aggregations. This is only valid for non-string refiners of date or numeric type. Optional.
            ## @param value Value to set for the ranges property.
            ## @return a void
            ## 
            def ranges=(value)
                @ranges = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isDescending", @is_descending)
                writer.write_number_value("minimumCount", @minimum_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("prefixFilter", @prefix_filter)
                writer.write_collection_of_object_values("ranges", @ranges)
                writer.write_enum_value("sortBy", @sort_by)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sortBy property value. The sortBy property
            ## @return a bucket_aggregation_sort_property
            ## 
            def sort_by
                return @sort_by
            end
            ## 
            ## Sets the sortBy property value. The sortBy property
            ## @param value Value to set for the sort_by property.
            ## @return a void
            ## 
            def sort_by=(value)
                @sort_by = value
            end
        end
    end
end
