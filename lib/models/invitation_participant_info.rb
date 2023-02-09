require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InvitationParticipantInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional. Whether to hide the participant from the roster.
            @hidden
            ## 
            # The identity property
            @identity
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Optional. The ID of the target participant.
            @participant_id
            ## 
            # Optional. Whether to remove them from the main mixer.
            @remove_from_default_audio_routing_group
            ## 
            # Optional. The call which the target identity is currently a part of. For peer-to-peer case, the call will be dropped once the participant is added successfully.
            @replaces_call_id
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
            ## Instantiates a new invitationParticipantInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a invitation_participant_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InvitationParticipantInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                    "removeFromDefaultAudioRoutingGroup" => lambda {|n| @remove_from_default_audio_routing_group = n.get_boolean_value() },
                    "replacesCallId" => lambda {|n| @replaces_call_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the hidden property value. Optional. Whether to hide the participant from the roster.
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. Optional. Whether to hide the participant from the roster.
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Gets the identity property value. The identity property
            ## @return a identity_set
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. The identity property
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
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
            ## Gets the participantId property value. Optional. The ID of the target participant.
            ## @return a string
            ## 
            def participant_id
                return @participant_id
            end
            ## 
            ## Sets the participantId property value. Optional. The ID of the target participant.
            ## @param value Value to set for the participant_id property.
            ## @return a void
            ## 
            def participant_id=(value)
                @participant_id = value
            end
            ## 
            ## Gets the removeFromDefaultAudioRoutingGroup property value. Optional. Whether to remove them from the main mixer.
            ## @return a boolean
            ## 
            def remove_from_default_audio_routing_group
                return @remove_from_default_audio_routing_group
            end
            ## 
            ## Sets the removeFromDefaultAudioRoutingGroup property value. Optional. Whether to remove them from the main mixer.
            ## @param value Value to set for the remove_from_default_audio_routing_group property.
            ## @return a void
            ## 
            def remove_from_default_audio_routing_group=(value)
                @remove_from_default_audio_routing_group = value
            end
            ## 
            ## Gets the replacesCallId property value. Optional. The call which the target identity is currently a part of. For peer-to-peer case, the call will be dropped once the participant is added successfully.
            ## @return a string
            ## 
            def replaces_call_id
                return @replaces_call_id
            end
            ## 
            ## Sets the replacesCallId property value. Optional. The call which the target identity is currently a part of. For peer-to-peer case, the call will be dropped once the participant is added successfully.
            ## @param value Value to set for the replaces_call_id property.
            ## @return a void
            ## 
            def replaces_call_id=(value)
                @replaces_call_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("hidden", @hidden)
                writer.write_object_value("identity", @identity)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("participantId", @participant_id)
                writer.write_boolean_value("removeFromDefaultAudioRoutingGroup", @remove_from_default_audio_routing_group)
                writer.write_string_value("replacesCallId", @replaces_call_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
