require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class FileEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The status of the detection.The possible values are: detected, blocked, prevented, unknownFutureValue.
                @detection_status
                ## 
                # The file details.
                @file_details
                ## 
                # A unique identifier assigned to a device by Microsoft Defender for Endpoint.
                @mde_device_id
                ## 
                ## Instantiates a new FileEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a file_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return FileEvidence.new
                end
                ## 
                ## Gets the detectionStatus property value. The status of the detection.The possible values are: detected, blocked, prevented, unknownFutureValue.
                ## @return a detection_status
                ## 
                def detection_status
                    return @detection_status
                end
                ## 
                ## Sets the detectionStatus property value. The status of the detection.The possible values are: detected, blocked, prevented, unknownFutureValue.
                ## @param value Value to set for the detection_status property.
                ## @return a void
                ## 
                def detection_status=(value)
                    @detection_status = value
                end
                ## 
                ## Gets the fileDetails property value. The file details.
                ## @return a file_details
                ## 
                def file_details
                    return @file_details
                end
                ## 
                ## Sets the fileDetails property value. The file details.
                ## @param value Value to set for the file_details property.
                ## @return a void
                ## 
                def file_details=(value)
                    @file_details = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "detectionStatus" => lambda {|n| @detection_status = n.get_enum_value(MicrosoftGraph::Models::Security::DetectionStatus) },
                        "fileDetails" => lambda {|n| @file_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::FileDetails.create_from_discriminator_value(pn) }) },
                        "mdeDeviceId" => lambda {|n| @mde_device_id = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the mdeDeviceId property value. A unique identifier assigned to a device by Microsoft Defender for Endpoint.
                ## @return a string
                ## 
                def mde_device_id
                    return @mde_device_id
                end
                ## 
                ## Sets the mdeDeviceId property value. A unique identifier assigned to a device by Microsoft Defender for Endpoint.
                ## @param value Value to set for the mde_device_id property.
                ## @return a void
                ## 
                def mde_device_id=(value)
                    @mde_device_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("detectionStatus", @detection_status)
                    writer.write_object_value("fileDetails", @file_details)
                    writer.write_string_value("mdeDeviceId", @mde_device_id)
                end
            end
        end
    end
end
