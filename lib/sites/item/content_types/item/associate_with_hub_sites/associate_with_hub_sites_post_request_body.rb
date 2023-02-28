require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../sites'
require_relative '../../../item'
require_relative '../../content_types'
require_relative '../item'
require_relative './associate_with_hub_sites'

module MicrosoftGraph
    module Sites
        module Item
            module ContentTypes
                module Item
                    module AssociateWithHubSites
                        class AssociateWithHubSitesPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The hubSiteUrls property
                            @hub_site_urls
                            ## 
                            # The propagateToExistingLists property
                            @propagate_to_existing_lists
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
                            ## Instantiates a new associateWithHubSitesPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a associate_with_hub_sites_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return AssociateWithHubSitesPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "hubSiteUrls" => lambda {|n| @hub_site_urls = n.get_collection_of_primitive_values(String) },
                                    "propagateToExistingLists" => lambda {|n| @propagate_to_existing_lists = n.get_boolean_value() },
                                }
                            end
                            ## 
                            ## Gets the hubSiteUrls property value. The hubSiteUrls property
                            ## @return a string
                            ## 
                            def hub_site_urls
                                return @hub_site_urls
                            end
                            ## 
                            ## Sets the hubSiteUrls property value. The hubSiteUrls property
                            ## @param value Value to set for the hub_site_urls property.
                            ## @return a void
                            ## 
                            def hub_site_urls=(value)
                                @hub_site_urls = value
                            end
                            ## 
                            ## Gets the propagateToExistingLists property value. The propagateToExistingLists property
                            ## @return a boolean
                            ## 
                            def propagate_to_existing_lists
                                return @propagate_to_existing_lists
                            end
                            ## 
                            ## Sets the propagateToExistingLists property value. The propagateToExistingLists property
                            ## @param value Value to set for the propagate_to_existing_lists property.
                            ## @return a void
                            ## 
                            def propagate_to_existing_lists=(value)
                                @propagate_to_existing_lists = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_collection_of_primitive_values("hubSiteUrls", @hub_site_urls)
                                writer.write_boolean_value("propagateToExistingLists", @propagate_to_existing_lists)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
