require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IncomingContext
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ID of the participant that is under observation. Read-only.
            @observed_participant_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identity that the call is happening on behalf of.
            @on_behalf_of
            ## 
            # The ID of the participant that triggered the incoming call. Read-only.
            @source_participant_id
            ## 
            # The identity that transferred the call.
            @transferor
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
            ## Instantiates a new incomingContext and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a incoming_context
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IncomingContext.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "observedParticipantId" => lambda {|n| @observed_participant_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onBehalfOf" => lambda {|n| @on_behalf_of = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "sourceParticipantId" => lambda {|n| @source_participant_id = n.get_string_value() },
                    "transferor" => lambda {|n| @transferor = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the observedParticipantId property value. The ID of the participant that is under observation. Read-only.
            ## @return a string
            ## 
            def observed_participant_id
                return @observed_participant_id
            end
            ## 
            ## Sets the observedParticipantId property value. The ID of the participant that is under observation. Read-only.
            ## @param value Value to set for the observed_participant_id property.
            ## @return a void
            ## 
            def observed_participant_id=(value)
                @observed_participant_id = value
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
            ## Gets the onBehalfOf property value. The identity that the call is happening on behalf of.
            ## @return a identity_set
            ## 
            def on_behalf_of
                return @on_behalf_of
            end
            ## 
            ## Sets the onBehalfOf property value. The identity that the call is happening on behalf of.
            ## @param value Value to set for the on_behalf_of property.
            ## @return a void
            ## 
            def on_behalf_of=(value)
                @on_behalf_of = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("observedParticipantId", @observed_participant_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("onBehalfOf", @on_behalf_of)
                writer.write_string_value("sourceParticipantId", @source_participant_id)
                writer.write_object_value("transferor", @transferor)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceParticipantId property value. The ID of the participant that triggered the incoming call. Read-only.
            ## @return a string
            ## 
            def source_participant_id
                return @source_participant_id
            end
            ## 
            ## Sets the sourceParticipantId property value. The ID of the participant that triggered the incoming call. Read-only.
            ## @param value Value to set for the source_participant_id property.
            ## @return a void
            ## 
            def source_participant_id=(value)
                @source_participant_id = value
            end
            ## 
            ## Gets the transferor property value. The identity that transferred the call.
            ## @return a identity_set
            ## 
            def transferor
                return @transferor
            end
            ## 
            ## Sets the transferor property value. The identity that transferred the call.
            ## @param value Value to set for the transferor property.
            ## @return a void
            ## 
            def transferor=(value)
                @transferor = value
            end
        end
    end
end
