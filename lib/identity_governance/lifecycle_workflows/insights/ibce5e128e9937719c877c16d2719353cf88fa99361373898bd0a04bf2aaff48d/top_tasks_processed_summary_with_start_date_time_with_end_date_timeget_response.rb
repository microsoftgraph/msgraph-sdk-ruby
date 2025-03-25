require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/base_collection_pagination_count_response'
require_relative '../../../../models/identity_governance_top_tasks_insights_summary'
require_relative '../../../identity_governance'
require_relative '../../lifecycle_workflows'
require_relative '../insights'
require_relative './ibce5e128e9937719c877c16d2719353cf88fa99361373898bd0a04bf2aaff48d'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Insights
                module Ibce5e128e9937719c877c16d2719353cf88fa99361373898bd0a04bf2aaff48d
                    class TopTasksProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse < MicrosoftGraph::Models::BaseCollectionPaginationCountResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The value property
                        @value
                        ## 
                        ## Instantiates a new TopTasksProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            super
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a top_tasks_processed_summary_with_start_date_time_with_end_date_timeget_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return TopTasksProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return super.merge({
                                "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceTopTasksInsightsSummary.create_from_discriminator_value(pn) }) },
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
                        ## @return a identity_governance_top_tasks_insights_summary
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
