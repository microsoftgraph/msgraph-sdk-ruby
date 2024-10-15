require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventRegistrationPredefinedQuestion < MicrosoftGraph::Models::VirtualEventRegistrationQuestionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Label of the predefined registration question. It accepts a single line of text: street, city, state, postalCode, countryOrRegion, industry, jobTitle, organization, and unknownFutureValue.
            @label
            ## 
            ## Instantiates a new VirtualEventRegistrationPredefinedQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.virtualEventRegistrationPredefinedQuestion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration_predefined_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventRegistrationPredefinedQuestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "label" => lambda {|n| @label = n.get_enum_value(MicrosoftGraph::Models::VirtualEventRegistrationPredefinedQuestionLabel) },
                })
            end
            ## 
            ## Gets the label property value. Label of the predefined registration question. It accepts a single line of text: street, city, state, postalCode, countryOrRegion, industry, jobTitle, organization, and unknownFutureValue.
            ## @return a virtual_event_registration_predefined_question_label
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. Label of the predefined registration question. It accepts a single line of text: street, city, state, postalCode, countryOrRegion, industry, jobTitle, organization, and unknownFutureValue.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("label", @label)
            end
        end
    end
end
