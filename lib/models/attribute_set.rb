require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttributeSet < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description property
            @description
            ## 
            # The maxAttributesPerSet property
            @max_attributes_per_set
            ## 
            ## Instantiates a new AttributeSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attribute_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeSet.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "maxAttributesPerSet" => lambda {|n| @max_attributes_per_set = n.get_number_value() },
                })
            end
            ## 
            ## Gets the maxAttributesPerSet property value. The maxAttributesPerSet property
            ## @return a integer
            ## 
            def max_attributes_per_set
                return @max_attributes_per_set
            end
            ## 
            ## Sets the maxAttributesPerSet property value. The maxAttributesPerSet property
            ## @param value Value to set for the max_attributes_per_set property.
            ## @return a void
            ## 
            def max_attributes_per_set=(value)
                @max_attributes_per_set = value
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
                writer.write_number_value("maxAttributesPerSet", @max_attributes_per_set)
            end
        end
    end
end
