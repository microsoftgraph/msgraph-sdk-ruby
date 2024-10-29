require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OneDriveForBusinessRestoreSession < MicrosoftGraph::Models::RestoreSessionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of restore points and destination details that can be used to restore a OneDrive for Business drive.
            @drive_restore_artifacts
            ## 
            ## Instantiates a new OneDriveForBusinessRestoreSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.oneDriveForBusinessRestoreSession"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a one_drive_for_business_restore_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OneDriveForBusinessRestoreSession.new
            end
            ## 
            ## Gets the driveRestoreArtifacts property value. A collection of restore points and destination details that can be used to restore a OneDrive for Business drive.
            ## @return a drive_restore_artifact
            ## 
            def drive_restore_artifacts
                return @drive_restore_artifacts
            end
            ## 
            ## Sets the driveRestoreArtifacts property value. A collection of restore points and destination details that can be used to restore a OneDrive for Business drive.
            ## @param value Value to set for the driveRestoreArtifacts property.
            ## @return a void
            ## 
            def drive_restore_artifacts=(value)
                @drive_restore_artifacts = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "driveRestoreArtifacts" => lambda {|n| @drive_restore_artifacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveRestoreArtifact.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("driveRestoreArtifacts", @drive_restore_artifacts)
            end
        end
    end
end
