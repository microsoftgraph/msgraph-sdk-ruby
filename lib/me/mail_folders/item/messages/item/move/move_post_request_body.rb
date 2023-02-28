require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../me'
require_relative '../../../../mail_folders'
require_relative '../../../item'
require_relative '../../messages'
require_relative '../item'
require_relative './move'

module MicrosoftGraph
    module Me
        module MailFolders
            module Item
                module Messages
                    module Item
                        module Move
                            class MovePostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The DestinationId property
                                @destination_id
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
                                ## Instantiates a new movePostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parseNode The parse node to use to read the discriminator value and create the object
                                ## @return a move_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return MovePostRequestBody.new
                                end
                                ## 
                                ## Gets the destinationId property value. The DestinationId property
                                ## @return a string
                                ## 
                                def destination_id
                                    return @destination_id
                                end
                                ## 
                                ## Sets the destinationId property value. The DestinationId property
                                ## @param value Value to set for the destination_id property.
                                ## @return a void
                                ## 
                                def destination_id=(value)
                                    @destination_id = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "DestinationId" => lambda {|n| @destination_id = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_string_value("DestinationId", @destination_id)
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
