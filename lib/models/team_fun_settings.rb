require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamFunSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If set to true, enables users to include custom memes.
            @allow_custom_memes
            ## 
            # If set to true, enables Giphy use.
            @allow_giphy
            ## 
            # If set to true, enables users to include stickers and memes.
            @allow_stickers_and_memes
            ## 
            # Giphy content rating. Possible values are: moderate, strict.
            @giphy_content_rating
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
            ## Gets the allowCustomMemes property value. If set to true, enables users to include custom memes.
            ## @return a boolean
            ## 
            def allow_custom_memes
                return @allow_custom_memes
            end
            ## 
            ## Sets the allowCustomMemes property value. If set to true, enables users to include custom memes.
            ## @param value Value to set for the allow_custom_memes property.
            ## @return a void
            ## 
            def allow_custom_memes=(value)
                @allow_custom_memes = value
            end
            ## 
            ## Gets the allowGiphy property value. If set to true, enables Giphy use.
            ## @return a boolean
            ## 
            def allow_giphy
                return @allow_giphy
            end
            ## 
            ## Sets the allowGiphy property value. If set to true, enables Giphy use.
            ## @param value Value to set for the allow_giphy property.
            ## @return a void
            ## 
            def allow_giphy=(value)
                @allow_giphy = value
            end
            ## 
            ## Gets the allowStickersAndMemes property value. If set to true, enables users to include stickers and memes.
            ## @return a boolean
            ## 
            def allow_stickers_and_memes
                return @allow_stickers_and_memes
            end
            ## 
            ## Sets the allowStickersAndMemes property value. If set to true, enables users to include stickers and memes.
            ## @param value Value to set for the allow_stickers_and_memes property.
            ## @return a void
            ## 
            def allow_stickers_and_memes=(value)
                @allow_stickers_and_memes = value
            end
            ## 
            ## Instantiates a new teamFunSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a team_fun_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamFunSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowCustomMemes" => lambda {|n| @allow_custom_memes = n.get_boolean_value() },
                    "allowGiphy" => lambda {|n| @allow_giphy = n.get_boolean_value() },
                    "allowStickersAndMemes" => lambda {|n| @allow_stickers_and_memes = n.get_boolean_value() },
                    "giphyContentRating" => lambda {|n| @giphy_content_rating = n.get_enum_value(MicrosoftGraph::Models::GiphyRatingType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the giphyContentRating property value. Giphy content rating. Possible values are: moderate, strict.
            ## @return a giphy_rating_type
            ## 
            def giphy_content_rating
                return @giphy_content_rating
            end
            ## 
            ## Sets the giphyContentRating property value. Giphy content rating. Possible values are: moderate, strict.
            ## @param value Value to set for the giphy_content_rating property.
            ## @return a void
            ## 
            def giphy_content_rating=(value)
                @giphy_content_rating = value
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
                writer.write_boolean_value("allowCustomMemes", @allow_custom_memes)
                writer.write_boolean_value("allowGiphy", @allow_giphy)
                writer.write_boolean_value("allowStickersAndMemes", @allow_stickers_and_memes)
                writer.write_enum_value("giphyContentRating", @giphy_content_rating)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
