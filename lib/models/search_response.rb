require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A collection of search results.
            @hits_containers
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Provides information related to spelling corrections in the alteration response.
            @query_alteration_response
            ## 
            # A dictionary of resultTemplateIds and associated values, which include the name and JSON schema of the result templates.
            @result_templates
            ## 
            # Contains the search terms sent in the initial search query.
            @search_terms
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
            ## Instantiates a new searchResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a search_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hitsContainers" => lambda {|n| @hits_containers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchHitsContainer.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "queryAlterationResponse" => lambda {|n| @query_alteration_response = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AlterationResponse.create_from_discriminator_value(pn) }) },
                    "resultTemplates" => lambda {|n| @result_templates = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResultTemplateDictionary.create_from_discriminator_value(pn) }) },
                    "searchTerms" => lambda {|n| @search_terms = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the hitsContainers property value. A collection of search results.
            ## @return a search_hits_container
            ## 
            def hits_containers
                return @hits_containers
            end
            ## 
            ## Sets the hitsContainers property value. A collection of search results.
            ## @param value Value to set for the hits_containers property.
            ## @return a void
            ## 
            def hits_containers=(value)
                @hits_containers = value
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
            ## Gets the queryAlterationResponse property value. Provides information related to spelling corrections in the alteration response.
            ## @return a alteration_response
            ## 
            def query_alteration_response
                return @query_alteration_response
            end
            ## 
            ## Sets the queryAlterationResponse property value. Provides information related to spelling corrections in the alteration response.
            ## @param value Value to set for the query_alteration_response property.
            ## @return a void
            ## 
            def query_alteration_response=(value)
                @query_alteration_response = value
            end
            ## 
            ## Gets the resultTemplates property value. A dictionary of resultTemplateIds and associated values, which include the name and JSON schema of the result templates.
            ## @return a result_template_dictionary
            ## 
            def result_templates
                return @result_templates
            end
            ## 
            ## Sets the resultTemplates property value. A dictionary of resultTemplateIds and associated values, which include the name and JSON schema of the result templates.
            ## @param value Value to set for the result_templates property.
            ## @return a void
            ## 
            def result_templates=(value)
                @result_templates = value
            end
            ## 
            ## Gets the searchTerms property value. Contains the search terms sent in the initial search query.
            ## @return a string
            ## 
            def search_terms
                return @search_terms
            end
            ## 
            ## Sets the searchTerms property value. Contains the search terms sent in the initial search query.
            ## @param value Value to set for the search_terms property.
            ## @return a void
            ## 
            def search_terms=(value)
                @search_terms = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("hitsContainers", @hits_containers)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("queryAlterationResponse", @query_alteration_response)
                writer.write_object_value("resultTemplates", @result_templates)
                writer.write_collection_of_primitive_values("searchTerms", @search_terms)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
