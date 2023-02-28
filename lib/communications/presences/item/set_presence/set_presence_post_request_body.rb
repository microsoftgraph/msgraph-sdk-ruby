require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../communications'
require_relative '../../presences'
require_relative '../item'
require_relative './set_presence'

module MicrosoftGraph
    module Communications
        module Presences
            module Item
                module SetPresence
                    class SetPresencePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The activity property
                        @activity
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The availability property
                        @availability
                        ## 
                        # The expirationDuration property
                        @expiration_duration
                        ## 
                        # The sessionId property
                        @session_id
                        ## 
                        ## Gets the activity property value. The activity property
                        ## @return a string
                        ## 
                        def activity
                            return @activity
                        end
                        ## 
                        ## Sets the activity property value. The activity property
                        ## @param value Value to set for the activity property.
                        ## @return a void
                        ## 
                        def activity=(value)
                            @activity = value
                        end
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
                        ## Gets the availability property value. The availability property
                        ## @return a string
                        ## 
                        def availability
                            return @availability
                        end
                        ## 
                        ## Sets the availability property value. The availability property
                        ## @param value Value to set for the availability property.
                        ## @return a void
                        ## 
                        def availability=(value)
                            @availability = value
                        end
                        ## 
                        ## Instantiates a new setPresencePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a set_presence_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SetPresencePostRequestBody.new
                        end
                        ## 
                        ## Gets the expirationDuration property value. The expirationDuration property
                        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
                        ## 
                        def expiration_duration
                            return @expiration_duration
                        end
                        ## 
                        ## Sets the expirationDuration property value. The expirationDuration property
                        ## @param value Value to set for the expiration_duration property.
                        ## @return a void
                        ## 
                        def expiration_duration=(value)
                            @expiration_duration = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "activity" => lambda {|n| @activity = n.get_string_value() },
                                "availability" => lambda {|n| @availability = n.get_string_value() },
                                "expirationDuration" => lambda {|n| @expiration_duration = n.get_duration_value() },
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
                            writer.write_string_value("activity", @activity)
                            writer.write_string_value("availability", @availability)
                            writer.write_duration_value("expirationDuration", @expiration_duration)
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
end
