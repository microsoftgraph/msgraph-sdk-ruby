require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BaseCollectionPaginationCountResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataCount property
            @odata_count
            ## 
            # The OdataNextLink property
            @odata_next_link
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
            ## Instantiates a new BaseCollectionPaginationCountResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a base_collection_pagination_count_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BaseCollectionPaginationCountResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.count" => lambda {|n| @odata_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.nextLink" => lambda {|n| @odata_next_link = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.count property value. The OdataCount property
            ## @return a int64
            ## 
            def odata_count
                return @odata_count
            end
            ## 
            ## Sets the @odata.count property value. The OdataCount property
            ## @param value Value to set for the odata_count property.
            ## @return a void
            ## 
            def odata_count=(value)
                @odata_count = value
            end
            ## 
            ## Gets the @odata.nextLink property value. The OdataNextLink property
            ## @return a string
            ## 
            def odata_next_link
                return @odata_next_link
            end
            ## 
            ## Sets the @odata.nextLink property value. The OdataNextLink property
            ## @param value Value to set for the odata_next_link property.
            ## @return a void
            ## 
            def odata_next_link=(value)
                @odata_next_link = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("@odata.count", @odata_count)
                writer.write_string_value("@odata.nextLink", @odata_next_link)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
