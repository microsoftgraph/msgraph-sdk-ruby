require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/browser_shared_cookie'
require_relative '../../../../../../models/browser_site'
require_relative '../../../../../admin'
require_relative '../../../../edge'
require_relative '../../../internet_explorer_mode'
require_relative '../../site_lists'
require_relative '../item'
require_relative './publish'

module MicrosoftGraph
    module Admin
        module Edge
            module InternetExplorerMode
                module SiteLists
                    module Item
                        module Publish
                            class PublishPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The revision property
                                @revision
                                ## 
                                # The sharedCookies property
                                @shared_cookies
                                ## 
                                # The sites property
                                @sites
                                ## 
                                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @return a i_dictionary
                                ## 
                                def additional_data
                                    return @additional_data
                                end
                                ## 
                                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @param value Value to set for the AdditionalData property.
                                ## @return a void
                                ## 
                                def additional_data=(value)
                                    @additional_data = value
                                end
                                ## 
                                ## Instantiates a new PublishPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a publish_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return PublishPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "revision" => lambda {|n| @revision = n.get_string_value() },
                                        "sharedCookies" => lambda {|n| @shared_cookies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSharedCookie.create_from_discriminator_value(pn) }) },
                                        "sites" => lambda {|n| @sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSite.create_from_discriminator_value(pn) }) },
                                    }
                                end
                                ## 
                                ## Gets the revision property value. The revision property
                                ## @return a string
                                ## 
                                def revision
                                    return @revision
                                end
                                ## 
                                ## Sets the revision property value. The revision property
                                ## @param value Value to set for the revision property.
                                ## @return a void
                                ## 
                                def revision=(value)
                                    @revision = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_string_value("revision", @revision)
                                    writer.write_collection_of_object_values("sharedCookies", @shared_cookies)
                                    writer.write_collection_of_object_values("sites", @sites)
                                    writer.write_additional_data(@additional_data)
                                end
                                ## 
                                ## Gets the sharedCookies property value. The sharedCookies property
                                ## @return a browser_shared_cookie
                                ## 
                                def shared_cookies
                                    return @shared_cookies
                                end
                                ## 
                                ## Sets the sharedCookies property value. The sharedCookies property
                                ## @param value Value to set for the sharedCookies property.
                                ## @return a void
                                ## 
                                def shared_cookies=(value)
                                    @shared_cookies = value
                                end
                                ## 
                                ## Gets the sites property value. The sites property
                                ## @return a browser_site
                                ## 
                                def sites
                                    return @sites
                                end
                                ## 
                                ## Sets the sites property value. The sites property
                                ## @param value Value to set for the sites property.
                                ## @return a void
                                ## 
                                def sites=(value)
                                    @sites = value
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
