require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/synchronization_job_application_parameters'
require_relative '../../../../../service_principals'
require_relative '../../../../item'
require_relative '../../../synchronization'
require_relative '../../jobs'
require_relative '../item'
require_relative './provision_on_demand'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            module Synchronization
                module Jobs
                    module Item
                        module ProvisionOnDemand
                            class ProvisionOnDemandPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The parameters property
                                @parameters
                                ## 
                                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @return a i_dictionary
                                ## 
                                def additional_data
                                    return @additional_data
                                end
                                ## 
                                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                ## @param value Value to set for the additionalData property.
                                ## @return a void
                                ## 
                                def additional_data=(value)
                                    @additional_data = value
                                end
                                ## 
                                ## Instantiates a new provisionOnDemandPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a provision_on_demand_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return ProvisionOnDemandPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "parameters" => lambda {|n| @parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationJobApplicationParameters.create_from_discriminator_value(pn) }) },
                                    }
                                end
                                ## 
                                ## Gets the parameters property value. The parameters property
                                ## @return a synchronization_job_application_parameters
                                ## 
                                def parameters
                                    return @parameters
                                end
                                ## 
                                ## Sets the parameters property value. The parameters property
                                ## @param value Value to set for the parameters property.
                                ## @return a void
                                ## 
                                def parameters=(value)
                                    @parameters = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_collection_of_object_values("parameters", @parameters)
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
