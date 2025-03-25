require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/base_collection_pagination_count_response'
require_relative '../../../../models/identity_governance_top_workflows_insights_summary'
require_relative '../../../identity_governance'
require_relative '../../lifecycle_workflows'
require_relative '../insights'
require_relative './ic71652b80f5b1945fff04eeef0b3fba39f8ce338a5f6894852169faa5fdfa802'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Insights
                module Ic71652b80f5b1945fff04eeef0b3fba39f8ce338a5f6894852169faa5fdfa802
                    class TopWorkflowsProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse < MicrosoftGraph::Models::BaseCollectionPaginationCountResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The value property
                        @value
                        ## 
                        ## Instantiates a new TopWorkflowsProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            super
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a top_workflows_processed_summary_with_start_date_time_with_end_date_timeget_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return TopWorkflowsProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return super.merge({
                                "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceTopWorkflowsInsightsSummary.create_from_discriminator_value(pn) }) },
                            })
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            super
                            writer.write_collection_of_object_values("value", @value)
                        end
                        ## 
                        ## Gets the value property value. The value property
                        ## @return a identity_governance_top_workflows_insights_summary
                        ## 
                        def value
                            return @value
                        end
                        ## 
                        ## Sets the value property value. The value property
                        ## @param value Value to set for the value property.
                        ## @return a void
                        ## 
                        def value=(value)
                            @value = value
                        end
                    end
                end
            end
        end
    end
end
