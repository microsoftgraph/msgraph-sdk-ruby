require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TaskFileAttachment < MicrosoftGraph::Models::AttachmentBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The base64-encoded contents of the file.
            @content_bytes
            ## 
            ## Instantiates a new TaskFileAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.taskFileAttachment"
            end
            ## 
            ## Gets the contentBytes property value. The base64-encoded contents of the file.
            ## @return a base64url
            ## 
            def content_bytes
                return @content_bytes
            end
            ## 
            ## Sets the contentBytes property value. The base64-encoded contents of the file.
            ## @param value Value to set for the content_bytes property.
            ## @return a void
            ## 
            def content_bytes=(value)
                @content_bytes = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a task_file_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TaskFileAttachment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentBytes" => lambda {|n| @content_bytes = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
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
            end
        end
    end
end
