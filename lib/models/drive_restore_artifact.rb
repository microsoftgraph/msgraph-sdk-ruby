require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveRestoreArtifact < MicrosoftGraph::Models::RestoreArtifactBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The new site identifier if destinationType is new, and the input site ID if the destinationType is inPlace.
            @restored_site_id
            ## 
            # The name of the restored site.
            @restored_site_name
            ## 
            # The web URL of the restored site.
            @restored_site_web_url
            ## 
            ## Instantiates a new DriveRestoreArtifact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a drive_restore_artifact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveRestoreArtifact.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "restoredSiteId" => lambda {|n| @restored_site_id = n.get_string_value() },
                    "restoredSiteName" => lambda {|n| @restored_site_name = n.get_string_value() },
                    "restoredSiteWebUrl" => lambda {|n| @restored_site_web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the restoredSiteId property value. The new site identifier if destinationType is new, and the input site ID if the destinationType is inPlace.
            ## @return a string
            ## 
            def restored_site_id
                return @restored_site_id
            end
            ## 
            ## Sets the restoredSiteId property value. The new site identifier if destinationType is new, and the input site ID if the destinationType is inPlace.
            ## @param value Value to set for the restoredSiteId property.
            ## @return a void
            ## 
            def restored_site_id=(value)
                @restored_site_id = value
            end
            ## 
            ## Gets the restoredSiteName property value. The name of the restored site.
            ## @return a string
            ## 
            def restored_site_name
                return @restored_site_name
            end
            ## 
            ## Sets the restoredSiteName property value. The name of the restored site.
            ## @param value Value to set for the restoredSiteName property.
            ## @return a void
            ## 
            def restored_site_name=(value)
                @restored_site_name = value
            end
            ## 
            ## Gets the restoredSiteWebUrl property value. The web URL of the restored site.
            ## @return a string
            ## 
            def restored_site_web_url
                return @restored_site_web_url
            end
            ## 
            ## Sets the restoredSiteWebUrl property value. The web URL of the restored site.
            ## @param value Value to set for the restoredSiteWebUrl property.
            ## @return a void
            ## 
            def restored_site_web_url=(value)
                @restored_site_web_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("restoredSiteId", @restored_site_id)
            end
        end
    end
end
