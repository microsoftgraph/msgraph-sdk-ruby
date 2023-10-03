require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallTranscript < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content property
            @content
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The meetingId property
            @meeting_id
            ## 
            # The meetingOrganizer property
            @meeting_organizer
            ## 
            # The metadataContent property
            @metadata_content
            ## 
            # The transcriptContentUrl property
            @transcript_content_url
            ## 
            ## Instantiates a new callTranscript and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content property
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content property
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_transcript
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallTranscript.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "meetingId" => lambda {|n| @meeting_id = n.get_string_value() },
                    "meetingOrganizer" => lambda {|n| @meeting_organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "metadataContent" => lambda {|n| @metadata_content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "transcriptContentUrl" => lambda {|n| @transcript_content_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the meetingId property value. The meetingId property
            ## @return a string
            ## 
            def meeting_id
                return @meeting_id
            end
            ## 
            ## Sets the meetingId property value. The meetingId property
            ## @param value Value to set for the meetingId property.
            ## @return a void
            ## 
            def meeting_id=(value)
                @meeting_id = value
            end
            ## 
            ## Gets the meetingOrganizer property value. The meetingOrganizer property
            ## @return a identity_set
            ## 
            def meeting_organizer
                return @meeting_organizer
            end
            ## 
            ## Sets the meetingOrganizer property value. The meetingOrganizer property
            ## @param value Value to set for the meetingOrganizer property.
            ## @return a void
            ## 
            def meeting_organizer=(value)
                @meeting_organizer = value
            end
            ## 
            ## Gets the metadataContent property value. The metadataContent property
            ## @return a base64url
            ## 
            def metadata_content
                return @metadata_content
            end
            ## 
            ## Sets the metadataContent property value. The metadataContent property
            ## @param value Value to set for the metadataContent property.
            ## @return a void
            ## 
            def metadata_content=(value)
                @metadata_content = value
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
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("meetingId", @meeting_id)
                writer.write_object_value("meetingOrganizer", @meeting_organizer)
                writer.write_object_value("metadataContent", @metadata_content)
                writer.write_string_value("transcriptContentUrl", @transcript_content_url)
            end
            ## 
            ## Gets the transcriptContentUrl property value. The transcriptContentUrl property
            ## @return a string
            ## 
            def transcript_content_url
                return @transcript_content_url
            end
            ## 
            ## Sets the transcriptContentUrl property value. The transcriptContentUrl property
            ## @param value Value to set for the transcriptContentUrl property.
            ## @return a void
            ## 
            def transcript_content_url=(value)
                @transcript_content_url = value
            end
        end
    end
end
