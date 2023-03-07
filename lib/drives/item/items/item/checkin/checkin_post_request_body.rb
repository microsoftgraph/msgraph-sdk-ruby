require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './checkin'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Checkin
                        class CheckinPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The checkInAs property
                            @check_in_as
                            ## 
                            # The comment property
                            @comment
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
                            ## Gets the checkInAs property value. The checkInAs property
                            ## @return a string
                            ## 
                            def check_in_as
                                return @check_in_as
                            end
                            ## 
                            ## Sets the checkInAs property value. The checkInAs property
                            ## @param value Value to set for the check_in_as property.
                            ## @return a void
                            ## 
                            def check_in_as=(value)
                                @check_in_as = value
                            end
                            ## 
                            ## Gets the comment property value. The comment property
                            ## @return a string
                            ## 
                            def comment
                                return @comment
                            end
                            ## 
                            ## Sets the comment property value. The comment property
                            ## @param value Value to set for the comment property.
                            ## @return a void
                            ## 
                            def comment=(value)
                                @comment = value
                            end
                            ## 
                            ## Instantiates a new checkinPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a checkin_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return CheckinPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "checkInAs" => lambda {|n| @check_in_as = n.get_string_value() },
                                    "comment" => lambda {|n| @comment = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("checkInAs", @check_in_as)
                                writer.write_string_value("comment", @comment)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
