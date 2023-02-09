require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AggregationOption
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The bucketDefinition property
            @bucket_definition
            ## 
            # Computes aggregation on the field while the field exists in current entity type. Required.
            @field
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of searchBucket resources to be returned. This is not required when the range is provided manually in the search request. Optional.
            @size
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
            ## Gets the bucketDefinition property value. The bucketDefinition property
            ## @return a bucket_aggregation_definition
            ## 
            def bucket_definition
                return @bucket_definition
            end
            ## 
            ## Sets the bucketDefinition property value. The bucketDefinition property
            ## @param value Value to set for the bucket_definition property.
            ## @return a void
            ## 
            def bucket_definition=(value)
                @bucket_definition = value
            end
            ## 
            ## Instantiates a new aggregationOption and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a aggregation_option
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AggregationOption.new
            end
            ## 
            ## Gets the field property value. Computes aggregation on the field while the field exists in current entity type. Required.
            ## @return a string
            ## 
            def field
                return @field
            end
            ## 
            ## Sets the field property value. Computes aggregation on the field while the field exists in current entity type. Required.
            ## @param value Value to set for the field property.
            ## @return a void
            ## 
            def field=(value)
                @field = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bucketDefinition" => lambda {|n| @bucket_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BucketAggregationDefinition.create_from_discriminator_value(pn) }) },
                    "field" => lambda {|n| @field = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_number_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("bucketDefinition", @bucket_definition)
                writer.write_string_value("field", @field)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("size", @size)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the size property value. The number of searchBucket resources to be returned. This is not required when the range is provided manually in the search request. Optional.
            ## @return a integer
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The number of searchBucket resources to be returned. This is not required when the range is provided manually in the search request. Optional.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
        end
    end
end
