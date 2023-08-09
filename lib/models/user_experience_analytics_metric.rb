require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The user experience analytics metric contains the score and units of a metric of a user experience anlaytics category.
        class UserExperienceAnalyticsMetric < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unit of the user experience analytics metric. Examples: none, percentage, count, seconds, score.
            @unit
            ## 
            # The value of the user experience analytics metric.
            @value
            ## 
            ## Instantiates a new userExperienceAnalyticsMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsMetric.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "unit" => lambda {|n| @unit = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("unit", @unit)
                writer.write_object_value("value", @value)
            end
            ## 
            ## Gets the unit property value. The unit of the user experience analytics metric. Examples: none, percentage, count, seconds, score.
            ## @return a string
            ## 
            def unit
                return @unit
            end
            ## 
            ## Sets the unit property value. The unit of the user experience analytics metric. Examples: none, percentage, count, seconds, score.
            ## @param value Value to set for the unit property.
            ## @return a void
            ## 
            def unit=(value)
                @unit = value
            end
            ## 
            ## Gets the value property value. The value of the user experience analytics metric.
            ## @return a double
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The value of the user experience analytics metric.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
