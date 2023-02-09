require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class JoinMeetingIdSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether a passcode is required to join a meeting when using joinMeetingId. Optional.
            @is_passcode_required
            ## 
            # The meeting ID to be used to join a meeting. Optional. Read-only.
            @join_meeting_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The passcode to join a meeting.  Optional. Read-only.
            @passcode
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
            ## Instantiates a new joinMeetingIdSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a join_meeting_id_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return JoinMeetingIdSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isPasscodeRequired" => lambda {|n| @is_passcode_required = n.get_boolean_value() },
                    "joinMeetingId" => lambda {|n| @join_meeting_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "passcode" => lambda {|n| @passcode = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isPasscodeRequired property value. Indicates whether a passcode is required to join a meeting when using joinMeetingId. Optional.
            ## @return a boolean
            ## 
            def is_passcode_required
                return @is_passcode_required
            end
            ## 
            ## Sets the isPasscodeRequired property value. Indicates whether a passcode is required to join a meeting when using joinMeetingId. Optional.
            ## @param value Value to set for the is_passcode_required property.
            ## @return a void
            ## 
            def is_passcode_required=(value)
                @is_passcode_required = value
            end
            ## 
            ## Gets the joinMeetingId property value. The meeting ID to be used to join a meeting. Optional. Read-only.
            ## @return a string
            ## 
            def join_meeting_id
                return @join_meeting_id
            end
            ## 
            ## Sets the joinMeetingId property value. The meeting ID to be used to join a meeting. Optional. Read-only.
            ## @param value Value to set for the join_meeting_id property.
            ## @return a void
            ## 
            def join_meeting_id=(value)
                @join_meeting_id = value
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
            ## Gets the passcode property value. The passcode to join a meeting.  Optional. Read-only.
            ## @return a string
            ## 
            def passcode
                return @passcode
            end
            ## 
            ## Sets the passcode property value. The passcode to join a meeting.  Optional. Read-only.
            ## @param value Value to set for the passcode property.
            ## @return a void
            ## 
            def passcode=(value)
                @passcode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isPasscodeRequired", @is_passcode_required)
                writer.write_string_value("joinMeetingId", @join_meeting_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("passcode", @passcode)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
