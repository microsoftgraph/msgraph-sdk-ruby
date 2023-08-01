require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Count of devices with malware for each OS version
        class OsVersionCount
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of devices with malware for the OS version
            @device_count
            ## 
            # The Timestamp of the last update for the device count in UTC
            @last_update_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # OS version
            @os_version
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
            ## Instantiates a new osVersionCount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a os_version_count
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OsVersionCount.new
            end
            ## 
            ## Gets the deviceCount property value. Count of devices with malware for the OS version
            ## @return a integer
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. Count of devices with malware for the OS version
            ## @param value Value to set for the deviceCount property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                    "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastUpdateDateTime property value. The Timestamp of the last update for the device count in UTC
            ## @return a date_time
            ## 
            def last_update_date_time
                return @last_update_date_time
            end
            ## 
            ## Sets the lastUpdateDateTime property value. The Timestamp of the last update for the device count in UTC
            ## @param value Value to set for the lastUpdateDateTime property.
            ## @return a void
            ## 
            def last_update_date_time=(value)
                @last_update_date_time = value
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
            ## Gets the osVersion property value. OS version
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. OS version
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("deviceCount", @device_count)
                writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("osVersion", @os_version)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
