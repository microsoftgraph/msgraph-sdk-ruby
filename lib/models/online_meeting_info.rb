require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnlineMeetingInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ID of the conference.
            @conference_id
            ## 
            # The external link that launches the online meeting. This is a URL that clients will launch into a browser and will redirect the user to join the meeting.
            @join_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # All of the phone numbers associated with this conference.
            @phones
            ## 
            # The pre-formatted quickdial for this call.
            @quick_dial
            ## 
            # The toll free numbers that can be used to join the conference.
            @toll_free_numbers
            ## 
            # The toll number that can be used to join the conference.
            @toll_number
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
            ## Gets the conferenceId property value. The ID of the conference.
            ## @return a string
            ## 
            def conference_id
                return @conference_id
            end
            ## 
            ## Sets the conferenceId property value. The ID of the conference.
            ## @param value Value to set for the conference_id property.
            ## @return a void
            ## 
            def conference_id=(value)
                @conference_id = value
            end
            ## 
            ## Instantiates a new onlineMeetingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a online_meeting_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnlineMeetingInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "conferenceId" => lambda {|n| @conference_id = n.get_string_value() },
                    "joinUrl" => lambda {|n| @join_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phones" => lambda {|n| @phones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Phone.create_from_discriminator_value(pn) }) },
                    "quickDial" => lambda {|n| @quick_dial = n.get_string_value() },
                    "tollFreeNumbers" => lambda {|n| @toll_free_numbers = n.get_collection_of_primitive_values(String) },
                    "tollNumber" => lambda {|n| @toll_number = n.get_string_value() },
                }
            end
            ## 
            ## Gets the joinUrl property value. The external link that launches the online meeting. This is a URL that clients will launch into a browser and will redirect the user to join the meeting.
            ## @return a string
            ## 
            def join_url
                return @join_url
            end
            ## 
            ## Sets the joinUrl property value. The external link that launches the online meeting. This is a URL that clients will launch into a browser and will redirect the user to join the meeting.
            ## @param value Value to set for the join_url property.
            ## @return a void
            ## 
            def join_url=(value)
                @join_url = value
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
            ## Gets the phones property value. All of the phone numbers associated with this conference.
            ## @return a phone
            ## 
            def phones
                return @phones
            end
            ## 
            ## Sets the phones property value. All of the phone numbers associated with this conference.
            ## @param value Value to set for the phones property.
            ## @return a void
            ## 
            def phones=(value)
                @phones = value
            end
            ## 
            ## Gets the quickDial property value. The pre-formatted quickdial for this call.
            ## @return a string
            ## 
            def quick_dial
                return @quick_dial
            end
            ## 
            ## Sets the quickDial property value. The pre-formatted quickdial for this call.
            ## @param value Value to set for the quick_dial property.
            ## @return a void
            ## 
            def quick_dial=(value)
                @quick_dial = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("conferenceId", @conference_id)
                writer.write_string_value("joinUrl", @join_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("phones", @phones)
                writer.write_string_value("quickDial", @quick_dial)
                writer.write_collection_of_primitive_values("tollFreeNumbers", @toll_free_numbers)
                writer.write_string_value("tollNumber", @toll_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tollFreeNumbers property value. The toll free numbers that can be used to join the conference.
            ## @return a string
            ## 
            def toll_free_numbers
                return @toll_free_numbers
            end
            ## 
            ## Sets the tollFreeNumbers property value. The toll free numbers that can be used to join the conference.
            ## @param value Value to set for the toll_free_numbers property.
            ## @return a void
            ## 
            def toll_free_numbers=(value)
                @toll_free_numbers = value
            end
            ## 
            ## Gets the tollNumber property value. The toll number that can be used to join the conference.
            ## @return a string
            ## 
            def toll_number
                return @toll_number
            end
            ## 
            ## Sets the tollNumber property value. The toll number that can be used to join the conference.
            ## @param value Value to set for the toll_number property.
            ## @return a void
            ## 
            def toll_number=(value)
                @toll_number = value
            end
        end
    end
end
