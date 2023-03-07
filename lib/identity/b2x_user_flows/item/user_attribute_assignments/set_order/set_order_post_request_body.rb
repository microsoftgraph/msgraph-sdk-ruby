require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/assignment_order'
require_relative '../../../../identity'
require_relative '../../../b2x_user_flows'
require_relative '../../item'
require_relative '../user_attribute_assignments'
require_relative './set_order'

module MicrosoftGraph
    module Identity
        module B2xUserFlows
            module Item
                module UserAttributeAssignments
                    module SetOrder
                        class SetOrderPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The newAssignmentOrder property
                            @new_assignment_order
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
                            ## Instantiates a new setOrderPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a set_order_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return SetOrderPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "newAssignmentOrder" => lambda {|n| @new_assignment_order = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AssignmentOrder.create_from_discriminator_value(pn) }) },
                                }
                            end
                            ## 
                            ## Gets the newAssignmentOrder property value. The newAssignmentOrder property
                            ## @return a assignment_order
                            ## 
                            def new_assignment_order
                                return @new_assignment_order
                            end
                            ## 
                            ## Sets the newAssignmentOrder property value. The newAssignmentOrder property
                            ## @param value Value to set for the new_assignment_order property.
                            ## @return a void
                            ## 
                            def new_assignment_order=(value)
                                @new_assignment_order = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_object_value("newAssignmentOrder", @new_assignment_order)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
