require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConvertIdResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # An error object indicating the reason for the conversion failure. This value is not present if the conversion succeeded.
            @error_details
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identifier that was converted. This value is the original, un-converted identifier.
            @source_id
            ## 
            # The converted identifier. This value is not present if the conversion failed.
            @target_id
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
            ## Instantiates a new convertIdResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a convert_id_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConvertIdResult.new
            end
            ## 
            ## Gets the errorDetails property value. An error object indicating the reason for the conversion failure. This value is not present if the conversion succeeded.
            ## @return a generic_error
            ## 
            def error_details
                return @error_details
            end
            ## 
            ## Sets the errorDetails property value. An error object indicating the reason for the conversion failure. This value is not present if the conversion succeeded.
            ## @param value Value to set for the error_details property.
            ## @return a void
            ## 
            def error_details=(value)
                @error_details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "errorDetails" => lambda {|n| @error_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::GenericError.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                    "targetId" => lambda {|n| @target_id = n.get_string_value() },
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
                writer.write_object_value("errorDetails", @error_details)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sourceId", @source_id)
                writer.write_string_value("targetId", @target_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceId property value. The identifier that was converted. This value is the original, un-converted identifier.
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The identifier that was converted. This value is the original, un-converted identifier.
            ## @param value Value to set for the source_id property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
            ## 
            ## Gets the targetId property value. The converted identifier. This value is not present if the conversion failed.
            ## @return a string
            ## 
            def target_id
                return @target_id
            end
            ## 
            ## Sets the targetId property value. The converted identifier. This value is not present if the conversion failed.
            ## @param value Value to set for the target_id property.
            ## @return a void
            ## 
            def target_id=(value)
                @target_id = value
            end
        end
    end
end
