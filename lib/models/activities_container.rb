require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ActivitiesContainer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of activity logs related to content processing.
            @content_activities
            ## 
            ## Instantiates a new ActivitiesContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentActivities property value. Collection of activity logs related to content processing.
            ## @return a content_activity
            ## 
            def content_activities
                return @content_activities
            end
            ## 
            ## Sets the contentActivities property value. Collection of activity logs related to content processing.
            ## @param value Value to set for the contentActivities property.
            ## @return a void
            ## 
            def content_activities=(value)
                @content_activities = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a activities_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ActivitiesContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentActivities" => lambda {|n| @content_activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContentActivity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("contentActivities", @content_activities)
            end
        end
    end
end
