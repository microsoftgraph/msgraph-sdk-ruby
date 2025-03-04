require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SearchBookmark < MicrosoftGraph::Models::SearchSearchAnswer
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time when the bookmark stops appearing as a search result. Set as null for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @availability_end_date_time
            ## 
            # Date and time when the bookmark starts to appear as a search result. Set as null for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @availability_start_date_time
            ## 
            # Categories commonly used to describe this bookmark. For example, IT and HR.
            @categories
            ## 
            # The list of security groups that are able to view this bookmark.
            @group_ids
            ## 
            # True if this bookmark was suggested to the admin, by a user, or was mined and suggested by Microsoft. Read-only.
            @is_suggested
            ## 
            # Keywords that trigger this bookmark to appear in search results.
            @keywords
            ## 
            # A list of geographically specific language names in which this bookmark can be viewed. Each language tag value follows the pattern {language}-{region}. For example, en-us is English as used in the United States. For the list of possible values, see Supported language tags.
            @language_tags
            ## 
            # List of devices and operating systems that are able to view this bookmark. Possible values are: android, androidForWork, ios, macOS, windowsPhone81, windowsPhone81AndLater, windows10AndLater, androidWorkProfile, unknown, androidASOP, androidMobileApplicationManagement, iOSMobileApplicationManagement, unknownFutureValue.
            @platforms
            ## 
            # List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks directly on the search results page, such as entering vacation time or reporting expenses.
            @power_app_ids
            ## 
            # The state property
            @state
            ## 
            # Variations of a bookmark for different countries/regions or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.
            @targeted_variations
            ## 
            ## Gets the availabilityEndDateTime property value. Date and time when the bookmark stops appearing as a search result. Set as null for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def availability_end_date_time
                return @availability_end_date_time
            end
            ## 
            ## Sets the availabilityEndDateTime property value. Date and time when the bookmark stops appearing as a search result. Set as null for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the availabilityEndDateTime property.
            ## @return a void
            ## 
            def availability_end_date_time=(value)
                @availability_end_date_time = value
            end
            ## 
            ## Gets the availabilityStartDateTime property value. Date and time when the bookmark starts to appear as a search result. Set as null for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def availability_start_date_time
                return @availability_start_date_time
            end
            ## 
            ## Sets the availabilityStartDateTime property value. Date and time when the bookmark starts to appear as a search result. Set as null for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the availabilityStartDateTime property.
            ## @return a void
            ## 
            def availability_start_date_time=(value)
                @availability_start_date_time = value
            end
            ## 
            ## Gets the categories property value. Categories commonly used to describe this bookmark. For example, IT and HR.
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Categories commonly used to describe this bookmark. For example, IT and HR.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Instantiates a new SearchBookmark and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a search_bookmark
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SearchBookmark.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availabilityEndDateTime" => lambda {|n| @availability_end_date_time = n.get_date_time_value() },
                    "availabilityStartDateTime" => lambda {|n| @availability_start_date_time = n.get_date_time_value() },
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "groupIds" => lambda {|n| @group_ids = n.get_collection_of_primitive_values(String) },
                    "isSuggested" => lambda {|n| @is_suggested = n.get_boolean_value() },
                    "keywords" => lambda {|n| @keywords = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SearchAnswerKeyword.create_from_discriminator_value(pn) }) },
                    "languageTags" => lambda {|n| @language_tags = n.get_collection_of_primitive_values(String) },
                    "platforms" => lambda {|n| @platforms = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DevicePlatformType.create_from_discriminator_value(pn) }) },
                    "powerAppIds" => lambda {|n| @power_app_ids = n.get_collection_of_primitive_values(String) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::SearchAnswerState) },
                    "targetedVariations" => lambda {|n| @targeted_variations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SearchAnswerVariant.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupIds property value. The list of security groups that are able to view this bookmark.
            ## @return a string
            ## 
            def group_ids
                return @group_ids
            end
            ## 
            ## Sets the groupIds property value. The list of security groups that are able to view this bookmark.
            ## @param value Value to set for the groupIds property.
            ## @return a void
            ## 
            def group_ids=(value)
                @group_ids = value
            end
            ## 
            ## Gets the isSuggested property value. True if this bookmark was suggested to the admin, by a user, or was mined and suggested by Microsoft. Read-only.
            ## @return a boolean
            ## 
            def is_suggested
                return @is_suggested
            end
            ## 
            ## Sets the isSuggested property value. True if this bookmark was suggested to the admin, by a user, or was mined and suggested by Microsoft. Read-only.
            ## @param value Value to set for the isSuggested property.
            ## @return a void
            ## 
            def is_suggested=(value)
                @is_suggested = value
            end
            ## 
            ## Gets the keywords property value. Keywords that trigger this bookmark to appear in search results.
            ## @return a search_answer_keyword
            ## 
            def keywords
                return @keywords
            end
            ## 
            ## Sets the keywords property value. Keywords that trigger this bookmark to appear in search results.
            ## @param value Value to set for the keywords property.
            ## @return a void
            ## 
            def keywords=(value)
                @keywords = value
            end
            ## 
            ## Gets the languageTags property value. A list of geographically specific language names in which this bookmark can be viewed. Each language tag value follows the pattern {language}-{region}. For example, en-us is English as used in the United States. For the list of possible values, see Supported language tags.
            ## @return a string
            ## 
            def language_tags
                return @language_tags
            end
            ## 
            ## Sets the languageTags property value. A list of geographically specific language names in which this bookmark can be viewed. Each language tag value follows the pattern {language}-{region}. For example, en-us is English as used in the United States. For the list of possible values, see Supported language tags.
            ## @param value Value to set for the languageTags property.
            ## @return a void
            ## 
            def language_tags=(value)
                @language_tags = value
            end
            ## 
            ## Gets the platforms property value. List of devices and operating systems that are able to view this bookmark. Possible values are: android, androidForWork, ios, macOS, windowsPhone81, windowsPhone81AndLater, windows10AndLater, androidWorkProfile, unknown, androidASOP, androidMobileApplicationManagement, iOSMobileApplicationManagement, unknownFutureValue.
            ## @return a device_platform_type
            ## 
            def platforms
                return @platforms
            end
            ## 
            ## Sets the platforms property value. List of devices and operating systems that are able to view this bookmark. Possible values are: android, androidForWork, ios, macOS, windowsPhone81, windowsPhone81AndLater, windows10AndLater, androidWorkProfile, unknown, androidASOP, androidMobileApplicationManagement, iOSMobileApplicationManagement, unknownFutureValue.
            ## @param value Value to set for the platforms property.
            ## @return a void
            ## 
            def platforms=(value)
                @platforms = value
            end
            ## 
            ## Gets the powerAppIds property value. List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks directly on the search results page, such as entering vacation time or reporting expenses.
            ## @return a string
            ## 
            def power_app_ids
                return @power_app_ids
            end
            ## 
            ## Sets the powerAppIds property value. List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks directly on the search results page, such as entering vacation time or reporting expenses.
            ## @param value Value to set for the powerAppIds property.
            ## @return a void
            ## 
            def power_app_ids=(value)
                @power_app_ids = value
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
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_collection_of_primitive_values("groupIds", @group_ids)
                writer.write_boolean_value("isSuggested", @is_suggested)
                writer.write_object_value("keywords", @keywords)
                writer.write_collection_of_primitive_values("languageTags", @language_tags)
                writer.write_collection_of_object_values("platforms", @platforms)
                writer.write_collection_of_primitive_values("powerAppIds", @power_app_ids)
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
            ## Gets the targetedVariations property value. Variations of a bookmark for different countries/regions or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.
            ## @return a search_answer_variant
            ## 
            def targeted_variations
                return @targeted_variations
            end
            ## 
            ## Sets the targetedVariations property value. Variations of a bookmark for different countries/regions or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.
            ## @param value Value to set for the targetedVariations property.
            ## @return a void
            ## 
            def targeted_variations=(value)
                @targeted_variations = value
            end
        end
    end
end
