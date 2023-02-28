require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../drives'
require_relative '../../../../item'
require_relative '../../../items'
require_relative '../../item'
require_relative '../workbook'
require_relative './create_session'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module CreateSession
                            class CreateSessionPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The persistChanges property
                                @persist_changes
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
                                ## Instantiates a new createSessionPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parseNode The parse node to use to read the discriminator value and create the object
                                ## @return a create_session_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return CreateSessionPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "persistChanges" => lambda {|n| @persist_changes = n.get_boolean_value() },
                                    }
                                end
                                ## 
                                ## Gets the persistChanges property value. The persistChanges property
                                ## @return a boolean
                                ## 
                                def persist_changes
                                    return @persist_changes
                                end
                                ## 
                                ## Sets the persistChanges property value. The persistChanges property
                                ## @param value Value to set for the persist_changes property.
                                ## @return a void
                                ## 
                                def persist_changes=(value)
                                    @persist_changes = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_boolean_value("persistChanges", @persist_changes)
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
