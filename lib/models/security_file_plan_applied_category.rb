require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityFilePlanAppliedCategory < MicrosoftGraph::Models::SecurityFilePlanDescriptorBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The subcategory property
            @subcategory
            ## 
            ## Instantiates a new SecurityFilePlanAppliedCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_file_plan_applied_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityFilePlanAppliedCategory.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "subcategory" => lambda {|n| @subcategory = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityFilePlanSubcategory.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("subcategory", @subcategory)
            end
            ## 
            ## Gets the subcategory property value. The subcategory property
            ## @return a security_file_plan_subcategory
            ## 
            def subcategory
                return @subcategory
            end
            ## 
            ## Sets the subcategory property value. The subcategory property
            ## @param value Value to set for the subcategory property.
            ## @return a void
            ## 
            def subcategory=(value)
                @subcategory = value
            end
        end
    end
end
