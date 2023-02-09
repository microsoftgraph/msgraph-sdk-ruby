require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DocumentSetVersion < MicrosoftGraph::Models::ListItemVersion
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Comment about the captured version.
            @comment
            ## 
            # User who captured the version.
            @created_by
            ## 
            # Date and time when this version was created.
            @created_date_time
            ## 
            # Items within the document set that are captured as part of this version.
            @items
            ## 
            # If true, minor versions of items are also captured; otherwise, only major versions will be captured. Default value is false.
            @should_capture_minor_version
            ## 
            ## Gets the comment property value. Comment about the captured version.
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. Comment about the captured version.
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Instantiates a new DocumentSetVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.documentSetVersion"
            end
            ## 
            ## Gets the createdBy property value. User who captured the version.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. User who captured the version.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when this version was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when this version was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a document_set_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DocumentSetVersion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DocumentSetVersionItem.create_from_discriminator_value(pn) }) },
                    "shouldCaptureMinorVersion" => lambda {|n| @should_capture_minor_version = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the items property value. Items within the document set that are captured as part of this version.
            ## @return a document_set_version_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. Items within the document set that are captured as part of this version.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("comment", @comment)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("items", @items)
                writer.write_boolean_value("shouldCaptureMinorVersion", @should_capture_minor_version)
            end
            ## 
            ## Gets the shouldCaptureMinorVersion property value. If true, minor versions of items are also captured; otherwise, only major versions will be captured. Default value is false.
            ## @return a boolean
            ## 
            def should_capture_minor_version
                return @should_capture_minor_version
            end
            ## 
            ## Sets the shouldCaptureMinorVersion property value. If true, minor versions of items are also captured; otherwise, only major versions will be captured. Default value is false.
            ## @param value Value to set for the should_capture_minor_version property.
            ## @return a void
            ## 
            def should_capture_minor_version=(value)
                @should_capture_minor_version = value
            end
        end
    end
end
