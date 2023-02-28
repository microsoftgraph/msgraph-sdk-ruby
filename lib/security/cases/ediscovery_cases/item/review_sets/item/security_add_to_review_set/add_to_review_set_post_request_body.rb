require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/security/additional_data_options'
require_relative '../../../../../../../models/security/ediscovery_search'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../review_sets'
require_relative '../item'
require_relative './security_add_to_review_set'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module ReviewSets
                        module Item
                            module SecurityAddToReviewSet
                                class AddToReviewSetPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # The additionalDataOptions property
                                    @additional_data_options
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The search property
                                    @search
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
                                    ## Gets the additionalDataOptions property value. The additionalDataOptions property
                                    ## @return a additional_data_options
                                    ## 
                                    def additional_data_options
                                        return @additional_data_options
                                    end
                                    ## 
                                    ## Sets the additionalDataOptions property value. The additionalDataOptions property
                                    ## @param value Value to set for the additional_data_options property.
                                    ## @return a void
                                    ## 
                                    def additional_data_options=(value)
                                        @additional_data_options = value
                                    end
                                    ## 
                                    ## Instantiates a new addToReviewSetPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a add_to_review_set_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return AddToReviewSetPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "additionalDataOptions" => lambda {|n| @additional_data_options = n.get_enum_value(MicrosoftGraph::Models::Security::AdditionalDataOptions) },
                                            "search" => lambda {|n| @search = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoverySearch.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the search property value. The search property
                                    ## @return a ediscovery_search
                                    ## 
                                    def search
                                        return @search
                                    end
                                    ## 
                                    ## Sets the search property value. The search property
                                    ## @param value Value to set for the search property.
                                    ## @return a void
                                    ## 
                                    def search=(value)
                                        @search = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_enum_value("additionalDataOptions", @additional_data_options)
                                        writer.write_object_value("search", @search)
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
