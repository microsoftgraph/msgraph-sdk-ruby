require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/process_content_request'
require_relative '../../../users'
require_relative '../../item'
require_relative '../data_security_and_governance'
require_relative './process_content'

module MicrosoftGraph
    module Users
        module Item
            module DataSecurityAndGovernance
                module ProcessContent
                    class ProcessContentPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The contentToProcess property
                        @content_to_process
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
                        ## Instantiates a new ProcessContentPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Gets the contentToProcess property value. The contentToProcess property
                        ## @return a process_content_request
                        ## 
                        def content_to_process
                            return @content_to_process
                        end
                        ## 
                        ## Sets the contentToProcess property value. The contentToProcess property
                        ## @param value Value to set for the contentToProcess property.
                        ## @return a void
                        ## 
                        def content_to_process=(value)
                            @content_to_process = value
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a process_content_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ProcessContentPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "contentToProcess" => lambda {|n| @content_to_process = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProcessContentRequest.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("contentToProcess", @content_to_process)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
