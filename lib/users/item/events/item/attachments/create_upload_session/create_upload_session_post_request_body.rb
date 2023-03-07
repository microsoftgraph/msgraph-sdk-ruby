require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/attachment_item'
require_relative '../../../../../users'
require_relative '../../../../item'
require_relative '../../../events'
require_relative '../../item'
require_relative '../attachments'
require_relative './create_upload_session'

module MicrosoftGraph
    module Users
        module Item
            module Events
                module Item
                    module Attachments
                        module CreateUploadSession
                            class CreateUploadSessionPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The AttachmentItem property
                                @attachment_item
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
                                ## Gets the attachmentItem property value. The AttachmentItem property
                                ## @return a attachment_item
                                ## 
                                def attachment_item
                                    return @attachment_item
                                end
                                ## 
                                ## Sets the attachmentItem property value. The AttachmentItem property
                                ## @param value Value to set for the attachment_item property.
                                ## @return a void
                                ## 
                                def attachment_item=(value)
                                    @attachment_item = value
                                end
                                ## 
                                ## Instantiates a new createUploadSessionPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parseNode The parse node to use to read the discriminator value and create the object
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
                                        "AttachmentItem" => lambda {|n| @attachment_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttachmentItem.create_from_discriminator_value(pn) }) },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_object_value("AttachmentItem", @attachment_item)
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
