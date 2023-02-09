require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties used to determine when to offer an app to devices and when to install the app on devices.
        class MobileAppInstallTimeSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The time at which the app should be installed.
            @deadline_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The time at which the app should be available for installation.
            @start_date_time
            ## 
            # Whether the local device time or UTC time should be used when determining the available and deadline times.
            @use_local_time
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
            ## Instantiates a new mobileAppInstallTimeSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_install_time_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppInstallTimeSettings.new
            end
            ## 
            ## Gets the deadlineDateTime property value. The time at which the app should be installed.
            ## @return a date_time
            ## 
            def deadline_date_time
                return @deadline_date_time
            end
            ## 
            ## Sets the deadlineDateTime property value. The time at which the app should be installed.
            ## @param value Value to set for the deadline_date_time property.
            ## @return a void
            ## 
            def deadline_date_time=(value)
                @deadline_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deadlineDateTime" => lambda {|n| @deadline_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "useLocalTime" => lambda {|n| @use_local_time = n.get_boolean_value() },
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
                writer.write_date_time_value("deadlineDateTime", @deadline_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_boolean_value("useLocalTime", @use_local_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. The time at which the app should be available for installation.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The time at which the app should be available for installation.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the useLocalTime property value. Whether the local device time or UTC time should be used when determining the available and deadline times.
            ## @return a boolean
            ## 
            def use_local_time
                return @use_local_time
            end
            ## 
            ## Sets the useLocalTime property value. Whether the local device time or UTC time should be used when determining the available and deadline times.
            ## @param value Value to set for the use_local_time property.
            ## @return a void
            ## 
            def use_local_time=(value)
                @use_local_time = value
            end
        end
    end
end
