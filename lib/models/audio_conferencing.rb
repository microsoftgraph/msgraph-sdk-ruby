require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AudioConferencing
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The conference id of the online meeting.
            @conference_id
            ## 
            # A URL to the externally-accessible web page that contains dial-in information.
            @dialin_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tollFreeNumber property
            @toll_free_number
            ## 
            # List of toll-free numbers that are displayed in the meeting invite.
            @toll_free_numbers
            ## 
            # The tollNumber property
            @toll_number
            ## 
            # List of toll numbers that are displayed in the meeting invite.
            @toll_numbers
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
            ## Gets the conferenceId property value. The conference id of the online meeting.
            ## @return a string
            ## 
            def conference_id
                return @conference_id
            end
            ## 
            ## Sets the conferenceId property value. The conference id of the online meeting.
            ## @param value Value to set for the conference_id property.
            ## @return a void
            ## 
            def conference_id=(value)
                @conference_id = value
            end
            ## 
            ## Instantiates a new audioConferencing and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a audio_conferencing
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AudioConferencing.new
            end
            ## 
            ## Gets the dialinUrl property value. A URL to the externally-accessible web page that contains dial-in information.
            ## @return a string
            ## 
            def dialin_url
                return @dialin_url
            end
            ## 
            ## Sets the dialinUrl property value. A URL to the externally-accessible web page that contains dial-in information.
            ## @param value Value to set for the dialin_url property.
            ## @return a void
            ## 
            def dialin_url=(value)
                @dialin_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "conferenceId" => lambda {|n| @conference_id = n.get_string_value() },
                    "dialinUrl" => lambda {|n| @dialin_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tollFreeNumber" => lambda {|n| @toll_free_number = n.get_string_value() },
                    "tollFreeNumbers" => lambda {|n| @toll_free_numbers = n.get_collection_of_primitive_values(String) },
                    "tollNumber" => lambda {|n| @toll_number = n.get_string_value() },
                    "tollNumbers" => lambda {|n| @toll_numbers = n.get_collection_of_primitive_values(String) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("conferenceId", @conference_id)
                writer.write_string_value("dialinUrl", @dialin_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("tollFreeNumber", @toll_free_number)
                writer.write_collection_of_primitive_values("tollFreeNumbers", @toll_free_numbers)
                writer.write_string_value("tollNumber", @toll_number)
                writer.write_collection_of_primitive_values("tollNumbers", @toll_numbers)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tollFreeNumber property value. The tollFreeNumber property
            ## @return a string
            ## 
            def toll_free_number
                return @toll_free_number
            end
            ## 
            ## Sets the tollFreeNumber property value. The tollFreeNumber property
            ## @param value Value to set for the toll_free_number property.
            ## @return a void
            ## 
            def toll_free_number=(value)
                @toll_free_number = value
            end
            ## 
            ## Gets the tollFreeNumbers property value. List of toll-free numbers that are displayed in the meeting invite.
            ## @return a string
            ## 
            def toll_free_numbers
                return @toll_free_numbers
            end
            ## 
            ## Sets the tollFreeNumbers property value. List of toll-free numbers that are displayed in the meeting invite.
            ## @param value Value to set for the toll_free_numbers property.
            ## @return a void
            ## 
            def toll_free_numbers=(value)
                @toll_free_numbers = value
            end
            ## 
            ## Gets the tollNumber property value. The tollNumber property
            ## @return a string
            ## 
            def toll_number
                return @toll_number
            end
            ## 
            ## Sets the tollNumber property value. The tollNumber property
            ## @param value Value to set for the toll_number property.
            ## @return a void
            ## 
            def toll_number=(value)
                @toll_number = value
            end
            ## 
            ## Gets the tollNumbers property value. List of toll numbers that are displayed in the meeting invite.
            ## @return a string
            ## 
            def toll_numbers
                return @toll_numbers
            end
            ## 
            ## Sets the tollNumbers property value. List of toll numbers that are displayed in the meeting invite.
            ## @param value Value to set for the toll_numbers property.
            ## @return a void
            ## 
            def toll_numbers=(value)
                @toll_numbers = value
            end
        end
    end
end
