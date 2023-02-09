require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MeetingTimeSuggestionsResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A reason for not returning any meeting suggestions. The possible values are: attendeesUnavailable, attendeesUnavailableOrUnknown, locationsUnavailable, organizerUnavailable, or unknown. This property is an empty string if the meetingTimeSuggestions property does include any meeting suggestions.
            @empty_suggestions_reason
            ## 
            # An array of meeting suggestions.
            @meeting_time_suggestions
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
            ## Instantiates a new meetingTimeSuggestionsResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_time_suggestions_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingTimeSuggestionsResult.new
            end
            ## 
            ## Gets the emptySuggestionsReason property value. A reason for not returning any meeting suggestions. The possible values are: attendeesUnavailable, attendeesUnavailableOrUnknown, locationsUnavailable, organizerUnavailable, or unknown. This property is an empty string if the meetingTimeSuggestions property does include any meeting suggestions.
            ## @return a string
            ## 
            def empty_suggestions_reason
                return @empty_suggestions_reason
            end
            ## 
            ## Sets the emptySuggestionsReason property value. A reason for not returning any meeting suggestions. The possible values are: attendeesUnavailable, attendeesUnavailableOrUnknown, locationsUnavailable, organizerUnavailable, or unknown. This property is an empty string if the meetingTimeSuggestions property does include any meeting suggestions.
            ## @param value Value to set for the empty_suggestions_reason property.
            ## @return a void
            ## 
            def empty_suggestions_reason=(value)
                @empty_suggestions_reason = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "emptySuggestionsReason" => lambda {|n| @empty_suggestions_reason = n.get_string_value() },
                    "meetingTimeSuggestions" => lambda {|n| @meeting_time_suggestions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MeetingTimeSuggestion.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the meetingTimeSuggestions property value. An array of meeting suggestions.
            ## @return a meeting_time_suggestion
            ## 
            def meeting_time_suggestions
                return @meeting_time_suggestions
            end
            ## 
            ## Sets the meetingTimeSuggestions property value. An array of meeting suggestions.
            ## @param value Value to set for the meeting_time_suggestions property.
            ## @return a void
            ## 
            def meeting_time_suggestions=(value)
                @meeting_time_suggestions = value
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
                writer.write_string_value("emptySuggestionsReason", @empty_suggestions_reason)
                writer.write_collection_of_object_values("meetingTimeSuggestions", @meeting_time_suggestions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
