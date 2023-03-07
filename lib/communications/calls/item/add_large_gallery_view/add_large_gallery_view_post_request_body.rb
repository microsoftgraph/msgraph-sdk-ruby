require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './add_large_gallery_view'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module AddLargeGalleryView
                    class AddLargeGalleryViewPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The clientContext property
                        @client_context
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
                        ## Gets the clientContext property value. The clientContext property
                        ## @return a string
                        ## 
                        def client_context
                            return @client_context
                        end
                        ## 
                        ## Sets the clientContext property value. The clientContext property
                        ## @param value Value to set for the client_context property.
                        ## @return a void
                        ## 
                        def client_context=(value)
                            @client_context = value
                        end
                        ## 
                        ## Instantiates a new addLargeGalleryViewPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a add_large_gallery_view_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return AddLargeGalleryViewPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "clientContext" => lambda {|n| @client_context = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("clientContext", @client_context)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
