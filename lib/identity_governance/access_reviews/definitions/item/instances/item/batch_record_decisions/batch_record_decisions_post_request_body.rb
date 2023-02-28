require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../identity_governance'
require_relative '../../../../../access_reviews'
require_relative '../../../../definitions'
require_relative '../../../item'
require_relative '../../instances'
require_relative '../item'
require_relative './batch_record_decisions'

module MicrosoftGraph
    module IdentityGovernance
        module AccessReviews
            module Definitions
                module Item
                    module Instances
                        module Item
                            module BatchRecordDecisions
                                class BatchRecordDecisionsPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The decision property
                                    @decision
                                    ## 
                                    # The justification property
                                    @justification
                                    ## 
                                    # The principalId property
                                    @principal_id
                                    ## 
                                    # The resourceId property
                                    @resource_id
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
                                    ## Instantiates a new batchRecordDecisionsPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a batch_record_decisions_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return BatchRecordDecisionsPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the decision property value. The decision property
                                    ## @return a string
                                    ## 
                                    def decision
                                        return @decision
                                    end
                                    ## 
                                    ## Sets the decision property value. The decision property
                                    ## @param value Value to set for the decision property.
                                    ## @return a void
                                    ## 
                                    def decision=(value)
                                        @decision = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "decision" => lambda {|n| @decision = n.get_string_value() },
                                            "justification" => lambda {|n| @justification = n.get_string_value() },
                                            "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                                            "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                                        }
                                    end
                                    ## 
                                    ## Gets the justification property value. The justification property
                                    ## @return a string
                                    ## 
                                    def justification
                                        return @justification
                                    end
                                    ## 
                                    ## Sets the justification property value. The justification property
                                    ## @param value Value to set for the justification property.
                                    ## @return a void
                                    ## 
                                    def justification=(value)
                                        @justification = value
                                    end
                                    ## 
                                    ## Gets the principalId property value. The principalId property
                                    ## @return a string
                                    ## 
                                    def principal_id
                                        return @principal_id
                                    end
                                    ## 
                                    ## Sets the principalId property value. The principalId property
                                    ## @param value Value to set for the principal_id property.
                                    ## @return a void
                                    ## 
                                    def principal_id=(value)
                                        @principal_id = value
                                    end
                                    ## 
                                    ## Gets the resourceId property value. The resourceId property
                                    ## @return a string
                                    ## 
                                    def resource_id
                                        return @resource_id
                                    end
                                    ## 
                                    ## Sets the resourceId property value. The resourceId property
                                    ## @param value Value to set for the resource_id property.
                                    ## @return a void
                                    ## 
                                    def resource_id=(value)
                                        @resource_id = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("decision", @decision)
                                        writer.write_string_value("justification", @justification)
                                        writer.write_string_value("principalId", @principal_id)
                                        writer.write_string_value("resourceId", @resource_id)
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
