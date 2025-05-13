require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveRestoreArtifactsBulkAdditionRequest < MicrosoftGraph::Models::RestoreArtifactsBulkRequestBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The directoryObjectIds property
            @directory_object_ids
            ## 
            # The drives property
            @drives
            ## 
            ## Instantiates a new DriveRestoreArtifactsBulkAdditionRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a drive_restore_artifacts_bulk_addition_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveRestoreArtifactsBulkAdditionRequest.new
            end
            ## 
            ## Gets the directoryObjectIds property value. The directoryObjectIds property
            ## @return a string
            ## 
            def directory_object_ids
                return @directory_object_ids
            end
            ## 
            ## Sets the directoryObjectIds property value. The directoryObjectIds property
            ## @param value Value to set for the directoryObjectIds property.
            ## @return a void
            ## 
            def directory_object_ids=(value)
                @directory_object_ids = value
            end
            ## 
            ## Gets the drives property value. The drives property
            ## @return a string
            ## 
            def drives
                return @drives
            end
            ## 
            ## Sets the drives property value. The drives property
            ## @param value Value to set for the drives property.
            ## @return a void
            ## 
            def drives=(value)
                @drives = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "directoryObjectIds" => lambda {|n| @directory_object_ids = n.get_collection_of_primitive_values(String) },
                    "drives" => lambda {|n| @drives = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("directoryObjectIds", @directory_object_ids)
                writer.write_collection_of_primitive_values("drives", @drives)
            end
        end
    end
end
