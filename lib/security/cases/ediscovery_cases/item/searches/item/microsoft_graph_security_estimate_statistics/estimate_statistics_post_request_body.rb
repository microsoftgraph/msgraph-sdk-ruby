require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/security_statistics_options'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../searches'
require_relative '../item'
require_relative './microsoft_graph_security_estimate_statistics'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module Searches
                        module Item
                            module MicrosoftGraphSecurityEstimateStatistics
                                class EstimateStatisticsPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The statisticsOptions property
                                    @statistics_options
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
                                    ## Instantiates a new EstimateStatisticsPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a estimate_statistics_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return EstimateStatisticsPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "statisticsOptions" => lambda {|n| @statistics_options = n.get_enum_values(MicrosoftGraph::Models::SecurityStatisticsOptions) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_enum_value("statisticsOptions", @statistics_options)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the statisticsOptions property value. The statisticsOptions property
                                    ## @return a security_statistics_options
                                    ## 
                                    def statistics_options
                                        return @statistics_options
                                    end
                                    ## 
                                    ## Sets the statisticsOptions property value. The statisticsOptions property
                                    ## @param value Value to set for the statisticsOptions property.
                                    ## @return a void
                                    ## 
                                    def statistics_options=(value)
                                        @statistics_options = value
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
