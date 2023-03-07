require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/imported_windows_autopilot_device_identity'
require_relative '../../device_management'
require_relative '../imported_windows_autopilot_device_identities'
require_relative './import'

module MicrosoftGraph
    module DeviceManagement
        module ImportedWindowsAutopilotDeviceIdentities
            module Import
                class ImportPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The importedWindowsAutopilotDeviceIdentities property
                    @imported_windows_autopilot_device_identities
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
                    ## Instantiates a new importPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a import_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ImportPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "importedWindowsAutopilotDeviceIdentities" => lambda {|n| @imported_windows_autopilot_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ImportedWindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the importedWindowsAutopilotDeviceIdentities property value. The importedWindowsAutopilotDeviceIdentities property
                    ## @return a imported_windows_autopilot_device_identity
                    ## 
                    def imported_windows_autopilot_device_identities
                        return @imported_windows_autopilot_device_identities
                    end
                    ## 
                    ## Sets the importedWindowsAutopilotDeviceIdentities property value. The importedWindowsAutopilotDeviceIdentities property
                    ## @param value Value to set for the imported_windows_autopilot_device_identities property.
                    ## @return a void
                    ## 
                    def imported_windows_autopilot_device_identities=(value)
                        @imported_windows_autopilot_device_identities = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_object_values("importedWindowsAutopilotDeviceIdentities", @imported_windows_autopilot_device_identities)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
