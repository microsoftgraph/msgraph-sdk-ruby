require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../solutions'
require_relative '../../../../booking_businesses'
require_relative '../../../item'
require_relative '../../calendar_view'
require_relative '../item'
require_relative './cancel'

module MicrosoftGraph
    module Solutions
        module BookingBusinesses
            module Item
                module CalendarView
                    module Item
                        module Cancel
                            class CancelPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The cancellationMessage property
                                @cancellation_message
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
                                ## Gets the cancellationMessage property value. The cancellationMessage property
                                ## @return a string
                                ## 
                                def cancellation_message
                                    return @cancellation_message
                                end
                                ## 
                                ## Sets the cancellationMessage property value. The cancellationMessage property
                                ## @param value Value to set for the cancellation_message property.
                                ## @return a void
                                ## 
                                def cancellation_message=(value)
                                    @cancellation_message = value
                                end
                                ## 
                                ## Instantiates a new cancelPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parseNode The parse node to use to read the discriminator value and create the object
                                ## @return a cancel_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return CancelPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "cancellationMessage" => lambda {|n| @cancellation_message = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_string_value("cancellationMessage", @cancellation_message)
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
