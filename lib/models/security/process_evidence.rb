require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class ProcessEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The status of the detection.The possible values are: detected, blocked, prevented, unknownFutureValue.
                @detection_status
                ## 
                # Image file details.
                @image_file
                ## 
                # A unique identifier assigned to a device by Microsoft Defender for Endpoint.
                @mde_device_id
                ## 
                # Date and time when the parent of the process was created.
                @parent_process_creation_date_time
                ## 
                # Process ID (PID) of the parent process that spawned the process.
                @parent_process_id
                ## 
                # Parent process image file details.
                @parent_process_image_file
                ## 
                # Command line used to create the new process.
                @process_command_line
                ## 
                # Date and time the process was created.
                @process_creation_date_time
                ## 
                # Process ID (PID) of the newly created process.
                @process_id
                ## 
                # User details of the user that ran the process.
                @user_account
                ## 
                ## Instantiates a new ProcessEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a process_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ProcessEvidence.new
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
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "detectionStatus" => lambda {|n| @detection_status = n.get_enum_value(MicrosoftGraph::Models::Security::DetectionStatus) },
                        "imageFile" => lambda {|n| @image_file = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::FileDetails.create_from_discriminator_value(pn) }) },
                        "mdeDeviceId" => lambda {|n| @mde_device_id = n.get_string_value() },
                        "parentProcessCreationDateTime" => lambda {|n| @parent_process_creation_date_time = n.get_date_time_value() },
                        "parentProcessId" => lambda {|n| @parent_process_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "parentProcessImageFile" => lambda {|n| @parent_process_image_file = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::FileDetails.create_from_discriminator_value(pn) }) },
                        "processCommandLine" => lambda {|n| @process_command_line = n.get_string_value() },
                        "processCreationDateTime" => lambda {|n| @process_creation_date_time = n.get_date_time_value() },
                        "processId" => lambda {|n| @process_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "userAccount" => lambda {|n| @user_account = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::UserAccount.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the imageFile property value. Image file details.
                ## @return a file_details
                ## 
                def image_file
                    return @image_file
                end
                ## 
                ## Sets the imageFile property value. Image file details.
                ## @param value Value to set for the image_file property.
                ## @return a void
                ## 
                def image_file=(value)
                    @image_file = value
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
                ## Gets the parentProcessCreationDateTime property value. Date and time when the parent of the process was created.
                ## @return a date_time
                ## 
                def parent_process_creation_date_time
                    return @parent_process_creation_date_time
                end
                ## 
                ## Sets the parentProcessCreationDateTime property value. Date and time when the parent of the process was created.
                ## @param value Value to set for the parent_process_creation_date_time property.
                ## @return a void
                ## 
                def parent_process_creation_date_time=(value)
                    @parent_process_creation_date_time = value
                end
                ## 
                ## Gets the parentProcessId property value. Process ID (PID) of the parent process that spawned the process.
                ## @return a int64
                ## 
                def parent_process_id
                    return @parent_process_id
                end
                ## 
                ## Sets the parentProcessId property value. Process ID (PID) of the parent process that spawned the process.
                ## @param value Value to set for the parent_process_id property.
                ## @return a void
                ## 
                def parent_process_id=(value)
                    @parent_process_id = value
                end
                ## 
                ## Gets the parentProcessImageFile property value. Parent process image file details.
                ## @return a file_details
                ## 
                def parent_process_image_file
                    return @parent_process_image_file
                end
                ## 
                ## Sets the parentProcessImageFile property value. Parent process image file details.
                ## @param value Value to set for the parent_process_image_file property.
                ## @return a void
                ## 
                def parent_process_image_file=(value)
                    @parent_process_image_file = value
                end
                ## 
                ## Gets the processCommandLine property value. Command line used to create the new process.
                ## @return a string
                ## 
                def process_command_line
                    return @process_command_line
                end
                ## 
                ## Sets the processCommandLine property value. Command line used to create the new process.
                ## @param value Value to set for the process_command_line property.
                ## @return a void
                ## 
                def process_command_line=(value)
                    @process_command_line = value
                end
                ## 
                ## Gets the processCreationDateTime property value. Date and time the process was created.
                ## @return a date_time
                ## 
                def process_creation_date_time
                    return @process_creation_date_time
                end
                ## 
                ## Sets the processCreationDateTime property value. Date and time the process was created.
                ## @param value Value to set for the process_creation_date_time property.
                ## @return a void
                ## 
                def process_creation_date_time=(value)
                    @process_creation_date_time = value
                end
                ## 
                ## Gets the processId property value. Process ID (PID) of the newly created process.
                ## @return a int64
                ## 
                def process_id
                    return @process_id
                end
                ## 
                ## Sets the processId property value. Process ID (PID) of the newly created process.
                ## @param value Value to set for the process_id property.
                ## @return a void
                ## 
                def process_id=(value)
                    @process_id = value
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
                    writer.write_object_value("imageFile", @image_file)
                    writer.write_string_value("mdeDeviceId", @mde_device_id)
                    writer.write_date_time_value("parentProcessCreationDateTime", @parent_process_creation_date_time)
                    writer.write_object_value("parentProcessId", @parent_process_id)
                    writer.write_object_value("parentProcessImageFile", @parent_process_image_file)
                    writer.write_string_value("processCommandLine", @process_command_line)
                    writer.write_date_time_value("processCreationDateTime", @process_creation_date_time)
                    writer.write_object_value("processId", @process_id)
                    writer.write_object_value("userAccount", @user_account)
                end
                ## 
                ## Gets the userAccount property value. User details of the user that ran the process.
                ## @return a user_account
                ## 
                def user_account
                    return @user_account
                end
                ## 
                ## Sets the userAccount property value. User details of the user that ran the process.
                ## @param value Value to set for the user_account property.
                ## @return a void
                ## 
                def user_account=(value)
                    @user_account = value
                end
            end
        end
    end
end
