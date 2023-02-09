require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class HuntingQueryResults
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The results of the hunting query.
                @results
                ## 
                # The schema for the response.
                @schema
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
                ## Instantiates a new huntingQueryResults and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a hunting_query_results
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return HuntingQueryResults.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "results" => lambda {|n| @results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::HuntingRowResult.create_from_discriminator_value(pn) }) },
                        "schema" => lambda {|n| @schema = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::SinglePropertySchema.create_from_discriminator_value(pn) }) },
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
                ## Gets the results property value. The results of the hunting query.
                ## @return a hunting_row_result
                ## 
                def results
                    return @results
                end
                ## 
                ## Sets the results property value. The results of the hunting query.
                ## @param value Value to set for the results property.
                ## @return a void
                ## 
                def results=(value)
                    @results = value
                end
                ## 
                ## Gets the schema property value. The schema for the response.
                ## @return a single_property_schema
                ## 
                def schema
                    return @schema
                end
                ## 
                ## Sets the schema property value. The schema for the response.
                ## @param value Value to set for the schema property.
                ## @return a void
                ## 
                def schema=(value)
                    @schema = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_collection_of_object_values("results", @results)
                    writer.write_collection_of_object_values("schema", @schema)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
