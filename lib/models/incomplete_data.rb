require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IncompleteData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The service does not have source data before the specified time.
            @missing_data_before_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Some data was not recorded due to excessive activity.
            @was_throttled
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
            ## Instantiates a new incompleteData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a incomplete_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IncompleteData.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "missingDataBeforeDateTime" => lambda {|n| @missing_data_before_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "wasThrottled" => lambda {|n| @was_throttled = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the missingDataBeforeDateTime property value. The service does not have source data before the specified time.
            ## @return a date_time
            ## 
            def missing_data_before_date_time
                return @missing_data_before_date_time
            end
            ## 
            ## Sets the missingDataBeforeDateTime property value. The service does not have source data before the specified time.
            ## @param value Value to set for the missing_data_before_date_time property.
            ## @return a void
            ## 
            def missing_data_before_date_time=(value)
                @missing_data_before_date_time = value
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
                writer.write_date_time_value("missingDataBeforeDateTime", @missing_data_before_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("wasThrottled", @was_throttled)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the wasThrottled property value. Some data was not recorded due to excessive activity.
            ## @return a boolean
            ## 
            def was_throttled
                return @was_throttled
            end
            ## 
            ## Sets the wasThrottled property value. Some data was not recorded due to excessive activity.
            ## @param value Value to set for the was_throttled property.
            ## @return a void
            ## 
            def was_throttled=(value)
                @was_throttled = value
            end
        end
    end
end
