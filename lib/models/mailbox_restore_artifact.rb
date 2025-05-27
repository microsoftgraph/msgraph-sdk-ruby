require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MailboxRestoreArtifact < MicrosoftGraph::Models::RestoreArtifactBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The new restored folder identifier for the user.
            @restored_folder_id
            ## 
            # The new restored folder name.
            @restored_folder_name
            ## 
            ## Instantiates a new MailboxRestoreArtifact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mailbox_restore_artifact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.granularMailboxRestoreArtifact"
                            return GranularMailboxRestoreArtifact.new
                    end
                end
                return MailboxRestoreArtifact.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "restoredFolderId" => lambda {|n| @restored_folder_id = n.get_string_value() },
                    "restoredFolderName" => lambda {|n| @restored_folder_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the restoredFolderId property value. The new restored folder identifier for the user.
            ## @return a string
            ## 
            def restored_folder_id
                return @restored_folder_id
            end
            ## 
            ## Sets the restoredFolderId property value. The new restored folder identifier for the user.
            ## @param value Value to set for the restoredFolderId property.
            ## @return a void
            ## 
            def restored_folder_id=(value)
                @restored_folder_id = value
            end
            ## 
            ## Gets the restoredFolderName property value. The new restored folder name.
            ## @return a string
            ## 
            def restored_folder_name
                return @restored_folder_name
            end
            ## 
            ## Sets the restoredFolderName property value. The new restored folder name.
            ## @param value Value to set for the restoredFolderName property.
            ## @return a void
            ## 
            def restored_folder_name=(value)
                @restored_folder_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("restoredFolderId", @restored_folder_id)
            end
        end
    end
end
