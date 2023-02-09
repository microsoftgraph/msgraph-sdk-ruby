require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewReviewerScope
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The query specifying who will be the reviewer.
            @query
            ## 
            # In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query, for example, ./manager, is specified. Possible value: decisions.
            @query_root
            ## 
            # The type of query. Examples include MicrosoftGraph and ARM.
            @query_type
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
            ## Instantiates a new accessReviewReviewerScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_reviewer_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewReviewerScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "query" => lambda {|n| @query = n.get_string_value() },
                    "queryRoot" => lambda {|n| @query_root = n.get_string_value() },
                    "queryType" => lambda {|n| @query_type = n.get_string_value() },
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
            ## Gets the query property value. The query specifying who will be the reviewer.
            ## @return a string
            ## 
            def query
                return @query
            end
            ## 
            ## Sets the query property value. The query specifying who will be the reviewer.
            ## @param value Value to set for the query property.
            ## @return a void
            ## 
            def query=(value)
                @query = value
            end
            ## 
            ## Gets the queryRoot property value. In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query, for example, ./manager, is specified. Possible value: decisions.
            ## @return a string
            ## 
            def query_root
                return @query_root
            end
            ## 
            ## Sets the queryRoot property value. In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query, for example, ./manager, is specified. Possible value: decisions.
            ## @param value Value to set for the query_root property.
            ## @return a void
            ## 
            def query_root=(value)
                @query_root = value
            end
            ## 
            ## Gets the queryType property value. The type of query. Examples include MicrosoftGraph and ARM.
            ## @return a string
            ## 
            def query_type
                return @query_type
            end
            ## 
            ## Sets the queryType property value. The type of query. Examples include MicrosoftGraph and ARM.
            ## @param value Value to set for the query_type property.
            ## @return a void
            ## 
            def query_type=(value)
                @query_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("query", @query)
                writer.write_string_value("queryRoot", @query_root)
                writer.write_string_value("queryType", @query_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
