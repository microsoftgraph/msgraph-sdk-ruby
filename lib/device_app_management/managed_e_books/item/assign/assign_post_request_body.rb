require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/managed_e_book_assignment'
require_relative '../../../device_app_management'
require_relative '../../managed_e_books'
require_relative '../item'
require_relative './assign'

module MicrosoftGraph
    module DeviceAppManagement
        module ManagedEBooks
            module Item
                module Assign
                    class AssignPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The managedEBookAssignments property
                        @managed_e_book_assignments
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
                        ## Instantiates a new assignPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a assign_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return AssignPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "managedEBookAssignments" => lambda {|n| @managed_e_book_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedEBookAssignment.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the managedEBookAssignments property value. The managedEBookAssignments property
                        ## @return a managed_e_book_assignment
                        ## 
                        def managed_e_book_assignments
                            return @managed_e_book_assignments
                        end
                        ## 
                        ## Sets the managedEBookAssignments property value. The managedEBookAssignments property
                        ## @param value Value to set for the managed_e_book_assignments property.
                        ## @return a void
                        ## 
                        def managed_e_book_assignments=(value)
                            @managed_e_book_assignments = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("managedEBookAssignments", @managed_e_book_assignments)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
