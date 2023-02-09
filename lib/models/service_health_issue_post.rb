require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceHealthIssuePost
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The published time of the post.
            @created_date_time
            ## 
            # The content of the service issue post. The supported value for the contentType property is html.
            @description
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The post type of the service issue historical post. Possible values are: regular, quick, strategic, unknownFutureValue.
            @post_type
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
            ## Instantiates a new serviceHealthIssuePost and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The published time of the post.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The published time of the post.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_health_issue_post
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceHealthIssuePost.new
            end
            ## 
            ## Gets the description property value. The content of the service issue post. The supported value for the contentType property is html.
            ## @return a item_body
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The content of the service issue post. The supported value for the contentType property is html.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "postType" => lambda {|n| @post_type = n.get_enum_value(MicrosoftGraph::Models::PostType) },
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
            ## Gets the postType property value. The post type of the service issue historical post. Possible values are: regular, quick, strategic, unknownFutureValue.
            ## @return a post_type
            ## 
            def post_type
                return @post_type
            end
            ## 
            ## Sets the postType property value. The post type of the service issue historical post. Possible values are: regular, quick, strategic, unknownFutureValue.
            ## @param value Value to set for the post_type property.
            ## @return a void
            ## 
            def post_type=(value)
                @post_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("description", @description)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("postType", @post_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
