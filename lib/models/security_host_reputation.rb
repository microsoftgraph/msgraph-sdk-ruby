require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHostReputation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The classification property
            @classification
            ## 
            # A collection of rules that have been used to calculate the classification and score.
            @rules
            ## 
            # The calculated score (0-100) of the requested host. A higher value indicates that this host is more likely to be suspicious or malicious.
            @score
            ## 
            ## Gets the classification property value. The classification property
            ## @return a security_host_reputation_classification
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. The classification property
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new SecurityHostReputation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_reputation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostReputation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraph::Models::SecurityHostReputationClassification) },
                    "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityHostReputationRule.create_from_discriminator_value(pn) }) },
                    "score" => lambda {|n| @score = n.get_number_value() },
                })
            end
            ## 
            ## Gets the rules property value. A collection of rules that have been used to calculate the classification and score.
            ## @return a security_host_reputation_rule
            ## 
            def rules
                return @rules
            end
            ## 
            ## Sets the rules property value. A collection of rules that have been used to calculate the classification and score.
            ## @param value Value to set for the rules property.
            ## @return a void
            ## 
            def rules=(value)
                @rules = value
            end
            ## 
            ## Gets the score property value. The calculated score (0-100) of the requested host. A higher value indicates that this host is more likely to be suspicious or malicious.
            ## @return a integer
            ## 
            def score
                return @score
            end
            ## 
            ## Sets the score property value. The calculated score (0-100) of the requested host. A higher value indicates that this host is more likely to be suspicious or malicious.
            ## @param value Value to set for the score property.
            ## @return a void
            ## 
            def score=(value)
                @score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("classification", @classification)
                writer.write_collection_of_object_values("rules", @rules)
                writer.write_number_value("score", @score)
            end
        end
    end
end
