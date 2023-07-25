require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The value in an user experience analytics insight.
        class InsightValueInt < MicrosoftGraph::Models::UserExperienceAnalyticsInsightValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The int value of the user experience analytics insight.
            @value
            ## 
            ## Instantiates a new insightValueInt and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.insightValueInt"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a insight_value_int
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InsightValueInt.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "value" => lambda {|n| @value = n.get_number_value() },
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
                writer.write_number_value("value", @value)
            end
            ## 
            ## Gets the value property value. The int value of the user experience analytics insight.
            ## @return a integer
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The int value of the user experience analytics insight.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
