require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ImportedWindowsAutopilotDeviceIdentityUpload < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # DateTime when the entity is created.
            @created_date_time_utc
            ## 
            # Collection of all Autopilot devices as a part of this upload.
            @device_identities
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new ImportedWindowsAutopilotDeviceIdentityUpload and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTimeUtc property value. DateTime when the entity is created.
            ## @return a date_time
            ## 
            def created_date_time_utc
                return @created_date_time_utc
            end
            ## 
            ## Sets the createdDateTimeUtc property value. DateTime when the entity is created.
            ## @param value Value to set for the created_date_time_utc property.
            ## @return a void
            ## 
            def created_date_time_utc=(value)
                @created_date_time_utc = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a imported_windows_autopilot_device_identity_upload
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ImportedWindowsAutopilotDeviceIdentityUpload.new
            end
            ## 
            ## Gets the deviceIdentities property value. Collection of all Autopilot devices as a part of this upload.
            ## @return a imported_windows_autopilot_device_identity
            ## 
            def device_identities
                return @device_identities
            end
            ## 
            ## Sets the deviceIdentities property value. Collection of all Autopilot devices as a part of this upload.
            ## @param value Value to set for the device_identities property.
            ## @return a void
            ## 
            def device_identities=(value)
                @device_identities = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTimeUtc" => lambda {|n| @created_date_time_utc = n.get_date_time_value() },
                    "deviceIdentities" => lambda {|n| @device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ImportedWindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ImportedWindowsAutopilotDeviceIdentityUploadStatus) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTimeUtc", @created_date_time_utc)
                writer.write_collection_of_object_values("deviceIdentities", @device_identities)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a imported_windows_autopilot_device_identity_upload_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
