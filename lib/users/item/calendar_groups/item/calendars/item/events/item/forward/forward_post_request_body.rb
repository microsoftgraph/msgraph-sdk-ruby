require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/recipient'
require_relative '../../../../../../../../users'
require_relative '../../../../../../../item'
require_relative '../../../../../../calendar_groups'
require_relative '../../../../../item'
require_relative '../../../../calendars'
require_relative '../../../item'
require_relative '../../events'
require_relative '../item'
require_relative './forward'

module MicrosoftGraph
    module Users
        module Item
            module CalendarGroups
                module Item
                    module Calendars
                        module Item
                            module Events
                                module Item
                                    module Forward
                                        class ForwardPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The Comment property
                                            @comment
                                            ## 
                                            # The ToRecipients property
                                            @to_recipients
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
                                            ## Gets the comment property value. The Comment property
                                            ## @return a string
                                            ## 
                                            def comment
                                                return @comment
                                            end
                                            ## 
                                            ## Sets the comment property value. The Comment property
                                            ## @param value Value to set for the Comment property.
                                            ## @return a void
                                            ## 
                                            def comment=(value)
                                                @comment = value
                                            end
                                            ## 
                                            ## Instantiates a new forwardPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                            ## @return a forward_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return ForwardPostRequestBody.new
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "Comment" => lambda {|n| @comment = n.get_string_value() },
                                                    "ToRecipients" => lambda {|n| @to_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                                                }
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_string_value("Comment", @comment)
                                                writer.write_collection_of_object_values("ToRecipients", @to_recipients)
                                                writer.write_additional_data(@additional_data)
                                            end
                                            ## 
                                            ## Gets the toRecipients property value. The ToRecipients property
                                            ## @return a recipient
                                            ## 
                                            def to_recipients
                                                return @to_recipients
                                            end
                                            ## 
                                            ## Sets the toRecipients property value. The ToRecipients property
                                            ## @param value Value to set for the to_recipients property.
                                            ## @return a void
                                            ## 
                                            def to_recipients=(value)
                                                @to_recipients = value
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
end
