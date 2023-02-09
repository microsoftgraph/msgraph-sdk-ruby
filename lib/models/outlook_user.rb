require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OutlookUser < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of categories defined for the user.
            @master_categories
            ## 
            ## Instantiates a new outlookUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a outlook_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OutlookUser.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "masterCategories" => lambda {|n| @master_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OutlookCategory.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the masterCategories property value. A list of categories defined for the user.
            ## @return a outlook_category
            ## 
            def master_categories
                return @master_categories
            end
            ## 
            ## Sets the masterCategories property value. A list of categories defined for the user.
            ## @param value Value to set for the master_categories property.
            ## @return a void
            ## 
            def master_categories=(value)
                @master_categories = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("masterCategories", @master_categories)
            end
        end
    end
end
