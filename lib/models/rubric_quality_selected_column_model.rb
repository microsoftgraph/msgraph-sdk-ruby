require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RubricQualitySelectedColumnModel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # ID of the selected level for this quality.
            @column_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # ID of the associated quality.
            @quality_id
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
            ## Gets the columnId property value. ID of the selected level for this quality.
            ## @return a string
            ## 
            def column_id
                return @column_id
            end
            ## 
            ## Sets the columnId property value. ID of the selected level for this quality.
            ## @param value Value to set for the column_id property.
            ## @return a void
            ## 
            def column_id=(value)
                @column_id = value
            end
            ## 
            ## Instantiates a new rubricQualitySelectedColumnModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rubric_quality_selected_column_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RubricQualitySelectedColumnModel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "columnId" => lambda {|n| @column_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "qualityId" => lambda {|n| @quality_id = n.get_string_value() },
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
            ## Gets the qualityId property value. ID of the associated quality.
            ## @return a string
            ## 
            def quality_id
                return @quality_id
            end
            ## 
            ## Sets the qualityId property value. ID of the associated quality.
            ## @param value Value to set for the quality_id property.
            ## @return a void
            ## 
            def quality_id=(value)
                @quality_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("columnId", @column_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("qualityId", @quality_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
