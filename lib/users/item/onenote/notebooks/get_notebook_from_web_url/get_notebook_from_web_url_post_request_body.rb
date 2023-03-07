require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../onenote'
require_relative '../notebooks'
require_relative './get_notebook_from_web_url'

module MicrosoftGraph
    module Users
        module Item
            module Onenote
                module Notebooks
                    module GetNotebookFromWebUrl
                        class GetNotebookFromWebUrlPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The webUrl property
                            @web_url
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
                            ## Instantiates a new getNotebookFromWebUrlPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a get_notebook_from_web_url_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return GetNotebookFromWebUrlPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("webUrl", @web_url)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the webUrl property value. The webUrl property
                            ## @return a string
                            ## 
                            def web_url
                                return @web_url
                            end
                            ## 
                            ## Sets the webUrl property value. The webUrl property
                            ## @param value Value to set for the web_url property.
                            ## @return a void
                            ## 
                            def web_url=(value)
                                @web_url = value
                            end
                        end
                    end
                end
            end
        end
    end
end
