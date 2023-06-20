require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationQuarantine
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The currentBegan property
            @current_began
            ## 
            # The error property
            @error
            ## 
            # The nextAttempt property
            @next_attempt
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The reason property
            @reason
            ## 
            # The seriesBegan property
            @series_began
            ## 
            # The seriesCount property
            @series_count
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
            ## Instantiates a new synchronizationQuarantine and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_quarantine
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationQuarantine.new
            end
            ## 
            ## Gets the currentBegan property value. The currentBegan property
            ## @return a date_time
            ## 
            def current_began
                return @current_began
            end
            ## 
            ## Sets the currentBegan property value. The currentBegan property
            ## @param value Value to set for the current_began property.
            ## @return a void
            ## 
            def current_began=(value)
                @current_began = value
            end
            ## 
            ## Gets the error property value. The error property
            ## @return a synchronization_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error property
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "currentBegan" => lambda {|n| @current_began = n.get_date_time_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationError.create_from_discriminator_value(pn) }) },
                    "nextAttempt" => lambda {|n| @next_attempt = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reason" => lambda {|n| @reason = n.get_enum_value(MicrosoftGraph::Models::QuarantineReason) },
                    "seriesBegan" => lambda {|n| @series_began = n.get_date_time_value() },
                    "seriesCount" => lambda {|n| @series_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the nextAttempt property value. The nextAttempt property
            ## @return a date_time
            ## 
            def next_attempt
                return @next_attempt
            end
            ## 
            ## Sets the nextAttempt property value. The nextAttempt property
            ## @param value Value to set for the next_attempt property.
            ## @return a void
            ## 
            def next_attempt=(value)
                @next_attempt = value
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
            ## Gets the reason property value. The reason property
            ## @return a quarantine_reason
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. The reason property
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
                writer.write_date_time_value("currentBegan", @current_began)
                writer.write_object_value("error", @error)
                writer.write_date_time_value("nextAttempt", @next_attempt)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("reason", @reason)
                writer.write_date_time_value("seriesBegan", @series_began)
                writer.write_object_value("seriesCount", @series_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the seriesBegan property value. The seriesBegan property
            ## @return a date_time
            ## 
            def series_began
                return @series_began
            end
            ## 
            ## Sets the seriesBegan property value. The seriesBegan property
            ## @param value Value to set for the series_began property.
            ## @return a void
            ## 
            def series_began=(value)
                @series_began = value
            end
            ## 
            ## Gets the seriesCount property value. The seriesCount property
            ## @return a int64
            ## 
            def series_count
                return @series_count
            end
            ## 
            ## Sets the seriesCount property value. The seriesCount property
            ## @param value Value to set for the series_count property.
            ## @return a void
            ## 
            def series_count=(value)
                @series_count = value
            end
        end
    end
end
