require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'
require_relative './security/alert'
require_relative './security/cases_root'
require_relative './security/incident'

module MicrosoftGraph
    module Models
        class SecurityModel < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alerts property
            @alerts
            ## 
            # A collection of alerts in Microsoft 365 Defender.
            @alerts_v2
            ## 
            # The attackSimulation property
            @attack_simulation
            ## 
            # The cases property
            @cases
            ## 
            # A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.
            @incidents
            ## 
            # The secureScoreControlProfiles property
            @secure_score_control_profiles
            ## 
            # The secureScores property
            @secure_scores
            ## 
            ## Gets the alerts property value. The alerts property
            ## @return a alert
            ## 
            def alerts
                return @alerts
            end
            ## 
            ## Sets the alerts property value. The alerts property
            ## @param value Value to set for the alerts property.
            ## @return a void
            ## 
            def alerts=(value)
                @alerts = value
            end
            ## 
            ## Gets the alerts_v2 property value. A collection of alerts in Microsoft 365 Defender.
            ## @return a alert
            ## 
            def alerts_v2
                return @alerts_v2
            end
            ## 
            ## Sets the alerts_v2 property value. A collection of alerts in Microsoft 365 Defender.
            ## @param value Value to set for the alerts_v2 property.
            ## @return a void
            ## 
            def alerts_v2=(value)
                @alerts_v2 = value
            end
            ## 
            ## Gets the attackSimulation property value. The attackSimulation property
            ## @return a attack_simulation_root
            ## 
            def attack_simulation
                return @attack_simulation
            end
            ## 
            ## Sets the attackSimulation property value. The attackSimulation property
            ## @param value Value to set for the attack_simulation property.
            ## @return a void
            ## 
            def attack_simulation=(value)
                @attack_simulation = value
            end
            ## 
            ## Gets the cases property value. The cases property
            ## @return a cases_root
            ## 
            def cases
                return @cases
            end
            ## 
            ## Sets the cases property value. The cases property
            ## @param value Value to set for the cases property.
            ## @return a void
            ## 
            def cases=(value)
                @cases = value
            end
            ## 
            ## Instantiates a new SecurityModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a security_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityModel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alerts" => lambda {|n| @alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Alert.create_from_discriminator_value(pn) }) },
                    "alerts_v2" => lambda {|n| @alerts_v2 = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::Alert.create_from_discriminator_value(pn) }) },
                    "attackSimulation" => lambda {|n| @attack_simulation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttackSimulationRoot.create_from_discriminator_value(pn) }) },
                    "cases" => lambda {|n| @cases = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::CasesRoot.create_from_discriminator_value(pn) }) },
                    "incidents" => lambda {|n| @incidents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::Incident.create_from_discriminator_value(pn) }) },
                    "secureScoreControlProfiles" => lambda {|n| @secure_score_control_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecureScoreControlProfile.create_from_discriminator_value(pn) }) },
                    "secureScores" => lambda {|n| @secure_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecureScore.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the incidents property value. A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.
            ## @return a incident
            ## 
            def incidents
                return @incidents
            end
            ## 
            ## Sets the incidents property value. A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.
            ## @param value Value to set for the incidents property.
            ## @return a void
            ## 
            def incidents=(value)
                @incidents = value
            end
            ## 
            ## Gets the secureScoreControlProfiles property value. The secureScoreControlProfiles property
            ## @return a secure_score_control_profile
            ## 
            def secure_score_control_profiles
                return @secure_score_control_profiles
            end
            ## 
            ## Sets the secureScoreControlProfiles property value. The secureScoreControlProfiles property
            ## @param value Value to set for the secure_score_control_profiles property.
            ## @return a void
            ## 
            def secure_score_control_profiles=(value)
                @secure_score_control_profiles = value
            end
            ## 
            ## Gets the secureScores property value. The secureScores property
            ## @return a secure_score
            ## 
            def secure_scores
                return @secure_scores
            end
            ## 
            ## Sets the secureScores property value. The secureScores property
            ## @param value Value to set for the secure_scores property.
            ## @return a void
            ## 
            def secure_scores=(value)
                @secure_scores = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("alerts", @alerts)
                writer.write_collection_of_object_values("alerts_v2", @alerts_v2)
                writer.write_object_value("attackSimulation", @attack_simulation)
                writer.write_object_value("cases", @cases)
                writer.write_collection_of_object_values("incidents", @incidents)
                writer.write_collection_of_object_values("secureScoreControlProfiles", @secure_score_control_profiles)
                writer.write_collection_of_object_values("secureScores", @secure_scores)
            end
        end
    end
end
