require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/base_collection_pagination_count_response'
require_relative '../../../../../models/content_type'
require_relative '../../../../shares'
require_relative '../../../item'
require_relative '../../list'
require_relative '../content_types'
require_relative './get_compatible_hub_content_types'

module MicrosoftGraph
    module Shares
        module Item
            module List
                module ContentTypes
                    module GetCompatibleHubContentTypes
                        class GetCompatibleHubContentTypesGetResponse < MicrosoftGraph::Models::BaseCollectionPaginationCountResponse
                            include MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # The value property
                            @value
                            ## 
                            ## Instantiates a new getCompatibleHubContentTypesGetResponse and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                super
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a get_compatible_hub_content_types_get_response
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return GetCompatibleHubContentTypesGetResponse.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return super.merge({
                                    "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }) },
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
                                writer.write_collection_of_object_values("value", @value)
                            end
                            ## 
                            ## Gets the value property value. The value property
                            ## @return a content_type
                            ## 
                            def value
                                return @value
                            end
                            ## 
                            ## Sets the value property value. The value property
                            ## @param value Value to set for the value property.
                            ## @return a void
                            ## 
                            def value=(value)
                                @value = value
                            end
                        end
                    end
                end
            end
        end
    end
end
