require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics category entity contains the scores and insights for the various metrics of a category.
        class UserExperienceAnalyticsCategory < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The insights for the category. Read-only.
            @insights
            ## 
            # The metric values for the user experience analytics category. Read-only.
            @metric_values
            ## 
            ## Instantiates a new UserExperienceAnalyticsCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsCategory.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "insights" => lambda {|n| @insights = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsInsight.create_from_discriminator_value(pn) }) },
                    "metricValues" => lambda {|n| @metric_values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsMetric.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the insights property value. The insights for the category. Read-only.
            ## @return a user_experience_analytics_insight
            ## 
            def insights
                return @insights
            end
            ## 
            ## Sets the insights property value. The insights for the category. Read-only.
            ## @param value Value to set for the insights property.
            ## @return a void
            ## 
            def insights=(value)
                @insights = value
            end
            ## 
            ## Gets the metricValues property value. The metric values for the user experience analytics category. Read-only.
            ## @return a user_experience_analytics_metric
            ## 
            def metric_values
                return @metric_values
            end
            ## 
            ## Sets the metricValues property value. The metric values for the user experience analytics category. Read-only.
            ## @param value Value to set for the metricValues property.
            ## @return a void
            ## 
            def metric_values=(value)
                @metric_values = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("insights", @insights)
                writer.write_collection_of_object_values("metricValues", @metric_values)
            end
        end
    end
end
