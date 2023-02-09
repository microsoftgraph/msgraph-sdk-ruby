require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CommsOperation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique Client Context string. Max limit is 256 chars.
            @client_context
            ## 
            # The result information. Read-only.
            @result_info
            ## 
            # The status property
            @status
            ## 
            ## Gets the clientContext property value. Unique Client Context string. Max limit is 256 chars.
            ## @return a string
            ## 
            def client_context
                return @client_context
            end
            ## 
            ## Sets the clientContext property value. Unique Client Context string. Max limit is 256 chars.
            ## @param value Value to set for the client_context property.
            ## @return a void
            ## 
            def client_context=(value)
                @client_context = value
            end
            ## 
            ## Instantiates a new commsOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a comms_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.addLargeGalleryViewOperation"
                            return AddLargeGalleryViewOperation.new
                        when "#microsoft.graph.cancelMediaProcessingOperation"
                            return CancelMediaProcessingOperation.new
                        when "#microsoft.graph.inviteParticipantsOperation"
                            return InviteParticipantsOperation.new
                        when "#microsoft.graph.muteParticipantOperation"
                            return MuteParticipantOperation.new
                        when "#microsoft.graph.playPromptOperation"
                            return PlayPromptOperation.new
                        when "#microsoft.graph.recordOperation"
                            return RecordOperation.new
                        when "#microsoft.graph.startHoldMusicOperation"
                            return StartHoldMusicOperation.new
                        when "#microsoft.graph.stopHoldMusicOperation"
                            return StopHoldMusicOperation.new
                        when "#microsoft.graph.subscribeToToneOperation"
                            return SubscribeToToneOperation.new
                        when "#microsoft.graph.unmuteParticipantOperation"
                            return UnmuteParticipantOperation.new
                        when "#microsoft.graph.updateRecordingStatusOperation"
                            return UpdateRecordingStatusOperation.new
                    end
                end
                return CommsOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientContext" => lambda {|n| @client_context = n.get_string_value() },
                    "resultInfo" => lambda {|n| @result_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResultInfo.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::OperationStatus) },
                })
            end
            ## 
            ## Gets the resultInfo property value. The result information. Read-only.
            ## @return a result_info
            ## 
            def result_info
                return @result_info
            end
            ## 
            ## Sets the resultInfo property value. The result information. Read-only.
            ## @param value Value to set for the result_info property.
            ## @return a void
            ## 
            def result_info=(value)
                @result_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("clientContext", @client_context)
                writer.write_object_value("resultInfo", @result_info)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
