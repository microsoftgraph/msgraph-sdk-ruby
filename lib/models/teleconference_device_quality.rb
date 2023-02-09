require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeleconferenceDeviceQuality
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A unique identifier for all  the participant calls in a conference or a unique identifier for two participant calls in P2P call. This needs to be copied over from Microsoft.Graph.Call.CallChainId.
            @call_chain_id
            ## 
            # A geo-region where the service is deployed, such as ProdNoam.
            @cloud_service_deployment_environment
            ## 
            # A unique deployment identifier assigned by Azure.
            @cloud_service_deployment_id
            ## 
            # The Azure deployed cloud service instance name, such as FrontEnd_IN_3.
            @cloud_service_instance_name
            ## 
            # The Azure deployed cloud service name, such as contoso.cloudapp.net.
            @cloud_service_name
            ## 
            # Any additional description, such as VTC Bldg 30/21.
            @device_description
            ## 
            # The user media agent name, such as Cisco SX80.
            @device_name
            ## 
            # A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.
            @media_leg_id
            ## 
            # The list of media qualities in a media session (call), such as audio quality, video quality, and/or screen sharing quality.
            @media_quality_list
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A unique identifier for a specific participant in a conference. The CVI partner needs to copy over Call.MyParticipantId to this property.
            @participant_id
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
            ## Gets the callChainId property value. A unique identifier for all  the participant calls in a conference or a unique identifier for two participant calls in P2P call. This needs to be copied over from Microsoft.Graph.Call.CallChainId.
            ## @return a guid
            ## 
            def call_chain_id
                return @call_chain_id
            end
            ## 
            ## Sets the callChainId property value. A unique identifier for all  the participant calls in a conference or a unique identifier for two participant calls in P2P call. This needs to be copied over from Microsoft.Graph.Call.CallChainId.
            ## @param value Value to set for the call_chain_id property.
            ## @return a void
            ## 
            def call_chain_id=(value)
                @call_chain_id = value
            end
            ## 
            ## Gets the cloudServiceDeploymentEnvironment property value. A geo-region where the service is deployed, such as ProdNoam.
            ## @return a string
            ## 
            def cloud_service_deployment_environment
                return @cloud_service_deployment_environment
            end
            ## 
            ## Sets the cloudServiceDeploymentEnvironment property value. A geo-region where the service is deployed, such as ProdNoam.
            ## @param value Value to set for the cloud_service_deployment_environment property.
            ## @return a void
            ## 
            def cloud_service_deployment_environment=(value)
                @cloud_service_deployment_environment = value
            end
            ## 
            ## Gets the cloudServiceDeploymentId property value. A unique deployment identifier assigned by Azure.
            ## @return a string
            ## 
            def cloud_service_deployment_id
                return @cloud_service_deployment_id
            end
            ## 
            ## Sets the cloudServiceDeploymentId property value. A unique deployment identifier assigned by Azure.
            ## @param value Value to set for the cloud_service_deployment_id property.
            ## @return a void
            ## 
            def cloud_service_deployment_id=(value)
                @cloud_service_deployment_id = value
            end
            ## 
            ## Gets the cloudServiceInstanceName property value. The Azure deployed cloud service instance name, such as FrontEnd_IN_3.
            ## @return a string
            ## 
            def cloud_service_instance_name
                return @cloud_service_instance_name
            end
            ## 
            ## Sets the cloudServiceInstanceName property value. The Azure deployed cloud service instance name, such as FrontEnd_IN_3.
            ## @param value Value to set for the cloud_service_instance_name property.
            ## @return a void
            ## 
            def cloud_service_instance_name=(value)
                @cloud_service_instance_name = value
            end
            ## 
            ## Gets the cloudServiceName property value. The Azure deployed cloud service name, such as contoso.cloudapp.net.
            ## @return a string
            ## 
            def cloud_service_name
                return @cloud_service_name
            end
            ## 
            ## Sets the cloudServiceName property value. The Azure deployed cloud service name, such as contoso.cloudapp.net.
            ## @param value Value to set for the cloud_service_name property.
            ## @return a void
            ## 
            def cloud_service_name=(value)
                @cloud_service_name = value
            end
            ## 
            ## Instantiates a new teleconferenceDeviceQuality and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teleconference_device_quality
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeleconferenceDeviceQuality.new
            end
            ## 
            ## Gets the deviceDescription property value. Any additional description, such as VTC Bldg 30/21.
            ## @return a string
            ## 
            def device_description
                return @device_description
            end
            ## 
            ## Sets the deviceDescription property value. Any additional description, such as VTC Bldg 30/21.
            ## @param value Value to set for the device_description property.
            ## @return a void
            ## 
            def device_description=(value)
                @device_description = value
            end
            ## 
            ## Gets the deviceName property value. The user media agent name, such as Cisco SX80.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The user media agent name, such as Cisco SX80.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "callChainId" => lambda {|n| @call_chain_id = n.get_guid_value() },
                    "cloudServiceDeploymentEnvironment" => lambda {|n| @cloud_service_deployment_environment = n.get_string_value() },
                    "cloudServiceDeploymentId" => lambda {|n| @cloud_service_deployment_id = n.get_string_value() },
                    "cloudServiceInstanceName" => lambda {|n| @cloud_service_instance_name = n.get_string_value() },
                    "cloudServiceName" => lambda {|n| @cloud_service_name = n.get_string_value() },
                    "deviceDescription" => lambda {|n| @device_description = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "mediaLegId" => lambda {|n| @media_leg_id = n.get_guid_value() },
                    "mediaQualityList" => lambda {|n| @media_quality_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeleconferenceDeviceMediaQuality.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "participantId" => lambda {|n| @participant_id = n.get_guid_value() },
                }
            end
            ## 
            ## Gets the mediaLegId property value. A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.
            ## @return a guid
            ## 
            def media_leg_id
                return @media_leg_id
            end
            ## 
            ## Sets the mediaLegId property value. A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.
            ## @param value Value to set for the media_leg_id property.
            ## @return a void
            ## 
            def media_leg_id=(value)
                @media_leg_id = value
            end
            ## 
            ## Gets the mediaQualityList property value. The list of media qualities in a media session (call), such as audio quality, video quality, and/or screen sharing quality.
            ## @return a teleconference_device_media_quality
            ## 
            def media_quality_list
                return @media_quality_list
            end
            ## 
            ## Sets the mediaQualityList property value. The list of media qualities in a media session (call), such as audio quality, video quality, and/or screen sharing quality.
            ## @param value Value to set for the media_quality_list property.
            ## @return a void
            ## 
            def media_quality_list=(value)
                @media_quality_list = value
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
            ## Gets the participantId property value. A unique identifier for a specific participant in a conference. The CVI partner needs to copy over Call.MyParticipantId to this property.
            ## @return a guid
            ## 
            def participant_id
                return @participant_id
            end
            ## 
            ## Sets the participantId property value. A unique identifier for a specific participant in a conference. The CVI partner needs to copy over Call.MyParticipantId to this property.
            ## @param value Value to set for the participant_id property.
            ## @return a void
            ## 
            def participant_id=(value)
                @participant_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_guid_value("callChainId", @call_chain_id)
                writer.write_string_value("cloudServiceDeploymentEnvironment", @cloud_service_deployment_environment)
                writer.write_string_value("cloudServiceDeploymentId", @cloud_service_deployment_id)
                writer.write_string_value("cloudServiceInstanceName", @cloud_service_instance_name)
                writer.write_string_value("cloudServiceName", @cloud_service_name)
                writer.write_string_value("deviceDescription", @device_description)
                writer.write_string_value("deviceName", @device_name)
                writer.write_guid_value("mediaLegId", @media_leg_id)
                writer.write_collection_of_object_values("mediaQualityList", @media_quality_list)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_guid_value("participantId", @participant_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
