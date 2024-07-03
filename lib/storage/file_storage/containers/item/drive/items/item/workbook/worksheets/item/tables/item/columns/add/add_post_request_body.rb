require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../storage'
require_relative '../../../../../../../../../../../../file_storage'
require_relative '../../../../../../../../../../../containers'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../drive'
require_relative '../../../../../../../../items'
require_relative '../../../../../../../item'
require_relative '../../../../../../workbook'
require_relative '../../../../../worksheets'
require_relative '../../../../item'
require_relative '../../../tables'
require_relative '../../item'
require_relative '../columns'
require_relative './add'

module MicrosoftGraph
    module Storage
        module FileStorage
            module Containers
                module Item
                    module Drive
                        module Items
                            module Item
                                module Workbook
                                    module Worksheets
                                        module Item
                                            module Tables
                                                module Item
                                                    module Columns
                                                        module Add
                                                            class AddPostRequestBody
                                                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                                ## 
                                                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                                @additional_data
                                                                ## 
                                                                # The index property
                                                                @index
                                                                ## 
                                                                # The name property
                                                                @name
                                                                ## 
                                                                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                                ## @return a i_dictionary
                                                                ## 
                                                                def additional_data
                                                                    return @additional_data
                                                                end
                                                                ## 
                                                                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                                ## @param value Value to set for the AdditionalData property.
                                                                ## @return a void
                                                                ## 
                                                                def additional_data=(value)
                                                                    @additional_data = value
                                                                end
                                                                ## 
                                                                ## Instantiates a new AddPostRequestBody and sets the default values.
                                                                ## @return a void
                                                                ## 
                                                                def initialize()
                                                                    @additional_data = Hash.new
                                                                end
                                                                ## 
                                                                ## Creates a new instance of the appropriate class based on discriminator value
                                                                ## @param parse_node The parse node to use to read the discriminator value and create the object
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
                                                                        "index" => lambda {|n| @index = n.get_number_value() },
                                                                        "name" => lambda {|n| @name = n.get_string_value() },
                                                                    }
                                                                end
                                                                ## 
                                                                ## Gets the index property value. The index property
                                                                ## @return a integer
                                                                ## 
                                                                def index
                                                                    return @index
                                                                end
                                                                ## 
                                                                ## Sets the index property value. The index property
                                                                ## @param value Value to set for the index property.
                                                                ## @return a void
                                                                ## 
                                                                def index=(value)
                                                                    @index = value
                                                                end
                                                                ## 
                                                                ## Gets the name property value. The name property
                                                                ## @return a string
                                                                ## 
                                                                def name
                                                                    return @name
                                                                end
                                                                ## 
                                                                ## Sets the name property value. The name property
                                                                ## @param value Value to set for the name property.
                                                                ## @return a void
                                                                ## 
                                                                def name=(value)
                                                                    @name = value
                                                                end
                                                                ## 
                                                                ## Serializes information the current object
                                                                ## @param writer Serialization writer to use to serialize this model
                                                                ## @return a void
                                                                ## 
                                                                def serialize(writer)
                                                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                                                    writer.write_number_value("index", @index)
                                                                    writer.write_string_value("name", @name)
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
                        end
                    end
                end
            end
        end
    end
end
