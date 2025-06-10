require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RetentionSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The frequency of the backup.
            @interval
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The period of time to retain the protected data for a single Microsoft 365 service.
            @period
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new RetentionSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a retention_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RetentionSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "interval" => lambda {|n| @interval = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "period" => lambda {|n| @period = n.get_duration_value() },
                }
            end
            ## 
            ## Gets the interval property value. The frequency of the backup.
            ## @return a string
            ## 
            def interval
                return @interval
            end
            ## 
            ## Sets the interval property value. The frequency of the backup.
            ## @param value Value to set for the interval property.
            ## @return a void
            ## 
            def interval=(value)
                @interval = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the period property value. The period of time to retain the protected data for a single Microsoft 365 service.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period
                return @period
            end
            ## 
            ## Sets the period property value. The period of time to retain the protected data for a single Microsoft 365 service.
            ## @param value Value to set for the period property.
            ## @return a void
            ## 
            def period=(value)
                @period = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("interval", @interval)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_duration_value("period", @period)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
