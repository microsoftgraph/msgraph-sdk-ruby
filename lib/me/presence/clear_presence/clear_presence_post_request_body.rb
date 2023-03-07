require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../me'
require_relative '../presence'
require_relative './clear_presence'

module MicrosoftGraph
    module Me
        module Presence
            module ClearPresence
                class ClearPresencePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The sessionId property
                    @session_id
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
                    ## Instantiates a new clearPresencePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a clear_presence_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ClearPresencePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "sessionId" => lambda {|n| @session_id = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("sessionId", @session_id)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the sessionId property value. The sessionId property
                    ## @return a string
                    ## 
                    def session_id
                        return @session_id
                    end
                    ## 
                    ## Sets the sessionId property value. The sessionId property
                    ## @param value Value to set for the session_id property.
                    ## @return a void
                    ## 
                    def session_id=(value)
                        @session_id = value
                    end
                end
            end
        end
    end
end
