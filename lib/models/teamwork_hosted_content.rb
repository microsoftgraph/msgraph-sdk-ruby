require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamworkHostedContent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Write only. Bytes for the hosted content (such as images).
            @content_bytes
            ## 
            # Write only. Content type. sicj as image/png, image/jpg.
            @content_type
            ## 
            ## Instantiates a new teamworkHostedContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentBytes property value. Write only. Bytes for the hosted content (such as images).
            ## @return a base64url
            ## 
            def content_bytes
                return @content_bytes
            end
            ## 
            ## Sets the contentBytes property value. Write only. Bytes for the hosted content (such as images).
            ## @param value Value to set for the content_bytes property.
            ## @return a void
            ## 
            def content_bytes=(value)
                @content_bytes = value
            end
            ## 
            ## Gets the contentType property value. Write only. Content type. sicj as image/png, image/jpg.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. Write only. Content type. sicj as image/png, image/jpg.
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_hosted_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.chatMessageHostedContent"
                            return ChatMessageHostedContent.new
                    end
                end
                return TeamworkHostedContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentBytes" => lambda {|n| @content_bytes = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
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
                writer.write_object_value("contentBytes", @content_bytes)
                writer.write_string_value("contentType", @content_type)
            end
        end
    end
end
