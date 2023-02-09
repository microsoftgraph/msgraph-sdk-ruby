require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ImportedWindowsAutopilotDeviceIdentityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Device error code reported by Device Directory Service(DDS).
            @device_error_code
            ## 
            # Device error name reported by Device Directory Service(DDS).
            @device_error_name
            ## 
            # The deviceImportStatus property
            @device_import_status
            ## 
            # Device Registration ID for successfully added device reported by Device Directory Service(DDS).
            @device_registration_id
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new importedWindowsAutopilotDeviceIdentityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a imported_windows_autopilot_device_identity_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ImportedWindowsAutopilotDeviceIdentityState.new
            end
            ## 
            ## Gets the deviceErrorCode property value. Device error code reported by Device Directory Service(DDS).
            ## @return a integer
            ## 
            def device_error_code
                return @device_error_code
            end
            ## 
            ## Sets the deviceErrorCode property value. Device error code reported by Device Directory Service(DDS).
            ## @param value Value to set for the device_error_code property.
            ## @return a void
            ## 
            def device_error_code=(value)
                @device_error_code = value
            end
            ## 
            ## Gets the deviceErrorName property value. Device error name reported by Device Directory Service(DDS).
            ## @return a string
            ## 
            def device_error_name
                return @device_error_name
            end
            ## 
            ## Sets the deviceErrorName property value. Device error name reported by Device Directory Service(DDS).
            ## @param value Value to set for the device_error_name property.
            ## @return a void
            ## 
            def device_error_name=(value)
                @device_error_name = value
            end
            ## 
            ## Gets the deviceImportStatus property value. The deviceImportStatus property
            ## @return a imported_windows_autopilot_device_identity_import_status
            ## 
            def device_import_status
                return @device_import_status
            end
            ## 
            ## Sets the deviceImportStatus property value. The deviceImportStatus property
            ## @param value Value to set for the device_import_status property.
            ## @return a void
            ## 
            def device_import_status=(value)
                @device_import_status = value
            end
            ## 
            ## Gets the deviceRegistrationId property value. Device Registration ID for successfully added device reported by Device Directory Service(DDS).
            ## @return a string
            ## 
            def device_registration_id
                return @device_registration_id
            end
            ## 
            ## Sets the deviceRegistrationId property value. Device Registration ID for successfully added device reported by Device Directory Service(DDS).
            ## @param value Value to set for the device_registration_id property.
            ## @return a void
            ## 
            def device_registration_id=(value)
                @device_registration_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceErrorCode" => lambda {|n| @device_error_code = n.get_number_value() },
                    "deviceErrorName" => lambda {|n| @device_error_name = n.get_string_value() },
                    "deviceImportStatus" => lambda {|n| @device_import_status = n.get_enum_value(MicrosoftGraph::Models::ImportedWindowsAutopilotDeviceIdentityImportStatus) },
                    "deviceRegistrationId" => lambda {|n| @device_registration_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_number_value("deviceErrorCode", @device_error_code)
                writer.write_string_value("deviceErrorName", @device_error_name)
                writer.write_enum_value("deviceImportStatus", @device_import_status)
                writer.write_string_value("deviceRegistrationId", @device_registration_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
