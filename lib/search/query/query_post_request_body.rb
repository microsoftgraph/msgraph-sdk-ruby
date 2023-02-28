require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/search_request'
require_relative '../search'
require_relative './query'

module MicrosoftGraph
    module Search
        module Query
            class QueryPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The requests property
                @requests
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
                ## Instantiates a new queryPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a query_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return QueryPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "requests" => lambda {|n| @requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchRequest.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the requests property value. The requests property
                ## @return a search_request
                ## 
                def requests
                    return @requests
                end
                ## 
                ## Sets the requests property value. The requests property
                ## @param value Value to set for the requests property.
                ## @return a void
                ## 
                def requests=(value)
                    @requests = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("requests", @requests)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
