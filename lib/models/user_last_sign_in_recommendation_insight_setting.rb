require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserLastSignInRecommendationInsightSetting < MicrosoftGraph::Models::AccessReviewRecommendationInsightSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The recommendationLookBackDuration property
            @recommendation_look_back_duration
            ## 
            # The signInScope property
            @sign_in_scope
            ## 
            ## Instantiates a new UserLastSignInRecommendationInsightSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.userLastSignInRecommendationInsightSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_last_sign_in_recommendation_insight_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserLastSignInRecommendationInsightSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "recommendationLookBackDuration" => lambda {|n| @recommendation_look_back_duration = n.get_duration_value() },
                    "signInScope" => lambda {|n| @sign_in_scope = n.get_enum_value(MicrosoftGraph::Models::UserSignInRecommendationScope) },
                })
            end
            ## 
            ## Gets the recommendationLookBackDuration property value. The recommendationLookBackDuration property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def recommendation_look_back_duration
                return @recommendation_look_back_duration
            end
            ## 
            ## Sets the recommendationLookBackDuration property value. The recommendationLookBackDuration property
            ## @param value Value to set for the recommendation_look_back_duration property.
            ## @return a void
            ## 
            def recommendation_look_back_duration=(value)
                @recommendation_look_back_duration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_duration_value("recommendationLookBackDuration", @recommendation_look_back_duration)
                writer.write_enum_value("signInScope", @sign_in_scope)
            end
            ## 
            ## Gets the signInScope property value. The signInScope property
            ## @return a user_sign_in_recommendation_scope
            ## 
            def sign_in_scope
                return @sign_in_scope
            end
            ## 
            ## Sets the signInScope property value. The signInScope property
            ## @param value Value to set for the sign_in_scope property.
            ## @return a void
            ## 
            def sign_in_scope=(value)
                @sign_in_scope = value
            end
        end
    end
end
