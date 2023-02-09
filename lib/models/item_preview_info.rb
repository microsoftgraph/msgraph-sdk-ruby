require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemPreviewInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The getUrl property
            @get_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The postParameters property
            @post_parameters
            ## 
            # The postUrl property
            @post_url
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
            ## Instantiates a new itemPreviewInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_preview_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemPreviewInfo.new
            end
            ## 
            ## Gets the getUrl property value. The getUrl property
            ## @return a string
            ## 
            def get_url
                return @get_url
            end
            ## 
            ## Sets the getUrl property value. The getUrl property
            ## @param value Value to set for the get_url property.
            ## @return a void
            ## 
            def get_url=(value)
                @get_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "getUrl" => lambda {|n| @get_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "postParameters" => lambda {|n| @post_parameters = n.get_string_value() },
                    "postUrl" => lambda {|n| @post_url = n.get_string_value() },
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
            ## Gets the postParameters property value. The postParameters property
            ## @return a string
            ## 
            def post_parameters
                return @post_parameters
            end
            ## 
            ## Sets the postParameters property value. The postParameters property
            ## @param value Value to set for the post_parameters property.
            ## @return a void
            ## 
            def post_parameters=(value)
                @post_parameters = value
            end
            ## 
            ## Gets the postUrl property value. The postUrl property
            ## @return a string
            ## 
            def post_url
                return @post_url
            end
            ## 
            ## Sets the postUrl property value. The postUrl property
            ## @param value Value to set for the post_url property.
            ## @return a void
            ## 
            def post_url=(value)
                @post_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("getUrl", @get_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("postParameters", @post_parameters)
                writer.write_string_value("postUrl", @post_url)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
