require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../tables'
require_relative './add'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Tables
                            module Add
                                class AddPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The address property
                                    @address
                                    ## 
                                    # The hasHeaders property
                                    @has_headers
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
                                    ## Gets the address property value. The address property
                                    ## @return a string
                                    ## 
                                    def address
                                        return @address
                                    end
                                    ## 
                                    ## Sets the address property value. The address property
                                    ## @param value Value to set for the address property.
                                    ## @return a void
                                    ## 
                                    def address=(value)
                                        @address = value
                                    end
                                    ## 
                                    ## Instantiates a new addPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a add_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return AddPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "address" => lambda {|n| @address = n.get_string_value() },
                                            "hasHeaders" => lambda {|n| @has_headers = n.get_boolean_value() },
                                        }
                                    end
                                    ## 
                                    ## Gets the hasHeaders property value. The hasHeaders property
                                    ## @return a boolean
                                    ## 
                                    def has_headers
                                        return @has_headers
                                    end
                                    ## 
                                    ## Sets the hasHeaders property value. The hasHeaders property
                                    ## @param value Value to set for the has_headers property.
                                    ## @return a void
                                    ## 
                                    def has_headers=(value)
                                        @has_headers = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("address", @address)
                                        writer.write_boolean_value("hasHeaders", @has_headers)
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
