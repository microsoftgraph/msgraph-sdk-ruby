require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ReactionsFacet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The commentCount property
            @comment_count
            ## 
            # The likeCount property
            @like_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The shareCount property
            @share_count
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
            ## Gets the commentCount property value. The commentCount property
            ## @return a integer
            ## 
            def comment_count
                return @comment_count
            end
            ## 
            ## Sets the commentCount property value. The commentCount property
            ## @param value Value to set for the commentCount property.
            ## @return a void
            ## 
            def comment_count=(value)
                @comment_count = value
            end
            ## 
            ## Instantiates a new ReactionsFacet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a reactions_facet
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReactionsFacet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "commentCount" => lambda {|n| @comment_count = n.get_number_value() },
                    "likeCount" => lambda {|n| @like_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "shareCount" => lambda {|n| @share_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the likeCount property value. The likeCount property
            ## @return a integer
            ## 
            def like_count
                return @like_count
            end
            ## 
            ## Sets the likeCount property value. The likeCount property
            ## @param value Value to set for the likeCount property.
            ## @return a void
            ## 
            def like_count=(value)
                @like_count = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("commentCount", @comment_count)
                writer.write_number_value("likeCount", @like_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("shareCount", @share_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the shareCount property value. The shareCount property
            ## @return a integer
            ## 
            def share_count
                return @share_count
            end
            ## 
            ## Sets the shareCount property value. The shareCount property
            ## @param value Value to set for the shareCount property.
            ## @return a void
            ## 
            def share_count=(value)
                @share_count = value
            end
        end
    end
end
