require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRecordsParticipantBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The administrativeUnitInfos property
            @administrative_unit_infos
            ## 
            # The identity of the call participant.
            @identity
            ## 
            ## Gets the administrativeUnitInfos property value. The administrativeUnitInfos property
            ## @return a call_records_administrative_unit_info
            ## 
            def administrative_unit_infos
                return @administrative_unit_infos
            end
            ## 
            ## Sets the administrativeUnitInfos property value. The administrativeUnitInfos property
            ## @param value Value to set for the administrativeUnitInfos property.
            ## @return a void
            ## 
            def administrative_unit_infos=(value)
                @administrative_unit_infos = value
            end
            ## 
            ## Instantiates a new CallRecordsParticipantBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_participant_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.callRecords.organizer"
                            return CallRecordsOrganizer.new
                        when "#microsoft.graph.callRecords.participant"
                            return CallRecordsParticipant.new
                    end
                end
                return CallRecordsParticipantBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "administrativeUnitInfos" => lambda {|n| @administrative_unit_infos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecordsAdministrativeUnitInfo.create_from_discriminator_value(pn) }) },
                    "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CommunicationsIdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identity property value. The identity of the call participant.
            ## @return a communications_identity_set
            ## 
            def identity
                return @identity
            end
            ## 
            ## Sets the identity property value. The identity of the call participant.
            ## @param value Value to set for the identity property.
            ## @return a void
            ## 
            def identity=(value)
                @identity = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("administrativeUnitInfos", @administrative_unit_infos)
                writer.write_object_value("identity", @identity)
            end
        end
    end
end
