require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SiteRestoreArtifactsBulkAdditionRequest < MicrosoftGraph::Models::RestoreArtifactsBulkRequestBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The siteIds property
            @site_ids
            ## 
            # The siteWebUrls property
            @site_web_urls
            ## 
            ## Instantiates a new SiteRestoreArtifactsBulkAdditionRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site_restore_artifacts_bulk_addition_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SiteRestoreArtifactsBulkAdditionRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "siteIds" => lambda {|n| @site_ids = n.get_collection_of_primitive_values(String) },
                    "siteWebUrls" => lambda {|n| @site_web_urls = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("siteIds", @site_ids)
                writer.write_collection_of_primitive_values("siteWebUrls", @site_web_urls)
            end
            ## 
            ## Gets the siteIds property value. The siteIds property
            ## @return a string
            ## 
            def site_ids
                return @site_ids
            end
            ## 
            ## Sets the siteIds property value. The siteIds property
            ## @param value Value to set for the siteIds property.
            ## @return a void
            ## 
            def site_ids=(value)
                @site_ids = value
            end
            ## 
            ## Gets the siteWebUrls property value. The siteWebUrls property
            ## @return a string
            ## 
            def site_web_urls
                return @site_web_urls
            end
            ## 
            ## Sets the siteWebUrls property value. The siteWebUrls property
            ## @param value Value to set for the siteWebUrls property.
            ## @return a void
            ## 
            def site_web_urls=(value)
                @site_web_urls = value
            end
        end
    end
end
