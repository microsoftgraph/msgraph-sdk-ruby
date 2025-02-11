require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityCategoryTemplate < MicrosoftGraph::Models::SecurityFilePlanDescriptorTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents all subcategories under a particular category.
            @subcategories
            ## 
            ## Instantiates a new SecurityCategoryTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_category_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCategoryTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "subcategories" => lambda {|n| @subcategories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecuritySubcategoryTemplate.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("subcategories", @subcategories)
            end
            ## 
            ## Gets the subcategories property value. Represents all subcategories under a particular category.
            ## @return a security_subcategory_template
            ## 
            def subcategories
                return @subcategories
            end
            ## 
            ## Sets the subcategories property value. Represents all subcategories under a particular category.
            ## @param value Value to set for the subcategories property.
            ## @return a void
            ## 
            def subcategories=(value)
                @subcategories = value
            end
        end
    end
end
