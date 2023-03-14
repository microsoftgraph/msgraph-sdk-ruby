require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttachmentSession < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content streams that are uploaded.
            @content
            ## 
            # The date and time in UTC when the upload session will expire. The complete file must be uploaded before this expiration time is reached.
            @expiration_date_time
            ## 
            # Indicates a single value {start} that represents the location in the file where the next upload should begin.
            @next_expected_ranges
            ## 
            ## Instantiates a new attachmentSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content streams that are uploaded.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content streams that are uploaded.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attachment_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttachmentSession.new
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time in UTC when the upload session will expire. The complete file must be uploaded before this expiration time is reached.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time in UTC when the upload session will expire. The complete file must be uploaded before this expiration time is reached.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "nextExpectedRanges" => lambda {|n| @next_expected_ranges = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the nextExpectedRanges property value. Indicates a single value {start} that represents the location in the file where the next upload should begin.
            ## @return a string
            ## 
            def next_expected_ranges
                return @next_expected_ranges
            end
            ## 
            ## Sets the nextExpectedRanges property value. Indicates a single value {start} that represents the location in the file where the next upload should begin.
            ## @param value Value to set for the next_expected_ranges property.
            ## @return a void
            ## 
            def next_expected_ranges=(value)
                @next_expected_ranges = value
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
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_collection_of_primitive_values("nextExpectedRanges", @next_expected_ranges)
            end
        end
    end
end
