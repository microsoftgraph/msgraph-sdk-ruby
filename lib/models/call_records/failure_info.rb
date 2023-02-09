require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class FailureInfo
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Classification of why a call or portion of a call failed.
                @reason
                ## 
                # The stage property
                @stage
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
                ## Instantiates a new failureInfo and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a failure_info
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return FailureInfo.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "reason" => lambda {|n| @reason = n.get_string_value() },
                        "stage" => lambda {|n| @stage = n.get_enum_value(MicrosoftGraph::Models::CallRecords::FailureStage) },
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
                ## Gets the reason property value. Classification of why a call or portion of a call failed.
                ## @return a string
                ## 
                def reason
                    return @reason
                end
                ## 
                ## Sets the reason property value. Classification of why a call or portion of a call failed.
                ## @param value Value to set for the reason property.
                ## @return a void
                ## 
                def reason=(value)
                    @reason = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("reason", @reason)
                    writer.write_enum_value("stage", @stage)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the stage property value. The stage property
                ## @return a failure_stage
                ## 
                def stage
                    return @stage
                end
                ## 
                ## Sets the stage property value. The stage property
                ## @param value Value to set for the stage property.
                ## @return a void
                ## 
                def stage=(value)
                    @stage = value
                end
            end
        end
    end
end
