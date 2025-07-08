require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class GranularMailboxRestoreArtifact < MicrosoftGraph::Models::MailboxRestoreArtifact
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # .
            @artifact_count
            ## 
            # .
            @search_response_id
            ## 
            ## Gets the artifactCount property value. .
            ## @return a integer
            ## 
            def artifact_count
                return @artifact_count
            end
            ## 
            ## Sets the artifactCount property value. .
            ## @param value Value to set for the artifactCount property.
            ## @return a void
            ## 
            def artifact_count=(value)
                @artifact_count = value
            end
            ## 
            ## Instantiates a new GranularMailboxRestoreArtifact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a granular_mailbox_restore_artifact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GranularMailboxRestoreArtifact.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "artifactCount" => lambda {|n| @artifact_count = n.get_number_value() },
                    "searchResponseId" => lambda {|n| @search_response_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the searchResponseId property value. .
            ## @return a string
            ## 
            def search_response_id
                return @search_response_id
            end
            ## 
            ## Sets the searchResponseId property value. .
            ## @param value Value to set for the searchResponseId property.
            ## @return a void
            ## 
            def search_response_id=(value)
                @search_response_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("artifactCount", @artifact_count)
                writer.write_string_value("searchResponseId", @search_response_id)
            end
        end
    end
end
