require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LearningContent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Keywords, topics, and other tags associated with the learning content. Optional.
            @additional_tags
            ## 
            # The content web URL for the learning content. Required.
            @content_web_url
            ## 
            # The authors, creators, or contributors of the learning content. Optional.
            @contributors
            ## 
            # The date and time when the learning content was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Optional.
            @created_date_time
            ## 
            # The description or summary for the learning content. Optional.
            @description
            ## 
            # The duration of the learning content in seconds. The value is represented in ISO 8601 format for durations. Optional.
            @duration
            ## 
            # Unique external content ID for the learning content. Required.
            @external_id
            ## 
            # The format of the learning content. For example, Course, Video, Book, Book Summary, Audiobook Summary. Optional.
            @format
            ## 
            # Indicates whether the content is active or not. Inactive content doesn't show up in the UI. The default value is true. Optional.
            @is_active
            ## 
            # Indicates whether the learning content requires the user to sign-in on the learning provider platform or not. The default value is false. Optional.
            @is_premium
            ## 
            # Indicates whether the learning content is searchable or not. The default value is true. Optional.
            @is_searchable
            ## 
            # The language of the learning content, for example, en-us or fr-fr. Required.
            @language_tag
            ## 
            # The date and time when the learning content was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Optional.
            @last_modified_date_time
            ## 
            # The number of pages of the learning content, for example, 9. Optional.
            @number_of_pages
            ## 
            # The skills tags associated with the learning content. Optional.
            @skill_tags
            ## 
            # The source name of the learning content, such as LinkedIn Learning or Coursera. Optional.
            @source_name
            ## 
            # The URL of learning content thumbnail image. Optional.
            @thumbnail_web_url
            ## 
            # The title of the learning content. Required.
            @title
            ## 
            ## Gets the additionalTags property value. Keywords, topics, and other tags associated with the learning content. Optional.
            ## @return a string
            ## 
            def additional_tags
                return @additional_tags
            end
            ## 
            ## Sets the additionalTags property value. Keywords, topics, and other tags associated with the learning content. Optional.
            ## @param value Value to set for the additional_tags property.
            ## @return a void
            ## 
            def additional_tags=(value)
                @additional_tags = value
            end
            ## 
            ## Instantiates a new learningContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentWebUrl property value. The content web URL for the learning content. Required.
            ## @return a string
            ## 
            def content_web_url
                return @content_web_url
            end
            ## 
            ## Sets the contentWebUrl property value. The content web URL for the learning content. Required.
            ## @param value Value to set for the content_web_url property.
            ## @return a void
            ## 
            def content_web_url=(value)
                @content_web_url = value
            end
            ## 
            ## Gets the contributors property value. The authors, creators, or contributors of the learning content. Optional.
            ## @return a string
            ## 
            def contributors
                return @contributors
            end
            ## 
            ## Sets the contributors property value. The authors, creators, or contributors of the learning content. Optional.
            ## @param value Value to set for the contributors property.
            ## @return a void
            ## 
            def contributors=(value)
                @contributors = value
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the learning content was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Optional.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the learning content was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Optional.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a learning_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LearningContent.new
            end
            ## 
            ## Gets the description property value. The description or summary for the learning content. Optional.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description or summary for the learning content. Optional.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the duration property value. The duration of the learning content in seconds. The value is represented in ISO 8601 format for durations. Optional.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. The duration of the learning content in seconds. The value is represented in ISO 8601 format for durations. Optional.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the externalId property value. Unique external content ID for the learning content. Required.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. Unique external content ID for the learning content. Required.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## Gets the format property value. The format of the learning content. For example, Course, Video, Book, Book Summary, Audiobook Summary. Optional.
            ## @return a string
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. The format of the learning content. For example, Course, Video, Book, Book Summary, Audiobook Summary. Optional.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalTags" => lambda {|n| @additional_tags = n.get_collection_of_primitive_values(String) },
                    "contentWebUrl" => lambda {|n| @content_web_url = n.get_string_value() },
                    "contributors" => lambda {|n| @contributors = n.get_collection_of_primitive_values(String) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "duration" => lambda {|n| @duration = n.get_duration_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "format" => lambda {|n| @format = n.get_string_value() },
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                    "isPremium" => lambda {|n| @is_premium = n.get_boolean_value() },
                    "isSearchable" => lambda {|n| @is_searchable = n.get_boolean_value() },
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "numberOfPages" => lambda {|n| @number_of_pages = n.get_number_value() },
                    "skillTags" => lambda {|n| @skill_tags = n.get_collection_of_primitive_values(String) },
                    "sourceName" => lambda {|n| @source_name = n.get_string_value() },
                    "thumbnailWebUrl" => lambda {|n| @thumbnail_web_url = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isActive property value. Indicates whether the content is active or not. Inactive content doesn't show up in the UI. The default value is true. Optional.
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. Indicates whether the content is active or not. Inactive content doesn't show up in the UI. The default value is true. Optional.
            ## @param value Value to set for the is_active property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
            end
            ## 
            ## Gets the isPremium property value. Indicates whether the learning content requires the user to sign-in on the learning provider platform or not. The default value is false. Optional.
            ## @return a boolean
            ## 
            def is_premium
                return @is_premium
            end
            ## 
            ## Sets the isPremium property value. Indicates whether the learning content requires the user to sign-in on the learning provider platform or not. The default value is false. Optional.
            ## @param value Value to set for the is_premium property.
            ## @return a void
            ## 
            def is_premium=(value)
                @is_premium = value
            end
            ## 
            ## Gets the isSearchable property value. Indicates whether the learning content is searchable or not. The default value is true. Optional.
            ## @return a boolean
            ## 
            def is_searchable
                return @is_searchable
            end
            ## 
            ## Sets the isSearchable property value. Indicates whether the learning content is searchable or not. The default value is true. Optional.
            ## @param value Value to set for the is_searchable property.
            ## @return a void
            ## 
            def is_searchable=(value)
                @is_searchable = value
            end
            ## 
            ## Gets the languageTag property value. The language of the learning content, for example, en-us or fr-fr. Required.
            ## @return a string
            ## 
            def language_tag
                return @language_tag
            end
            ## 
            ## Sets the languageTag property value. The language of the learning content, for example, en-us or fr-fr. Required.
            ## @param value Value to set for the language_tag property.
            ## @return a void
            ## 
            def language_tag=(value)
                @language_tag = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the learning content was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Optional.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the learning content was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Optional.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the numberOfPages property value. The number of pages of the learning content, for example, 9. Optional.
            ## @return a integer
            ## 
            def number_of_pages
                return @number_of_pages
            end
            ## 
            ## Sets the numberOfPages property value. The number of pages of the learning content, for example, 9. Optional.
            ## @param value Value to set for the number_of_pages property.
            ## @return a void
            ## 
            def number_of_pages=(value)
                @number_of_pages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("additionalTags", @additional_tags)
                writer.write_string_value("contentWebUrl", @content_web_url)
                writer.write_collection_of_primitive_values("contributors", @contributors)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_duration_value("duration", @duration)
                writer.write_string_value("externalId", @external_id)
                writer.write_string_value("format", @format)
                writer.write_boolean_value("isActive", @is_active)
                writer.write_boolean_value("isPremium", @is_premium)
                writer.write_boolean_value("isSearchable", @is_searchable)
                writer.write_string_value("languageTag", @language_tag)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_number_value("numberOfPages", @number_of_pages)
                writer.write_collection_of_primitive_values("skillTags", @skill_tags)
                writer.write_string_value("sourceName", @source_name)
                writer.write_string_value("thumbnailWebUrl", @thumbnail_web_url)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the skillTags property value. The skills tags associated with the learning content. Optional.
            ## @return a string
            ## 
            def skill_tags
                return @skill_tags
            end
            ## 
            ## Sets the skillTags property value. The skills tags associated with the learning content. Optional.
            ## @param value Value to set for the skill_tags property.
            ## @return a void
            ## 
            def skill_tags=(value)
                @skill_tags = value
            end
            ## 
            ## Gets the sourceName property value. The source name of the learning content, such as LinkedIn Learning or Coursera. Optional.
            ## @return a string
            ## 
            def source_name
                return @source_name
            end
            ## 
            ## Sets the sourceName property value. The source name of the learning content, such as LinkedIn Learning or Coursera. Optional.
            ## @param value Value to set for the source_name property.
            ## @return a void
            ## 
            def source_name=(value)
                @source_name = value
            end
            ## 
            ## Gets the thumbnailWebUrl property value. The URL of learning content thumbnail image. Optional.
            ## @return a string
            ## 
            def thumbnail_web_url
                return @thumbnail_web_url
            end
            ## 
            ## Sets the thumbnailWebUrl property value. The URL of learning content thumbnail image. Optional.
            ## @param value Value to set for the thumbnail_web_url property.
            ## @return a void
            ## 
            def thumbnail_web_url=(value)
                @thumbnail_web_url = value
            end
            ## 
            ## Gets the title property value. The title of the learning content. Required.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the learning content. Required.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
