require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewInactiveUsersQueryScope < MicrosoftGraph::Models::AccessReviewQueryScope
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the duration of inactivity. Inactivity is based on the last sign in date of the user compared to the access review instance's start date. If this property is not specified, it's assigned the default value PT0S.
            @inactive_duration
            ## 
            ## Instantiates a new AccessReviewInactiveUsersQueryScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessReviewInactiveUsersQueryScope"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_inactive_users_query_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewInactiveUsersQueryScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "inactiveDuration" => lambda {|n| @inactive_duration = n.get_duration_value() },
                })
            end
            ## 
            ## Gets the inactiveDuration property value. Defines the duration of inactivity. Inactivity is based on the last sign in date of the user compared to the access review instance's start date. If this property is not specified, it's assigned the default value PT0S.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def inactive_duration
                return @inactive_duration
            end
            ## 
            ## Sets the inactiveDuration property value. Defines the duration of inactivity. Inactivity is based on the last sign in date of the user compared to the access review instance's start date. If this property is not specified, it's assigned the default value PT0S.
            ## @param value Value to set for the inactive_duration property.
            ## @return a void
            ## 
            def inactive_duration=(value)
                @inactive_duration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_duration_value("inactiveDuration", @inactive_duration)
            end
        end
    end
end
