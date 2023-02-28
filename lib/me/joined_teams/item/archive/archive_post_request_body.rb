require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../me'
require_relative '../../joined_teams'
require_relative '../item'
require_relative './archive'

module MicrosoftGraph
    module Me
        module JoinedTeams
            module Item
                module Archive
                    class ArchivePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The shouldSetSpoSiteReadOnlyForMembers property
                        @should_set_spo_site_read_only_for_members
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new archivePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a archive_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ArchivePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "shouldSetSpoSiteReadOnlyForMembers" => lambda {|n| @should_set_spo_site_read_only_for_members = n.get_boolean_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_boolean_value("shouldSetSpoSiteReadOnlyForMembers", @should_set_spo_site_read_only_for_members)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the shouldSetSpoSiteReadOnlyForMembers property value. The shouldSetSpoSiteReadOnlyForMembers property
                        ## @return a boolean
                        ## 
                        def should_set_spo_site_read_only_for_members
                            return @should_set_spo_site_read_only_for_members
                        end
                        ## 
                        ## Sets the shouldSetSpoSiteReadOnlyForMembers property value. The shouldSetSpoSiteReadOnlyForMembers property
                        ## @param value Value to set for the should_set_spo_site_read_only_for_members property.
                        ## @return a void
                        ## 
                        def should_set_spo_site_read_only_for_members=(value)
                            @should_set_spo_site_read_only_for_members = value
                        end
                    end
                end
            end
        end
    end
end
