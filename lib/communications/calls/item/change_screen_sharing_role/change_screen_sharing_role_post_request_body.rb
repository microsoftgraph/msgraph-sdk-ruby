require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/screen_sharing_role'
require_relative '../../../communications'
require_relative '../../calls'
require_relative '../item'
require_relative './change_screen_sharing_role'

module MicrosoftGraph
    module Communications
        module Calls
            module Item
                module ChangeScreenSharingRole
                    class ChangeScreenSharingRolePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The role property
                        @role
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
                        ## Instantiates a new changeScreenSharingRolePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a change_screen_sharing_role_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ChangeScreenSharingRolePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraph::Models::ScreenSharingRole) },
                            }
                        end
                        ## 
                        ## Gets the role property value. The role property
                        ## @return a screen_sharing_role
                        ## 
                        def role
                            return @role
                        end
                        ## 
                        ## Sets the role property value. The role property
                        ## @param value Value to set for the role property.
                        ## @return a void
                        ## 
                        def role=(value)
                            @role = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("role", @role)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
