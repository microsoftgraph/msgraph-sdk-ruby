require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AlterationResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines the original user query string.
            @original_query_string
            ## 
            # Defines the details of the alteration information for the spelling correction.
            @query_alteration
            ## 
            # Defines the type of the spelling correction. Possible values are: suggestion, modification.
            @query_alteration_type
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
            ## Instantiates a new alterationResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a alteration_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AlterationResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "originalQueryString" => lambda {|n| @original_query_string = n.get_string_value() },
                    "queryAlteration" => lambda {|n| @query_alteration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SearchAlteration.create_from_discriminator_value(pn) }) },
                    "queryAlterationType" => lambda {|n| @query_alteration_type = n.get_enum_value(MicrosoftGraph::Models::SearchAlterationType) },
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
            ## Gets the originalQueryString property value. Defines the original user query string.
            ## @return a string
            ## 
            def original_query_string
                return @original_query_string
            end
            ## 
            ## Sets the originalQueryString property value. Defines the original user query string.
            ## @param value Value to set for the original_query_string property.
            ## @return a void
            ## 
            def original_query_string=(value)
                @original_query_string = value
            end
            ## 
            ## Gets the queryAlteration property value. Defines the details of the alteration information for the spelling correction.
            ## @return a search_alteration
            ## 
            def query_alteration
                return @query_alteration
            end
            ## 
            ## Sets the queryAlteration property value. Defines the details of the alteration information for the spelling correction.
            ## @param value Value to set for the query_alteration property.
            ## @return a void
            ## 
            def query_alteration=(value)
                @query_alteration = value
            end
            ## 
            ## Gets the queryAlterationType property value. Defines the type of the spelling correction. Possible values are: suggestion, modification.
            ## @return a search_alteration_type
            ## 
            def query_alteration_type
                return @query_alteration_type
            end
            ## 
            ## Sets the queryAlterationType property value. Defines the type of the spelling correction. Possible values are: suggestion, modification.
            ## @param value Value to set for the query_alteration_type property.
            ## @return a void
            ## 
            def query_alteration_type=(value)
                @query_alteration_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("originalQueryString", @original_query_string)
                writer.write_object_value("queryAlteration", @query_alteration)
                writer.write_enum_value("queryAlterationType", @query_alteration_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
