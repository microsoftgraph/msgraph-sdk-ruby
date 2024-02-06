require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityEdiscoveryAddToReviewSetOperation < MicrosoftGraph::Models::SecurityCaseOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # eDiscovery review set to which items matching source collection query gets added.
            @review_set
            ## 
            # eDiscovery search that gets added to review set.
            @search
            ## 
            ## Instantiates a new securityEdiscoveryAddToReviewSetOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ediscovery_add_to_review_set_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEdiscoveryAddToReviewSetOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "reviewSet" => lambda {|n| @review_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoveryReviewSet.create_from_discriminator_value(pn) }) },
                    "search" => lambda {|n| @search = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoverySearch.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the reviewSet property value. eDiscovery review set to which items matching source collection query gets added.
            ## @return a security_ediscovery_review_set
            ## 
            def review_set
                return @review_set
            end
            ## 
            ## Sets the reviewSet property value. eDiscovery review set to which items matching source collection query gets added.
            ## @param value Value to set for the reviewSet property.
            ## @return a void
            ## 
            def review_set=(value)
                @review_set = value
            end
            ## 
            ## Gets the search property value. eDiscovery search that gets added to review set.
            ## @return a security_ediscovery_search
            ## 
            def search
                return @search
            end
            ## 
            ## Sets the search property value. eDiscovery search that gets added to review set.
            ## @param value Value to set for the search property.
            ## @return a void
            ## 
            def search=(value)
                @search = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("reviewSet", @review_set) unless @review_set.nil?
                writer.write_object_value("search", @search) unless @search.nil?
            end
        end
    end
end
