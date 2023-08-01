require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class GovernanceInsight < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates when the insight was created.
            @insight_created_date_time
            ## 
            ## Instantiates a new governanceInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.membershipOutlierInsight"
                            return MembershipOutlierInsight.new
                        when "#microsoft.graph.userSignInInsight"
                            return UserSignInInsight.new
                    end
                end
                return GovernanceInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "insightCreatedDateTime" => lambda {|n| @insight_created_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the insightCreatedDateTime property value. Indicates when the insight was created.
            ## @return a date_time
            ## 
            def insight_created_date_time
                return @insight_created_date_time
            end
            ## 
            ## Sets the insightCreatedDateTime property value. Indicates when the insight was created.
            ## @param value Value to set for the insightCreatedDateTime property.
            ## @return a void
            ## 
            def insight_created_date_time=(value)
                @insight_created_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("insightCreatedDateTime", @insight_created_date_time)
            end
        end
    end
end
