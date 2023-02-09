require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RecommendedAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Web URL to the recommended action.
            @action_web_url
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Potential improvement in the tenant security score from the recommended action.
            @potential_score_impact
            ## 
            # Title of the recommended action.
            @title
            ## 
            ## Gets the actionWebUrl property value. Web URL to the recommended action.
            ## @return a string
            ## 
            def action_web_url
                return @action_web_url
            end
            ## 
            ## Sets the actionWebUrl property value. Web URL to the recommended action.
            ## @param value Value to set for the action_web_url property.
            ## @return a void
            ## 
            def action_web_url=(value)
                @action_web_url = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new recommendedAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a recommended_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecommendedAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionWebUrl" => lambda {|n| @action_web_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "potentialScoreImpact" => lambda {|n| @potential_score_impact = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the potentialScoreImpact property value. Potential improvement in the tenant security score from the recommended action.
            ## @return a double
            ## 
            def potential_score_impact
                return @potential_score_impact
            end
            ## 
            ## Sets the potentialScoreImpact property value. Potential improvement in the tenant security score from the recommended action.
            ## @param value Value to set for the potential_score_impact property.
            ## @return a void
            ## 
            def potential_score_impact=(value)
                @potential_score_impact = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("actionWebUrl", @action_web_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("potentialScoreImpact", @potential_score_impact)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the title property value. Title of the recommended action.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Title of the recommended action.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
