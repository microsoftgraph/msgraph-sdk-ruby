require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewNotificationRecipientQueryScope < MicrosoftGraph::Models::AccessReviewNotificationRecipientScope
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the query for who the recipients are. For example, /groups/{group id}/members for group members and /users/{user id} for a specific user.
            @query
            ## 
            # In the scenario where reviewers need to be specified dynamically, indicates the relative source of the query. This property is only required if a relative query (that is, ./manager) is specified.
            @query_root
            ## 
            # Indicates the type of query. Allowed value is MicrosoftGraph.
            @query_type
            ## 
            ## Instantiates a new AccessReviewNotificationRecipientQueryScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessReviewNotificationRecipientQueryScope"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_notification_recipient_query_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewNotificationRecipientQueryScope.new
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
            ## Gets the query property value. Represents the query for who the recipients are. For example, /groups/{group id}/members for group members and /users/{user id} for a specific user.
            ## @return a string
            ## 
            def query
                return @query
            end
            ## 
            ## Sets the query property value. Represents the query for who the recipients are. For example, /groups/{group id}/members for group members and /users/{user id} for a specific user.
            ## @param value Value to set for the query property.
            ## @return a void
            ## 
            def query=(value)
                @query = value
            end
            ## 
            ## Gets the queryRoot property value. In the scenario where reviewers need to be specified dynamically, indicates the relative source of the query. This property is only required if a relative query (that is, ./manager) is specified.
            ## @return a string
            ## 
            def query_root
                return @query_root
            end
            ## 
            ## Sets the queryRoot property value. In the scenario where reviewers need to be specified dynamically, indicates the relative source of the query. This property is only required if a relative query (that is, ./manager) is specified.
            ## @param value Value to set for the query_root property.
            ## @return a void
            ## 
            def query_root=(value)
                @query_root = value
            end
            ## 
            ## Gets the queryType property value. Indicates the type of query. Allowed value is MicrosoftGraph.
            ## @return a string
            ## 
            def query_type
                return @query_type
            end
            ## 
            ## Sets the queryType property value. Indicates the type of query. Allowed value is MicrosoftGraph.
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
                super
                writer.write_string_value("query", @query)
                writer.write_string_value("queryRoot", @query_root)
                writer.write_string_value("queryType", @query_type)
            end
        end
    end
end
