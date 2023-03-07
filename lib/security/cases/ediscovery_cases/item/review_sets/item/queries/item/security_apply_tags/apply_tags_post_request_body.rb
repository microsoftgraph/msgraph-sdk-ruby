require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/security/ediscovery_review_tag'
require_relative '../../../../../../../../security'
require_relative '../../../../../../../cases'
require_relative '../../../../../../ediscovery_cases'
require_relative '../../../../../item'
require_relative '../../../../review_sets'
require_relative '../../../item'
require_relative '../../queries'
require_relative '../item'
require_relative './security_apply_tags'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module ReviewSets
                        module Item
                            module Queries
                                module Item
                                    module SecurityApplyTags
                                        class ApplyTagsPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The tagsToAdd property
                                            @tags_to_add
                                            ## 
                                            # The tagsToRemove property
                                            @tags_to_remove
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
                                            ## Instantiates a new applyTagsPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                            ## @return a apply_tags_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return ApplyTagsPostRequestBody.new
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "tagsToAdd" => lambda {|n| @tags_to_add = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewTag.create_from_discriminator_value(pn) }) },
                                                    "tagsToRemove" => lambda {|n| @tags_to_remove = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewTag.create_from_discriminator_value(pn) }) },
                                                }
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_collection_of_object_values("tagsToAdd", @tags_to_add)
                                                writer.write_collection_of_object_values("tagsToRemove", @tags_to_remove)
                                                writer.write_additional_data(@additional_data)
                                            end
                                            ## 
                                            ## Gets the tagsToAdd property value. The tagsToAdd property
                                            ## @return a ediscovery_review_tag
                                            ## 
                                            def tags_to_add
                                                return @tags_to_add
                                            end
                                            ## 
                                            ## Sets the tagsToAdd property value. The tagsToAdd property
                                            ## @param value Value to set for the tags_to_add property.
                                            ## @return a void
                                            ## 
                                            def tags_to_add=(value)
                                                @tags_to_add = value
                                            end
                                            ## 
                                            ## Gets the tagsToRemove property value. The tagsToRemove property
                                            ## @return a ediscovery_review_tag
                                            ## 
                                            def tags_to_remove
                                                return @tags_to_remove
                                            end
                                            ## 
                                            ## Sets the tagsToRemove property value. The tagsToRemove property
                                            ## @param value Value to set for the tags_to_remove property.
                                            ## @return a void
                                            ## 
                                            def tags_to_remove=(value)
                                                @tags_to_remove = value
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
