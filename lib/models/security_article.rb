require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityArticle < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The body property
            @body
            ## 
            # The date and time when this article was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # URL of the header image for this article, used for display purposes.
            @image_url
            ## 
            # Indicators related to this article.
            @indicators
            ## 
            # Indicates whether this article is currently featured by Microsoft.
            @is_featured
            ## 
            # The most recent date and time when this article was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_updated_date_time
            ## 
            # The summary property
            @summary
            ## 
            # Tags for this article, communicating keywords, or key concepts.
            @tags
            ## 
            # The title of this article.
            @title
            ## 
            ## Gets the body property value. The body property
            ## @return a security_formatted_content
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body property
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Instantiates a new securityArticle and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when this article was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when this article was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_article
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityArticle.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFormattedContent.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "imageUrl" => lambda {|n| @image_url = n.get_string_value() },
                    "indicators" => lambda {|n| @indicators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityArticleIndicator.create_from_discriminator_value(pn) }) },
                    "isFeatured" => lambda {|n| @is_featured = n.get_boolean_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "summary" => lambda {|n| @summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFormattedContent.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the imageUrl property value. URL of the header image for this article, used for display purposes.
            ## @return a string
            ## 
            def image_url
                return @image_url
            end
            ## 
            ## Sets the imageUrl property value. URL of the header image for this article, used for display purposes.
            ## @param value Value to set for the imageUrl property.
            ## @return a void
            ## 
            def image_url=(value)
                @image_url = value
            end
            ## 
            ## Gets the indicators property value. Indicators related to this article.
            ## @return a security_article_indicator
            ## 
            def indicators
                return @indicators
            end
            ## 
            ## Sets the indicators property value. Indicators related to this article.
            ## @param value Value to set for the indicators property.
            ## @return a void
            ## 
            def indicators=(value)
                @indicators = value
            end
            ## 
            ## Gets the isFeatured property value. Indicates whether this article is currently featured by Microsoft.
            ## @return a boolean
            ## 
            def is_featured
                return @is_featured
            end
            ## 
            ## Sets the isFeatured property value. Indicates whether this article is currently featured by Microsoft.
            ## @param value Value to set for the isFeatured property.
            ## @return a void
            ## 
            def is_featured=(value)
                @is_featured = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The most recent date and time when this article was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The most recent date and time when this article was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastUpdatedDateTime property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("body", @body)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("imageUrl", @image_url)
                writer.write_collection_of_object_values("indicators", @indicators)
                writer.write_boolean_value("isFeatured", @is_featured)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_object_value("summary", @summary)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the summary property value. The summary property
            ## @return a security_formatted_content
            ## 
            def summary
                return @summary
            end
            ## 
            ## Sets the summary property value. The summary property
            ## @param value Value to set for the summary property.
            ## @return a void
            ## 
            def summary=(value)
                @summary = value
            end
            ## 
            ## Gets the tags property value. Tags for this article, communicating keywords, or key concepts.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Tags for this article, communicating keywords, or key concepts.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the title property value. The title of this article.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of this article.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
