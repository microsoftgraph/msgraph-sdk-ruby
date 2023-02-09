require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewSet < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the template and scheduling for an access review.
            @definitions
            ## 
            # Represents a collection of access review history data and the scopes used to collect that data.
            @history_definitions
            ## 
            ## Instantiates a new AccessReviewSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewSet.new
            end
            ## 
            ## Gets the definitions property value. Represents the template and scheduling for an access review.
            ## @return a access_review_schedule_definition
            ## 
            def definitions
                return @definitions
            end
            ## 
            ## Sets the definitions property value. Represents the template and scheduling for an access review.
            ## @param value Value to set for the definitions property.
            ## @return a void
            ## 
            def definitions=(value)
                @definitions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definitions" => lambda {|n| @definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewScheduleDefinition.create_from_discriminator_value(pn) }) },
                    "historyDefinitions" => lambda {|n| @history_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewHistoryDefinition.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the historyDefinitions property value. Represents a collection of access review history data and the scopes used to collect that data.
            ## @return a access_review_history_definition
            ## 
            def history_definitions
                return @history_definitions
            end
            ## 
            ## Sets the historyDefinitions property value. Represents a collection of access review history data and the scopes used to collect that data.
            ## @param value Value to set for the history_definitions property.
            ## @return a void
            ## 
            def history_definitions=(value)
                @history_definitions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("definitions", @definitions)
                writer.write_collection_of_object_values("historyDefinitions", @history_definitions)
            end
        end
    end
end
