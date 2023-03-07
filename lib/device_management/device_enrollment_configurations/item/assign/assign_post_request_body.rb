require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/enrollment_configuration_assignment'
require_relative '../../../device_management'
require_relative '../../device_enrollment_configurations'
require_relative '../item'
require_relative './assign'

module MicrosoftGraph
    module DeviceManagement
        module DeviceEnrollmentConfigurations
            module Item
                module Assign
                    class AssignPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The enrollmentConfigurationAssignments property
                        @enrollment_configuration_assignments
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
                        ## Gets the enrollmentConfigurationAssignments property value. The enrollmentConfigurationAssignments property
                        ## @return a enrollment_configuration_assignment
                        ## 
                        def enrollment_configuration_assignments
                            return @enrollment_configuration_assignments
                        end
                        ## 
                        ## Sets the enrollmentConfigurationAssignments property value. The enrollmentConfigurationAssignments property
                        ## @param value Value to set for the enrollment_configuration_assignments property.
                        ## @return a void
                        ## 
                        def enrollment_configuration_assignments=(value)
                            @enrollment_configuration_assignments = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "enrollmentConfigurationAssignments" => lambda {|n| @enrollment_configuration_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EnrollmentConfigurationAssignment.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("enrollmentConfigurationAssignments", @enrollment_configuration_assignments)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
