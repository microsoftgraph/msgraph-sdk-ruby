require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../users'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../onenote'
require_relative '../../../../../../../../notebooks'
require_relative '../../../../../../../item'
require_relative '../../../../../../section_groups'
require_relative '../../../../../item'
require_relative '../../../../sections'
require_relative '../../../item'
require_relative '../../pages'
require_relative '../item'
require_relative './copy_to_section'

module MicrosoftGraph
    module Users
        module Item
            module Onenote
                module Notebooks
                    module Item
                        module SectionGroups
                            module Item
                                module Sections
                                    module Item
                                        module Pages
                                            module Item
                                                module CopyToSection
                                                    class CopyToSectionPostRequestBody
                                                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                        ## 
                                                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                        @additional_data
                                                        ## 
                                                        # The groupId property
                                                        @group_id
                                                        ## 
                                                        # The id property
                                                        @id
                                                        ## 
                                                        # The siteCollectionId property
                                                        @site_collection_id
                                                        ## 
                                                        # The siteId property
                                                        @site_id
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
                                                        ## Instantiates a new copyToSectionPostRequestBody and sets the default values.
                                                        ## @return a void
                                                        ## 
                                                        def initialize()
                                                            @additional_data = Hash.new
                                                        end
                                                        ## 
                                                        ## Creates a new instance of the appropriate class based on discriminator value
                                                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                                                        ## @return a copy_to_section_post_request_body
                                                        ## 
                                                        def self.create_from_discriminator_value(parse_node)
                                                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                            return CopyToSectionPostRequestBody.new
                                                        end
                                                        ## 
                                                        ## The deserialization information for the current model
                                                        ## @return a i_dictionary
                                                        ## 
                                                        def get_field_deserializers()
                                                            return {
                                                                "groupId" => lambda {|n| @group_id = n.get_string_value() },
                                                                "id" => lambda {|n| @id = n.get_string_value() },
                                                                "siteCollectionId" => lambda {|n| @site_collection_id = n.get_string_value() },
                                                                "siteId" => lambda {|n| @site_id = n.get_string_value() },
                                                            }
                                                        end
                                                        ## 
                                                        ## Gets the groupId property value. The groupId property
                                                        ## @return a string
                                                        ## 
                                                        def group_id
                                                            return @group_id
                                                        end
                                                        ## 
                                                        ## Sets the groupId property value. The groupId property
                                                        ## @param value Value to set for the group_id property.
                                                        ## @return a void
                                                        ## 
                                                        def group_id=(value)
                                                            @group_id = value
                                                        end
                                                        ## 
                                                        ## Gets the id property value. The id property
                                                        ## @return a string
                                                        ## 
                                                        def id
                                                            return @id
                                                        end
                                                        ## 
                                                        ## Sets the id property value. The id property
                                                        ## @param value Value to set for the id property.
                                                        ## @return a void
                                                        ## 
                                                        def id=(value)
                                                            @id = value
                                                        end
                                                        ## 
                                                        ## Serializes information the current object
                                                        ## @param writer Serialization writer to use to serialize this model
                                                        ## @return a void
                                                        ## 
                                                        def serialize(writer)
                                                            raise StandardError, 'writer cannot be null' if writer.nil?
                                                            writer.write_string_value("groupId", @group_id)
                                                            writer.write_string_value("id", @id)
                                                            writer.write_string_value("siteCollectionId", @site_collection_id)
                                                            writer.write_string_value("siteId", @site_id)
                                                            writer.write_additional_data(@additional_data)
                                                        end
                                                        ## 
                                                        ## Gets the siteCollectionId property value. The siteCollectionId property
                                                        ## @return a string
                                                        ## 
                                                        def site_collection_id
                                                            return @site_collection_id
                                                        end
                                                        ## 
                                                        ## Sets the siteCollectionId property value. The siteCollectionId property
                                                        ## @param value Value to set for the site_collection_id property.
                                                        ## @return a void
                                                        ## 
                                                        def site_collection_id=(value)
                                                            @site_collection_id = value
                                                        end
                                                        ## 
                                                        ## Gets the siteId property value. The siteId property
                                                        ## @return a string
                                                        ## 
                                                        def site_id
                                                            return @site_id
                                                        end
                                                        ## 
                                                        ## Sets the siteId property value. The siteId property
                                                        ## @param value Value to set for the site_id property.
                                                        ## @return a void
                                                        ## 
                                                        def site_id=(value)
                                                            @site_id = value
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
        end
    end
end
