require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnenotePage < MicrosoftGraph::Models::OnenoteEntitySchemaObjectModel
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The page's HTML content.
            @content
            ## 
            # The URL for the page's HTML content.  Read-only.
            @content_url
            ## 
            # The unique identifier of the application that created the page. Read-only.
            @created_by_app_id
            ## 
            # The date and time when the page was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @last_modified_date_time
            ## 
            # The indentation level of the page. Read-only.
            @level
            ## 
            # Links for opening the page. The oneNoteClientURL link opens the page in the OneNote native client if it 's installed. The oneNoteWebUrl link opens the page in OneNote on the web. Read-only.
            @links
            ## 
            # The order of the page within its parent section. Read-only.
            @order
            ## 
            # The notebook that contains the page.  Read-only.
            @parent_notebook
            ## 
            # The section that contains the page. Read-only.
            @parent_section
            ## 
            # The title of the page.
            @title
            ## 
            # The userTags property
            @user_tags
            ## 
            ## Instantiates a new onenotePage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onenotePage"
            end
            ## 
            ## Gets the content property value. The page's HTML content.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The page's HTML content.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentUrl property value. The URL for the page's HTML content.  Read-only.
            ## @return a string
            ## 
            def content_url
                return @content_url
            end
            ## 
            ## Sets the contentUrl property value. The URL for the page's HTML content.  Read-only.
            ## @param value Value to set for the content_url property.
            ## @return a void
            ## 
            def content_url=(value)
                @content_url = value
            end
            ## 
            ## Gets the createdByAppId property value. The unique identifier of the application that created the page. Read-only.
            ## @return a string
            ## 
            def created_by_app_id
                return @created_by_app_id
            end
            ## 
            ## Sets the createdByAppId property value. The unique identifier of the application that created the page. Read-only.
            ## @param value Value to set for the created_by_app_id property.
            ## @return a void
            ## 
            def created_by_app_id=(value)
                @created_by_app_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnenotePage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "contentUrl" => lambda {|n| @content_url = n.get_string_value() },
                    "createdByAppId" => lambda {|n| @created_by_app_id = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "level" => lambda {|n| @level = n.get_number_value() },
                    "links" => lambda {|n| @links = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PageLinks.create_from_discriminator_value(pn) }) },
                    "order" => lambda {|n| @order = n.get_number_value() },
                    "parentNotebook" => lambda {|n| @parent_notebook = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Notebook.create_from_discriminator_value(pn) }) },
                    "parentSection" => lambda {|n| @parent_section = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnenoteSection.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "userTags" => lambda {|n| @user_tags = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the page was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the page was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the level property value. The indentation level of the page. Read-only.
            ## @return a integer
            ## 
            def level
                return @level
            end
            ## 
            ## Sets the level property value. The indentation level of the page. Read-only.
            ## @param value Value to set for the level property.
            ## @return a void
            ## 
            def level=(value)
                @level = value
            end
            ## 
            ## Gets the links property value. Links for opening the page. The oneNoteClientURL link opens the page in the OneNote native client if it 's installed. The oneNoteWebUrl link opens the page in OneNote on the web. Read-only.
            ## @return a page_links
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. Links for opening the page. The oneNoteClientURL link opens the page in the OneNote native client if it 's installed. The oneNoteWebUrl link opens the page in OneNote on the web. Read-only.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
            end
            ## 
            ## Gets the order property value. The order of the page within its parent section. Read-only.
            ## @return a integer
            ## 
            def order
                return @order
            end
            ## 
            ## Sets the order property value. The order of the page within its parent section. Read-only.
            ## @param value Value to set for the order property.
            ## @return a void
            ## 
            def order=(value)
                @order = value
            end
            ## 
            ## Gets the parentNotebook property value. The notebook that contains the page.  Read-only.
            ## @return a notebook
            ## 
            def parent_notebook
                return @parent_notebook
            end
            ## 
            ## Sets the parentNotebook property value. The notebook that contains the page.  Read-only.
            ## @param value Value to set for the parent_notebook property.
            ## @return a void
            ## 
            def parent_notebook=(value)
                @parent_notebook = value
            end
            ## 
            ## Gets the parentSection property value. The section that contains the page. Read-only.
            ## @return a onenote_section
            ## 
            def parent_section
                return @parent_section
            end
            ## 
            ## Sets the parentSection property value. The section that contains the page. Read-only.
            ## @param value Value to set for the parent_section property.
            ## @return a void
            ## 
            def parent_section=(value)
                @parent_section = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("content", @content)
                writer.write_string_value("contentUrl", @content_url)
                writer.write_string_value("createdByAppId", @created_by_app_id)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_number_value("level", @level)
                writer.write_object_value("links", @links)
                writer.write_number_value("order", @order)
                writer.write_object_value("parentNotebook", @parent_notebook)
                writer.write_object_value("parentSection", @parent_section)
                writer.write_string_value("title", @title)
                writer.write_collection_of_primitive_values("userTags", @user_tags)
            end
            ## 
            ## Gets the title property value. The title of the page.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the page.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the userTags property value. The userTags property
            ## @return a string
            ## 
            def user_tags
                return @user_tags
            end
            ## 
            ## Sets the userTags property value. The userTags property
            ## @param value Value to set for the user_tags property.
            ## @return a void
            ## 
            def user_tags=(value)
                @user_tags = value
            end
        end
    end
end
