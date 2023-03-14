require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnenoteResource < MicrosoftGraph::Models::OnenoteEntityBaseModel
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content stream
            @content
            ## 
            # The URL for downloading the content
            @content_url
            ## 
            ## Instantiates a new OnenoteResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onenoteResource"
            end
            ## 
            ## Gets the content property value. The content stream
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content stream
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentUrl property value. The URL for downloading the content
            ## @return a string
            ## 
            def content_url
                return @content_url
            end
            ## 
            ## Sets the contentUrl property value. The URL for downloading the content
            ## @param value Value to set for the content_url property.
            ## @return a void
            ## 
            def content_url=(value)
                @content_url = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnenoteResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "contentUrl" => lambda {|n| @content_url = n.get_string_value() },
                })
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
            end
        end
    end
end
