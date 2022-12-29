require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class AccessReviewQueryScope < MicrosoftGraph::Models::AccessReviewScope
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The query representing what will be reviewed in an access review.
        @query
        ## 
        # In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query is specified. For example, ./manager.
        @query_root
        ## 
        # Indicates the type of query. Types include MicrosoftGraph and ARM.
        @query_type
        ## 
        ## Instantiates a new AccessReviewQueryScope and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.accessReviewQueryScope"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_review_query_scope
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.accessReviewInactiveUsersQueryScope"
                        return AccessReviewInactiveUsersQueryScope.new
                end
            end
            return AccessReviewQueryScope.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "query" => lambda {|n| @query = n.get_string_value() },
                "queryRoot" => lambda {|n| @query_root = n.get_string_value() },
                "queryType" => lambda {|n| @query_type = n.get_string_value() },
            })
        end
        ## 
        ## Gets the query property value. The query representing what will be reviewed in an access review.
        ## @return a string
        ## 
        def query
            return @query
        end
        ## 
        ## Sets the query property value. The query representing what will be reviewed in an access review.
        ## @param value Value to set for the query property.
        ## @return a void
        ## 
        def query=(value)
            @query = value
        end
        ## 
        ## Gets the queryRoot property value. In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query is specified. For example, ./manager.
        ## @return a string
        ## 
        def query_root
            return @query_root
        end
        ## 
        ## Sets the queryRoot property value. In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query is specified. For example, ./manager.
        ## @param value Value to set for the queryRoot property.
        ## @return a void
        ## 
        def query_root=(value)
            @query_root = value
        end
        ## 
        ## Gets the queryType property value. Indicates the type of query. Types include MicrosoftGraph and ARM.
        ## @return a string
        ## 
        def query_type
            return @query_type
        end
        ## 
        ## Sets the queryType property value. Indicates the type of query. Types include MicrosoftGraph and ARM.
        ## @param value Value to set for the queryType property.
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
            super
            writer.write_string_value("query", @query)
            writer.write_string_value("queryRoot", @query_root)
            writer.write_string_value("queryType", @query_type)
        end
    end
end
