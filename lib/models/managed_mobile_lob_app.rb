require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedMobileLobApp < MicrosoftGraph::Models::ManagedApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The internal committed content version.
            @committed_content_version
            ## 
            # The list of content versions for this app.
            @content_versions
            ## 
            # The name of the main Lob application file.
            @file_name
            ## 
            # The total size, including all uploaded files.
            @size
            ## 
            ## Gets the committedContentVersion property value. The internal committed content version.
            ## @return a string
            ## 
            def committed_content_version
                return @committed_content_version
            end
            ## 
            ## Sets the committedContentVersion property value. The internal committed content version.
            ## @param value Value to set for the committed_content_version property.
            ## @return a void
            ## 
            def committed_content_version=(value)
                @committed_content_version = value
            end
            ## 
            ## Instantiates a new ManagedMobileLobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedMobileLobApp"
            end
            ## 
            ## Gets the contentVersions property value. The list of content versions for this app.
            ## @return a mobile_app_content
            ## 
            def content_versions
                return @content_versions
            end
            ## 
            ## Sets the contentVersions property value. The list of content versions for this app.
            ## @param value Value to set for the content_versions property.
            ## @return a void
            ## 
            def content_versions=(value)
                @content_versions = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_mobile_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.managedAndroidLobApp"
                            return ManagedAndroidLobApp.new
                        when "#microsoft.graph.managedIOSLobApp"
                            return ManagedIOSLobApp.new
                    end
                end
                return ManagedMobileLobApp.new
            end
            ## 
            ## Gets the fileName property value. The name of the main Lob application file.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The name of the main Lob application file.
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "committedContentVersion" => lambda {|n| @committed_content_version = n.get_string_value() },
                    "contentVersions" => lambda {|n| @content_versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MobileAppContent.create_from_discriminator_value(pn) }) },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("committedContentVersion", @committed_content_version)
                writer.write_collection_of_object_values("contentVersions", @content_versions)
                writer.write_string_value("fileName", @file_name)
                writer.write_object_value("size", @size)
            end
            ## 
            ## Gets the size property value. The total size, including all uploaded files.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The total size, including all uploaded files.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
        end
    end
end
