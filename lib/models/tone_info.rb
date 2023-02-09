require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ToneInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # An incremental identifier used for ordering DTMF events.
            @sequence_id
            ## 
            # The tone property
            @tone
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
            ## Instantiates a new toneInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a tone_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ToneInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sequenceId" => lambda {|n| @sequence_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "tone" => lambda {|n| @tone = n.get_enum_value(MicrosoftGraph::Models::Tone) },
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
            ## Gets the sequenceId property value. An incremental identifier used for ordering DTMF events.
            ## @return a int64
            ## 
            def sequence_id
                return @sequence_id
            end
            ## 
            ## Sets the sequenceId property value. An incremental identifier used for ordering DTMF events.
            ## @param value Value to set for the sequence_id property.
            ## @return a void
            ## 
            def sequence_id=(value)
                @sequence_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("sequenceId", @sequence_id)
                writer.write_enum_value("tone", @tone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tone property value. The tone property
            ## @return a tone
            ## 
            def tone
                return @tone
            end
            ## 
            ## Sets the tone property value. The tone property
            ## @param value Value to set for the tone property.
            ## @return a void
            ## 
            def tone=(value)
                @tone = value
            end
        end
    end
end
