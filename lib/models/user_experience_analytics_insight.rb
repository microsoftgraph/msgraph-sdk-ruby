require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics insight is the recomendation to improve the user experience analytics score.
        class UserExperienceAnalyticsInsight
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier of the user experience analytics insight.
            @insight_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates severity of insights. Possible values are: None, Informational, Warning, Error.
            @severity
            ## 
            # The unique identifier of the user experience analytics metric.
            @user_experience_analytics_metric_id
            ## 
            # The value of the user experience analytics insight.
            @values
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
            ## Instantiates a new UserExperienceAnalyticsInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "insightId" => lambda {|n| @insight_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::UserExperienceAnalyticsInsightSeverity) },
                    "userExperienceAnalyticsMetricId" => lambda {|n| @user_experience_analytics_metric_id = n.get_string_value() },
                    "values" => lambda {|n| @values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsInsightValue.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the insightId property value. The unique identifier of the user experience analytics insight.
            ## @return a string
            ## 
            def insight_id
                return @insight_id
            end
            ## 
            ## Sets the insightId property value. The unique identifier of the user experience analytics insight.
            ## @param value Value to set for the insightId property.
            ## @return a void
            ## 
            def insight_id=(value)
                @insight_id = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("insightId", @insight_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("severity", @severity)
                writer.write_string_value("userExperienceAnalyticsMetricId", @user_experience_analytics_metric_id)
                writer.write_collection_of_object_values("values", @values)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the severity property value. Indicates severity of insights. Possible values are: None, Informational, Warning, Error.
            ## @return a user_experience_analytics_insight_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. Indicates severity of insights. Possible values are: None, Informational, Warning, Error.
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the userExperienceAnalyticsMetricId property value. The unique identifier of the user experience analytics metric.
            ## @return a string
            ## 
            def user_experience_analytics_metric_id
                return @user_experience_analytics_metric_id
            end
            ## 
            ## Sets the userExperienceAnalyticsMetricId property value. The unique identifier of the user experience analytics metric.
            ## @param value Value to set for the userExperienceAnalyticsMetricId property.
            ## @return a void
            ## 
            def user_experience_analytics_metric_id=(value)
                @user_experience_analytics_metric_id = value
            end
            ## 
            ## Gets the values property value. The value of the user experience analytics insight.
            ## @return a user_experience_analytics_insight_value
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. The value of the user experience analytics insight.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
