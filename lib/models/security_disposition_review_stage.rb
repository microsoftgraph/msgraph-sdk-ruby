require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityDispositionReviewStage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name representing each stage within a collection.
            @name
            ## 
            # A collection of reviewers at each stage.
            @reviewers_email_addresses
            ## 
            # The sequence number for each stage of the disposition review.
            @stage_number
            ## 
            ## Instantiates a new SecurityDispositionReviewStage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_disposition_review_stage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDispositionReviewStage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "reviewersEmailAddresses" => lambda {|n| @reviewers_email_addresses = n.get_collection_of_primitive_values(String) },
                    "stageNumber" => lambda {|n| @stage_number = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. Name representing each stage within a collection.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name representing each stage within a collection.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the reviewersEmailAddresses property value. A collection of reviewers at each stage.
            ## @return a string
            ## 
            def reviewers_email_addresses
                return @reviewers_email_addresses
            end
            ## 
            ## Sets the reviewersEmailAddresses property value. A collection of reviewers at each stage.
            ## @param value Value to set for the reviewersEmailAddresses property.
            ## @return a void
            ## 
            def reviewers_email_addresses=(value)
                @reviewers_email_addresses = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name)
                writer.write_collection_of_primitive_values("reviewersEmailAddresses", @reviewers_email_addresses)
                writer.write_string_value("stageNumber", @stage_number)
            end
            ## 
            ## Gets the stageNumber property value. The sequence number for each stage of the disposition review.
            ## @return a string
            ## 
            def stage_number
                return @stage_number
            end
            ## 
            ## Sets the stageNumber property value. The sequence number for each stage of the disposition review.
            ## @param value Value to set for the stageNumber property.
            ## @return a void
            ## 
            def stage_number=(value)
                @stage_number = value
            end
        end
    end
end
