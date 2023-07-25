require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationProgress
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The numerator of a progress ratio; the number of units of changes already processed.
            @completed_units
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The time of a progress observation as an offset in minutes from UTC.
            @progress_observation_date_time
            ## 
            # The denominator of a progress ratio; a number of units of changes to be processed to accomplish synchronization.
            @total_units
            ## 
            # An optional description of the units.
            @units
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the completedUnits property value. The numerator of a progress ratio; the number of units of changes already processed.
            ## @return a int64
            ## 
            def completed_units
                return @completed_units
            end
            ## 
            ## Sets the completedUnits property value. The numerator of a progress ratio; the number of units of changes already processed.
            ## @param value Value to set for the completedUnits property.
            ## @return a void
            ## 
            def completed_units=(value)
                @completed_units = value
            end
            ## 
            ## Instantiates a new synchronizationProgress and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_progress
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationProgress.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "completedUnits" => lambda {|n| @completed_units = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "progressObservationDateTime" => lambda {|n| @progress_observation_date_time = n.get_date_time_value() },
                    "totalUnits" => lambda {|n| @total_units = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "units" => lambda {|n| @units = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the progressObservationDateTime property value. The time of a progress observation as an offset in minutes from UTC.
            ## @return a date_time
            ## 
            def progress_observation_date_time
                return @progress_observation_date_time
            end
            ## 
            ## Sets the progressObservationDateTime property value. The time of a progress observation as an offset in minutes from UTC.
            ## @param value Value to set for the progressObservationDateTime property.
            ## @return a void
            ## 
            def progress_observation_date_time=(value)
                @progress_observation_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("completedUnits", @completed_units)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("progressObservationDateTime", @progress_observation_date_time)
                writer.write_object_value("totalUnits", @total_units)
                writer.write_string_value("units", @units)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalUnits property value. The denominator of a progress ratio; a number of units of changes to be processed to accomplish synchronization.
            ## @return a int64
            ## 
            def total_units
                return @total_units
            end
            ## 
            ## Sets the totalUnits property value. The denominator of a progress ratio; a number of units of changes to be processed to accomplish synchronization.
            ## @param value Value to set for the totalUnits property.
            ## @return a void
            ## 
            def total_units=(value)
                @total_units = value
            end
            ## 
            ## Gets the units property value. An optional description of the units.
            ## @return a string
            ## 
            def units
                return @units
            end
            ## 
            ## Sets the units property value. An optional description of the units.
            ## @param value Value to set for the units property.
            ## @return a void
            ## 
            def units=(value)
                @units = value
            end
        end
    end
end
