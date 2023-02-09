require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchBucket
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A token containing the encoded filter to aggregate search matches by the specific key value. To use the filter, pass the token as part of the aggregationFilter property in a searchRequest object, in the format '{field}:/'{aggregationFilterToken}/''. See an example.
            @aggregation_filter_token
            ## 
            # The approximate number of search matches that share the same value specified in the key property. Note that this number is not the exact number of matches.
            @count
            ## 
            # The discrete value of the field that an aggregation was computed on.
            @key
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the aggregationFilterToken property value. A token containing the encoded filter to aggregate search matches by the specific key value. To use the filter, pass the token as part of the aggregationFilter property in a searchRequest object, in the format '{field}:/'{aggregationFilterToken}/''. See an example.
            ## @return a string
            ## 
            def aggregation_filter_token
                return @aggregation_filter_token
            end
            ## 
            ## Sets the aggregationFilterToken property value. A token containing the encoded filter to aggregate search matches by the specific key value. To use the filter, pass the token as part of the aggregationFilter property in a searchRequest object, in the format '{field}:/'{aggregationFilterToken}/''. See an example.
            ## @param value Value to set for the aggregation_filter_token property.
            ## @return a void
            ## 
            def aggregation_filter_token=(value)
                @aggregation_filter_token = value
            end
            ## 
            ## Instantiates a new searchBucket and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the count property value. The approximate number of search matches that share the same value specified in the key property. Note that this number is not the exact number of matches.
            ## @return a integer
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. The approximate number of search matches that share the same value specified in the key property. Note that this number is not the exact number of matches.
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a search_bucket
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchBucket.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "aggregationFilterToken" => lambda {|n| @aggregation_filter_token = n.get_string_value() },
                    "count" => lambda {|n| @count = n.get_number_value() },
                    "key" => lambda {|n| @key = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the key property value. The discrete value of the field that an aggregation was computed on.
            ## @return a string
            ## 
            def key
                return @key
            end
            ## 
            ## Sets the key property value. The discrete value of the field that an aggregation was computed on.
            ## @param value Value to set for the key property.
            ## @return a void
            ## 
            def key=(value)
                @key = value
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
                writer.write_string_value("aggregationFilterToken", @aggregation_filter_token)
                writer.write_number_value("count", @count)
                writer.write_string_value("key", @key)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
