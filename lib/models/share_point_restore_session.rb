require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharePointRestoreSession < MicrosoftGraph::Models::RestoreSessionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of restore points and destination details that can be used to restore SharePoint sites.
            @site_restore_artifacts
            ## 
            # The siteRestoreArtifactsBulkAdditionRequests property
            @site_restore_artifacts_bulk_addition_requests
            ## 
            ## Instantiates a new SharePointRestoreSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sharePointRestoreSession"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a share_point_restore_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharePointRestoreSession.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "siteRestoreArtifacts" => lambda {|n| @site_restore_artifacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteRestoreArtifact.create_from_discriminator_value(pn) }) },
                    "siteRestoreArtifactsBulkAdditionRequests" => lambda {|n| @site_restore_artifacts_bulk_addition_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SiteRestoreArtifactsBulkAdditionRequest.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("siteRestoreArtifacts", @site_restore_artifacts)
                writer.write_collection_of_object_values("siteRestoreArtifactsBulkAdditionRequests", @site_restore_artifacts_bulk_addition_requests)
            end
            ## 
            ## Gets the siteRestoreArtifacts property value. A collection of restore points and destination details that can be used to restore SharePoint sites.
            ## @return a site_restore_artifact
            ## 
            def site_restore_artifacts
                return @site_restore_artifacts
            end
            ## 
            ## Sets the siteRestoreArtifacts property value. A collection of restore points and destination details that can be used to restore SharePoint sites.
            ## @param value Value to set for the siteRestoreArtifacts property.
            ## @return a void
            ## 
            def site_restore_artifacts=(value)
                @site_restore_artifacts = value
            end
            ## 
            ## Gets the siteRestoreArtifactsBulkAdditionRequests property value. The siteRestoreArtifactsBulkAdditionRequests property
            ## @return a site_restore_artifacts_bulk_addition_request
            ## 
            def site_restore_artifacts_bulk_addition_requests
                return @site_restore_artifacts_bulk_addition_requests
            end
            ## 
            ## Sets the siteRestoreArtifactsBulkAdditionRequests property value. The siteRestoreArtifactsBulkAdditionRequests property
            ## @param value Value to set for the siteRestoreArtifactsBulkAdditionRequests property.
            ## @return a void
            ## 
            def site_restore_artifacts_bulk_addition_requests=(value)
                @site_restore_artifacts_bulk_addition_requests = value
            end
        end
    end
end
