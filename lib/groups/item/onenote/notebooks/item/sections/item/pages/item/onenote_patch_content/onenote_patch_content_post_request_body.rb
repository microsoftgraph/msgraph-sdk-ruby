require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../models/onenote_patch_content_command'
require_relative '../../../../../../../../../groups'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../onenote'
require_relative '../../../../../../notebooks'
require_relative '../../../../../item'
require_relative '../../../../sections'
require_relative '../../../item'
require_relative '../../pages'
require_relative '../item'
require_relative './onenote_patch_content'

module MicrosoftGraph
    module Groups
        module Item
            module Onenote
                module Notebooks
                    module Item
                        module Sections
                            module Item
                                module Pages
                                    module Item
                                        module OnenotePatchContent
                                            class OnenotePatchContentPostRequestBody
                                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                ## 
                                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                @additional_data
                                                ## 
                                                # The commands property
                                                @commands
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
                                                ## Gets the commands property value. The commands property
                                                ## @return a onenote_patch_content_command
                                                ## 
                                                def commands
                                                    return @commands
                                                end
                                                ## 
                                                ## Sets the commands property value. The commands property
                                                ## @param value Value to set for the commands property.
                                                ## @return a void
                                                ## 
                                                def commands=(value)
                                                    @commands = value
                                                end
                                                ## 
                                                ## Instantiates a new onenotePatchContentPostRequestBody and sets the default values.
                                                ## @return a void
                                                ## 
                                                def initialize()
                                                    @additional_data = Hash.new
                                                end
                                                ## 
                                                ## Creates a new instance of the appropriate class based on discriminator value
                                                ## @param parseNode The parse node to use to read the discriminator value and create the object
                                                ## @return a onenote_patch_content_post_request_body
                                                ## 
                                                def self.create_from_discriminator_value(parse_node)
                                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                    return OnenotePatchContentPostRequestBody.new
                                                end
                                                ## 
                                                ## The deserialization information for the current model
                                                ## @return a i_dictionary
                                                ## 
                                                def get_field_deserializers()
                                                    return {
                                                        "commands" => lambda {|n| @commands = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenotePatchContentCommand.create_from_discriminator_value(pn) }) },
                                                    }
                                                end
                                                ## 
                                                ## Serializes information the current object
                                                ## @param writer Serialization writer to use to serialize this model
                                                ## @return a void
                                                ## 
                                                def serialize(writer)
                                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                                    writer.write_collection_of_object_values("commands", @commands)
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
