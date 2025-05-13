require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestorePointSearchResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Contains  alist of protection units with no restore points.
            @no_result_protection_unit_ids
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier of the search response.
            @search_response_id
            ## 
            # Contains a collection of restore points.
            @search_results
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new RestorePointSearchResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_point_search_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RestorePointSearchResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "noResultProtectionUnitIds" => lambda {|n| @no_result_protection_unit_ids = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "searchResponseId" => lambda {|n| @search_response_id = n.get_string_value() },
                    "searchResults" => lambda {|n| @search_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RestorePointSearchResult.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the noResultProtectionUnitIds property value. Contains  alist of protection units with no restore points.
            ## @return a string
            ## 
            def no_result_protection_unit_ids
                return @no_result_protection_unit_ids
            end
            ## 
            ## Sets the noResultProtectionUnitIds property value. Contains  alist of protection units with no restore points.
            ## @param value Value to set for the noResultProtectionUnitIds property.
            ## @return a void
            ## 
            def no_result_protection_unit_ids=(value)
                @no_result_protection_unit_ids = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the searchResponseId property value. The unique identifier of the search response.
            ## @return a string
            ## 
            def search_response_id
                return @search_response_id
            end
            ## 
            ## Sets the searchResponseId property value. The unique identifier of the search response.
            ## @param value Value to set for the searchResponseId property.
            ## @return a void
            ## 
            def search_response_id=(value)
                @search_response_id = value
            end
            ## 
            ## Gets the searchResults property value. Contains a collection of restore points.
            ## @return a restore_point_search_result
            ## 
            def search_results
                return @search_results
            end
            ## 
            ## Sets the searchResults property value. Contains a collection of restore points.
            ## @param value Value to set for the searchResults property.
            ## @return a void
            ## 
            def search_results=(value)
                @search_results = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("noResultProtectionUnitIds", @no_result_protection_unit_ids)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("searchResponseId", @search_response_id)
                writer.write_collection_of_object_values("searchResults", @search_results)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
