require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/print_document_upload_properties'
require_relative '../../../../../../../print'
require_relative '../../../../../../printers'
require_relative '../../../../../item'
require_relative '../../../../jobs'
require_relative '../../../item'
require_relative '../../documents'
require_relative '../item'
require_relative './create_upload_session'

module MicrosoftGraph
    module Print
        module Printers
            module Item
                module Jobs
                    module Item
                        module Documents
                            module Item
                                module CreateUploadSession
                                    class CreateUploadSessionPostRequestBody
                                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                        ## 
                                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                        @additional_data
                                        ## 
                                        # The properties property
                                        @properties
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
                                        ## Instantiates a new CreateUploadSessionPostRequestBody and sets the default values.
                                        ## @return a void
                                        ## 
                                        def initialize()
                                            @additional_data = Hash.new
                                        end
                                        ## 
                                        ## Creates a new instance of the appropriate class based on discriminator value
                                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                                        ## @return a create_upload_session_post_request_body
                                        ## 
                                        def self.create_from_discriminator_value(parse_node)
                                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                            return CreateUploadSessionPostRequestBody.new
                                        end
                                        ## 
                                        ## The deserialization information for the current model
                                        ## @return a i_dictionary
                                        ## 
                                        def get_field_deserializers()
                                            return {
                                                "properties" => lambda {|n| @properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintDocumentUploadProperties.create_from_discriminator_value(pn) }) },
                                            }
                                        end
                                        ## 
                                        ## Gets the properties property value. The properties property
                                        ## @return a print_document_upload_properties
                                        ## 
                                        def properties
                                            return @properties
                                        end
                                        ## 
                                        ## Sets the properties property value. The properties property
                                        ## @param value Value to set for the properties property.
                                        ## @return a void
                                        ## 
                                        def properties=(value)
                                            @properties = value
                                        end
                                        ## 
                                        ## Serializes information the current object
                                        ## @param writer Serialization writer to use to serialize this model
                                        ## @return a void
                                        ## 
                                        def serialize(writer)
                                            raise StandardError, 'writer cannot be null' if writer.nil?
                                            writer.write_object_value("properties", @properties)
                                            writer.write_additional_data(@additional_data)
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
