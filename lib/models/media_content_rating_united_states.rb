require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MediaContentRatingUnitedStates
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Movies rating labels in United States
            @movie_rating
            ## 
            # The OdataType property
            @odata_type
            ## 
            # TV content rating labels in United States
            @tv_rating
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
            ## Instantiates a new mediaContentRatingUnitedStates and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a media_content_rating_united_states
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MediaContentRatingUnitedStates.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "movieRating" => lambda {|n| @movie_rating = n.get_enum_value(MicrosoftGraph::Models::RatingUnitedStatesMoviesType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tvRating" => lambda {|n| @tv_rating = n.get_enum_value(MicrosoftGraph::Models::RatingUnitedStatesTelevisionType) },
                }
            end
            ## 
            ## Gets the movieRating property value. Movies rating labels in United States
            ## @return a rating_united_states_movies_type
            ## 
            def movie_rating
                return @movie_rating
            end
            ## 
            ## Sets the movieRating property value. Movies rating labels in United States
            ## @param value Value to set for the movie_rating property.
            ## @return a void
            ## 
            def movie_rating=(value)
                @movie_rating = value
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
                writer.write_enum_value("movieRating", @movie_rating)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("tvRating", @tv_rating)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tvRating property value. TV content rating labels in United States
            ## @return a rating_united_states_television_type
            ## 
            def tv_rating
                return @tv_rating
            end
            ## 
            ## Sets the tvRating property value. TV content rating labels in United States
            ## @param value Value to set for the tv_rating property.
            ## @return a void
            ## 
            def tv_rating=(value)
                @tv_rating = value
            end
        end
    end
end
