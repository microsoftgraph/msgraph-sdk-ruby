require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchQna < MicrosoftGraph::Models::SearchSearchAnswer
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The availabilityEndDateTime property
            @availability_end_date_time
            ## 
            # The availabilityStartDateTime property
            @availability_start_date_time
            ## 
            # The groupIds property
            @group_ids
            ## 
            # The isSuggested property
            @is_suggested
            ## 
            # The keywords property
            @keywords
            ## 
            # The languageTags property
            @language_tags
            ## 
            # The platforms property
            @platforms
            ## 
            # The state property
            @state
            ## 
            # The targetedVariations property
            @targeted_variations
            ## 
            ## Gets the availabilityEndDateTime property value. The availabilityEndDateTime property
            ## @return a date_time
            ## 
            def availability_end_date_time
                return @availability_end_date_time
            end
            ## 
            ## Sets the availabilityEndDateTime property value. The availabilityEndDateTime property
            ## @param value Value to set for the availabilityEndDateTime property.
            ## @return a void
            ## 
            def availability_end_date_time=(value)
                @availability_end_date_time = value
            end
            ## 
            ## Gets the availabilityStartDateTime property value. The availabilityStartDateTime property
            ## @return a date_time
            ## 
            def availability_start_date_time
                return @availability_start_date_time
            end
            ## 
            ## Sets the availabilityStartDateTime property value. The availabilityStartDateTime property
            ## @param value Value to set for the availabilityStartDateTime property.
            ## @return a void
            ## 
            def availability_start_date_time=(value)
                @availability_start_date_time = value
            end
            ## 
            ## Instantiates a new SearchQna and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a search_qna
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchQna.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availabilityEndDateTime" => lambda {|n| @availability_end_date_time = n.get_date_time_value() },
                    "availabilityStartDateTime" => lambda {|n| @availability_start_date_time = n.get_date_time_value() },
                    "groupIds" => lambda {|n| @group_ids = n.get_collection_of_primitive_values(String) },
                    "isSuggested" => lambda {|n| @is_suggested = n.get_boolean_value() },
                    "keywords" => lambda {|n| @keywords = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SearchAnswerKeyword.create_from_discriminator_value(pn) }) },
                    "languageTags" => lambda {|n| @language_tags = n.get_collection_of_primitive_values(String) },
                    "platforms" => lambda {|n| @platforms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DevicePlatformType.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::SearchAnswerState) },
                    "targetedVariations" => lambda {|n| @targeted_variations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchAnswerVariant.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupIds property value. The groupIds property
            ## @return a string
            ## 
            def group_ids
                return @group_ids
            end
            ## 
            ## Sets the groupIds property value. The groupIds property
            ## @param value Value to set for the groupIds property.
            ## @return a void
            ## 
            def group_ids=(value)
                @group_ids = value
            end
            ## 
            ## Gets the isSuggested property value. The isSuggested property
            ## @return a boolean
            ## 
            def is_suggested
                return @is_suggested
            end
            ## 
            ## Sets the isSuggested property value. The isSuggested property
            ## @param value Value to set for the isSuggested property.
            ## @return a void
            ## 
            def is_suggested=(value)
                @is_suggested = value
            end
            ## 
            ## Gets the keywords property value. The keywords property
            ## @return a search_answer_keyword
            ## 
            def keywords
                return @keywords
            end
            ## 
            ## Sets the keywords property value. The keywords property
            ## @param value Value to set for the keywords property.
            ## @return a void
            ## 
            def keywords=(value)
                @keywords = value
            end
            ## 
            ## Gets the languageTags property value. The languageTags property
            ## @return a string
            ## 
            def language_tags
                return @language_tags
            end
            ## 
            ## Sets the languageTags property value. The languageTags property
            ## @param value Value to set for the languageTags property.
            ## @return a void
            ## 
            def language_tags=(value)
                @language_tags = value
            end
            ## 
            ## Gets the platforms property value. The platforms property
            ## @return a device_platform_type
            ## 
            def platforms
                return @platforms
            end
            ## 
            ## Sets the platforms property value. The platforms property
            ## @param value Value to set for the platforms property.
            ## @return a void
            ## 
            def platforms=(value)
                @platforms = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("availabilityEndDateTime", @availability_end_date_time)
                writer.write_date_time_value("availabilityStartDateTime", @availability_start_date_time)
                writer.write_collection_of_primitive_values("groupIds", @group_ids)
                writer.write_boolean_value("isSuggested", @is_suggested)
                writer.write_object_value("keywords", @keywords)
                writer.write_collection_of_primitive_values("languageTags", @language_tags)
                writer.write_collection_of_object_values("platforms", @platforms)
                writer.write_enum_value("state", @state)
                writer.write_collection_of_object_values("targetedVariations", @targeted_variations)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a search_answer_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the targetedVariations property value. The targetedVariations property
            ## @return a search_answer_variant
            ## 
            def targeted_variations
                return @targeted_variations
            end
            ## 
            ## Sets the targetedVariations property value. The targetedVariations property
            ## @param value Value to set for the targetedVariations property.
            ## @return a void
            ## 
            def targeted_variations=(value)
                @targeted_variations = value
            end
        end
    end
end
