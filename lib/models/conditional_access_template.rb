require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessTemplate < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user-friendly name of the template.
            @description
            ## 
            # The details property
            @details
            ## 
            # The user-friendly name of the template.
            @name
            ## 
            # The scenarios property
            @scenarios
            ## 
            ## Instantiates a new conditionalAccessTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessTemplate.new
            end
            ## 
            ## Gets the description property value. The user-friendly name of the template.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The user-friendly name of the template.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the details property value. The details property
            ## @return a conditional_access_policy_detail
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. The details property
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "details" => lambda {|n| @details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessPolicyDetail.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "scenarios" => lambda {|n| @scenarios = n.get_enum_value(MicrosoftGraph::Models::TemplateScenarios) },
                })
            end
            ## 
            ## Gets the name property value. The user-friendly name of the template.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The user-friendly name of the template.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the scenarios property value. The scenarios property
            ## @return a template_scenarios
            ## 
            def scenarios
                return @scenarios
            end
            ## 
            ## Sets the scenarios property value. The scenarios property
            ## @param value Value to set for the scenarios property.
            ## @return a void
            ## 
            def scenarios=(value)
                @scenarios = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_object_value("details", @details)
                writer.write_string_value("name", @name)
                writer.write_enum_value("scenarios", @scenarios)
            end
        end
    end
end
