require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MailSearchFolder < MicrosoftGraph::Models::MailFolder
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The OData query to filter the messages.
            @filter_query
            ## 
            # Indicates how the mailbox folder hierarchy should be traversed in the search. true means that a deep search should be done to include child folders in the hierarchy of each folder explicitly specified in sourceFolderIds. false means a shallow search of only each of the folders explicitly specified in sourceFolderIds.
            @include_nested_folders
            ## 
            # Indicates whether a search folder is editable using REST APIs.
            @is_supported
            ## 
            # The mailbox folders that should be mined.
            @source_folder_ids
            ## 
            ## Instantiates a new MailSearchFolder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mailSearchFolder"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mail_search_folder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MailSearchFolder.new
            end
            ## 
            ## Gets the filterQuery property value. The OData query to filter the messages.
            ## @return a string
            ## 
            def filter_query
                return @filter_query
            end
            ## 
            ## Sets the filterQuery property value. The OData query to filter the messages.
            ## @param value Value to set for the filter_query property.
            ## @return a void
            ## 
            def filter_query=(value)
                @filter_query = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "filterQuery" => lambda {|n| @filter_query = n.get_string_value() },
                    "includeNestedFolders" => lambda {|n| @include_nested_folders = n.get_boolean_value() },
                    "isSupported" => lambda {|n| @is_supported = n.get_boolean_value() },
                    "sourceFolderIds" => lambda {|n| @source_folder_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the includeNestedFolders property value. Indicates how the mailbox folder hierarchy should be traversed in the search. true means that a deep search should be done to include child folders in the hierarchy of each folder explicitly specified in sourceFolderIds. false means a shallow search of only each of the folders explicitly specified in sourceFolderIds.
            ## @return a boolean
            ## 
            def include_nested_folders
                return @include_nested_folders
            end
            ## 
            ## Sets the includeNestedFolders property value. Indicates how the mailbox folder hierarchy should be traversed in the search. true means that a deep search should be done to include child folders in the hierarchy of each folder explicitly specified in sourceFolderIds. false means a shallow search of only each of the folders explicitly specified in sourceFolderIds.
            ## @param value Value to set for the include_nested_folders property.
            ## @return a void
            ## 
            def include_nested_folders=(value)
                @include_nested_folders = value
            end
            ## 
            ## Gets the isSupported property value. Indicates whether a search folder is editable using REST APIs.
            ## @return a boolean
            ## 
            def is_supported
                return @is_supported
            end
            ## 
            ## Sets the isSupported property value. Indicates whether a search folder is editable using REST APIs.
            ## @param value Value to set for the is_supported property.
            ## @return a void
            ## 
            def is_supported=(value)
                @is_supported = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("filterQuery", @filter_query)
                writer.write_boolean_value("includeNestedFolders", @include_nested_folders)
                writer.write_boolean_value("isSupported", @is_supported)
                writer.write_collection_of_primitive_values("sourceFolderIds", @source_folder_ids)
            end
            ## 
            ## Gets the sourceFolderIds property value. The mailbox folders that should be mined.
            ## @return a string
            ## 
            def source_folder_ids
                return @source_folder_ids
            end
            ## 
            ## Sets the sourceFolderIds property value. The mailbox folders that should be mined.
            ## @param value Value to set for the source_folder_ids property.
            ## @return a void
            ## 
            def source_folder_ids=(value)
                @source_folder_ids = value
            end
        end
    end
end
