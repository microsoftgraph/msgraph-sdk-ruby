require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchAlteration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Defines the altered highlighted query string with spelling correction. The annotation around the corrected segment is: /ue000, /ue001.
            @altered_highlighted_query_string
            ## 
            # Defines the altered query string with spelling correction.
            @altered_query_string
            ## 
            # Represents changed segments related to an original user query.
            @altered_query_tokens
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the alteredHighlightedQueryString property value. Defines the altered highlighted query string with spelling correction. The annotation around the corrected segment is: /ue000, /ue001.
            ## @return a string
            ## 
            def altered_highlighted_query_string
                return @altered_highlighted_query_string
            end
            ## 
            ## Sets the alteredHighlightedQueryString property value. Defines the altered highlighted query string with spelling correction. The annotation around the corrected segment is: /ue000, /ue001.
            ## @param value Value to set for the altered_highlighted_query_string property.
            ## @return a void
            ## 
            def altered_highlighted_query_string=(value)
                @altered_highlighted_query_string = value
            end
            ## 
            ## Gets the alteredQueryString property value. Defines the altered query string with spelling correction.
            ## @return a string
            ## 
            def altered_query_string
                return @altered_query_string
            end
            ## 
            ## Sets the alteredQueryString property value. Defines the altered query string with spelling correction.
            ## @param value Value to set for the altered_query_string property.
            ## @return a void
            ## 
            def altered_query_string=(value)
                @altered_query_string = value
            end
            ## 
            ## Gets the alteredQueryTokens property value. Represents changed segments related to an original user query.
            ## @return a altered_query_token
            ## 
            def altered_query_tokens
                return @altered_query_tokens
            end
            ## 
            ## Sets the alteredQueryTokens property value. Represents changed segments related to an original user query.
            ## @param value Value to set for the altered_query_tokens property.
            ## @return a void
            ## 
            def altered_query_tokens=(value)
                @altered_query_tokens = value
            end
            ## 
            ## Instantiates a new searchAlteration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a search_alteration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchAlteration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alteredHighlightedQueryString" => lambda {|n| @altered_highlighted_query_string = n.get_string_value() },
                    "alteredQueryString" => lambda {|n| @altered_query_string = n.get_string_value() },
                    "alteredQueryTokens" => lambda {|n| @altered_query_tokens = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AlteredQueryToken.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("alteredHighlightedQueryString", @altered_highlighted_query_string)
                writer.write_string_value("alteredQueryString", @altered_query_string)
                writer.write_collection_of_object_values("alteredQueryTokens", @altered_query_tokens)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
