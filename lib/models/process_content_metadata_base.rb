require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessContentMetadataBase
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents the actual content, either as text (textContent) or binary data (binaryContent). Optional if metadata alone is sufficient for policy evaluation. Do not use for contentActivities.
            @content
            ## 
            # An identifier used to group multiple related content entries (for example, different parts of the same file upload, messages in a conversation).
            @correlation_id
            ## 
            # Required. Timestamp indicating when the original content was created (for example, file creation time, message sent time).
            @created_date_time
            ## 
            # Required. A unique identifier for this specific content entry within the context of the calling application or enforcement plane (for example, message ID, file path/URL).
            @identifier
            ## 
            # Required. Indicates if the provided content has been truncated from its original form (for example, due to size limits).
            @is_truncated
            ## 
            # The length of the original content in bytes.
            @length
            ## 
            # Required. Timestamp indicating when the original content was last modified. For ephemeral content like messages, this might be the same as createdDateTime.
            @modified_date_time
            ## 
            # Required. A descriptive name for the content (for example, file name, web page title, 'Chat Message').
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A sequence number indicating the order in which content was generated or should be processed, required when correlationId is used.
            @sequence_number
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new ProcessContentMetadataBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. Represents the actual content, either as text (textContent) or binary data (binaryContent). Optional if metadata alone is sufficient for policy evaluation. Do not use for contentActivities.
            ## @return a content_base
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. Represents the actual content, either as text (textContent) or binary data (binaryContent). Optional if metadata alone is sufficient for policy evaluation. Do not use for contentActivities.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the correlationId property value. An identifier used to group multiple related content entries (for example, different parts of the same file upload, messages in a conversation).
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. An identifier used to group multiple related content entries (for example, different parts of the same file upload, messages in a conversation).
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Gets the createdDateTime property value. Required. Timestamp indicating when the original content was created (for example, file creation time, message sent time).
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Required. Timestamp indicating when the original content was created (for example, file creation time, message sent time).
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_content_metadata_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.processConversationMetadata"
                            return ProcessConversationMetadata.new
                        when "#microsoft.graph.processFileMetadata"
                            return ProcessFileMetadata.new
                    end
                end
                return ProcessContentMetadataBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentBase.create_from_discriminator_value(pn) }) },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "identifier" => lambda {|n| @identifier = n.get_string_value() },
                    "isTruncated" => lambda {|n| @is_truncated = n.get_boolean_value() },
                    "length" => lambda {|n| @length = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sequenceNumber" => lambda {|n| @sequence_number = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the identifier property value. Required. A unique identifier for this specific content entry within the context of the calling application or enforcement plane (for example, message ID, file path/URL).
            ## @return a string
            ## 
            def identifier
                return @identifier
            end
            ## 
            ## Sets the identifier property value. Required. A unique identifier for this specific content entry within the context of the calling application or enforcement plane (for example, message ID, file path/URL).
            ## @param value Value to set for the identifier property.
            ## @return a void
            ## 
            def identifier=(value)
                @identifier = value
            end
            ## 
            ## Gets the isTruncated property value. Required. Indicates if the provided content has been truncated from its original form (for example, due to size limits).
            ## @return a boolean
            ## 
            def is_truncated
                return @is_truncated
            end
            ## 
            ## Sets the isTruncated property value. Required. Indicates if the provided content has been truncated from its original form (for example, due to size limits).
            ## @param value Value to set for the isTruncated property.
            ## @return a void
            ## 
            def is_truncated=(value)
                @is_truncated = value
            end
            ## 
            ## Gets the length property value. The length of the original content in bytes.
            ## @return a int64
            ## 
            def length
                return @length
            end
            ## 
            ## Sets the length property value. The length of the original content in bytes.
            ## @param value Value to set for the length property.
            ## @return a void
            ## 
            def length=(value)
                @length = value
            end
            ## 
            ## Gets the modifiedDateTime property value. Required. Timestamp indicating when the original content was last modified. For ephemeral content like messages, this might be the same as createdDateTime.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. Required. Timestamp indicating when the original content was last modified. For ephemeral content like messages, this might be the same as createdDateTime.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the name property value. Required. A descriptive name for the content (for example, file name, web page title, 'Chat Message').
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Required. A descriptive name for the content (for example, file name, web page title, 'Chat Message').
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the sequenceNumber property value. A sequence number indicating the order in which content was generated or should be processed, required when correlationId is used.
            ## @return a int64
            ## 
            def sequence_number
                return @sequence_number
            end
            ## 
            ## Sets the sequenceNumber property value. A sequence number indicating the order in which content was generated or should be processed, required when correlationId is used.
            ## @param value Value to set for the sequenceNumber property.
            ## @return a void
            ## 
            def sequence_number=(value)
                @sequence_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("content", @content)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("identifier", @identifier)
                writer.write_boolean_value("isTruncated", @is_truncated)
                writer.write_object_value("length", @length)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("sequenceNumber", @sequence_number)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
