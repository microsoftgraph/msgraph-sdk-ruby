require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryReviewSet < MicrosoftGraph::Models::Security::DataSet
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Represents queries within the review set.
                @queries
                ## 
                ## Instantiates a new EdiscoveryReviewSet and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.ediscoveryReviewSet"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_review_set
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryReviewSet.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "queries" => lambda {|n| @queries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryReviewSetQuery.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the queries property value. Represents queries within the review set.
                ## @return a ediscovery_review_set_query
                ## 
                def queries
                    return @queries
                end
                ## 
                ## Sets the queries property value. Represents queries within the review set.
                ## @param value Value to set for the queries property.
                ## @return a void
                ## 
                def queries=(value)
                    @queries = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("queries", @queries)
                end
            end
        end
    end
end
