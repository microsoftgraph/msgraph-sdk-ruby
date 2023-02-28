require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../admin'
require_relative '../../service_announcement'
require_relative '../messages'
require_relative './archive'

module MicrosoftGraph
    module Admin
        module ServiceAnnouncement
            module Messages
                module Archive
                    class ArchivePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The messageIds property
                        @message_ids
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
                        ## Instantiates a new archivePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a archive_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ArchivePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "messageIds" => lambda {|n| @message_ids = n.get_collection_of_primitive_values(String) },
                            }
                        end
                        ## 
                        ## Gets the messageIds property value. The messageIds property
                        ## @return a string
                        ## 
                        def message_ids
                            return @message_ids
                        end
                        ## 
                        ## Sets the messageIds property value. The messageIds property
                        ## @param value Value to set for the message_ids property.
                        ## @return a void
                        ## 
                        def message_ids=(value)
                            @message_ids = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("messageIds", @message_ids)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
