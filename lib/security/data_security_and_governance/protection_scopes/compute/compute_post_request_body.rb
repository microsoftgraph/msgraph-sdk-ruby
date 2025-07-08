require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/device_metadata'
require_relative '../../../../models/integrated_application_metadata'
require_relative '../../../../models/policy_location'
require_relative '../../../../models/policy_pivot_property'
require_relative '../../../../models/user_activity_types'
require_relative '../../../security'
require_relative '../../data_security_and_governance'
require_relative '../protection_scopes'
require_relative './compute'

module MicrosoftGraph
    module Security
        module DataSecurityAndGovernance
            module ProtectionScopes
                module Compute
                    class ComputePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The activities property
                        @activities
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The deviceMetadata property
                        @device_metadata
                        ## 
                        # The integratedAppMetadata property
                        @integrated_app_metadata
                        ## 
                        # The locations property
                        @locations
                        ## 
                        # The pivotOn property
                        @pivot_on
                        ## 
                        ## Gets the activities property value. The activities property
                        ## @return a user_activity_types
                        ## 
                        def activities
                            return @activities
                        end
                        ## 
                        ## Sets the activities property value. The activities property
                        ## @param value Value to set for the activities property.
                        ## @return a void
                        ## 
                        def activities=(value)
                            @activities = value
                        end
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
                        ## Instantiates a new ComputePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a compute_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ComputePostRequestBody.new
                        end
                        ## 
                        ## Gets the deviceMetadata property value. The deviceMetadata property
                        ## @return a device_metadata
                        ## 
                        def device_metadata
                            return @device_metadata
                        end
                        ## 
                        ## Sets the deviceMetadata property value. The deviceMetadata property
                        ## @param value Value to set for the deviceMetadata property.
                        ## @return a void
                        ## 
                        def device_metadata=(value)
                            @device_metadata = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "activities" => lambda {|n| @activities = n.get_enum_values(MicrosoftGraph::Models::UserActivityTypes) },
                                "deviceMetadata" => lambda {|n| @device_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceMetadata.create_from_discriminator_value(pn) }) },
                                "integratedAppMetadata" => lambda {|n| @integrated_app_metadata = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IntegratedApplicationMetadata.create_from_discriminator_value(pn) }) },
                                "locations" => lambda {|n| @locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PolicyLocation.create_from_discriminator_value(pn) }) },
                                "pivotOn" => lambda {|n| @pivot_on = n.get_enum_value(MicrosoftGraph::Models::PolicyPivotProperty) },
                            }
                        end
                        ## 
                        ## Gets the integratedAppMetadata property value. The integratedAppMetadata property
                        ## @return a integrated_application_metadata
                        ## 
                        def integrated_app_metadata
                            return @integrated_app_metadata
                        end
                        ## 
                        ## Sets the integratedAppMetadata property value. The integratedAppMetadata property
                        ## @param value Value to set for the integratedAppMetadata property.
                        ## @return a void
                        ## 
                        def integrated_app_metadata=(value)
                            @integrated_app_metadata = value
                        end
                        ## 
                        ## Gets the locations property value. The locations property
                        ## @return a policy_location
                        ## 
                        def locations
                            return @locations
                        end
                        ## 
                        ## Sets the locations property value. The locations property
                        ## @param value Value to set for the locations property.
                        ## @return a void
                        ## 
                        def locations=(value)
                            @locations = value
                        end
                        ## 
                        ## Gets the pivotOn property value. The pivotOn property
                        ## @return a policy_pivot_property
                        ## 
                        def pivot_on
                            return @pivot_on
                        end
                        ## 
                        ## Sets the pivotOn property value. The pivotOn property
                        ## @param value Value to set for the pivotOn property.
                        ## @return a void
                        ## 
                        def pivot_on=(value)
                            @pivot_on = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("activities", @activities)
                            writer.write_object_value("deviceMetadata", @device_metadata)
                            writer.write_object_value("integratedAppMetadata", @integrated_app_metadata)
                            writer.write_collection_of_object_values("locations", @locations)
                            writer.write_enum_value("pivotOn", @pivot_on)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
