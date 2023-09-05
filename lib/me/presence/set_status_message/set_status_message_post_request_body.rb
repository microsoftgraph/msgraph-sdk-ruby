require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/presence_status_message'
require_relative '../../me'
require_relative '../presence'
require_relative './set_status_message'

module MicrosoftGraph
    module Me
        module Presence
            module SetStatusMessage
                class SetStatusMessagePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The statusMessage property
                    @status_message
                    ## 
                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the additionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new setStatusMessagePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a set_status_message_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return SetStatusMessagePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "statusMessage" => lambda {|n| @status_message = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PresenceStatusMessage.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("statusMessage", @status_message)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the statusMessage property value. The statusMessage property
                    ## @return a presence_status_message
                    ## 
                    def status_message
                        return @status_message
                    end
                    ## 
                    ## Sets the statusMessage property value. The statusMessage property
                    ## @param value Value to set for the statusMessage property.
                    ## @return a void
                    ## 
                    def status_message=(value)
                        @status_message = value
                    end
                end
            end
        end
    end
end
