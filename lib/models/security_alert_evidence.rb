require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Detailed description of the entity role/s in an alert. Values are free-form.
            @detailed_roles
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The remediationStatus property
            @remediation_status
            ## 
            # Details about the remediation status.
            @remediation_status_details
            ## 
            # The role/s that an evidence entity represents in an alert, for example, an IP address that is associated with an attacker has the evidence role Attacker.
            @roles
            ## 
            # Array of custom tags associated with an evidence instance, for example, to denote a group of devices, high-value assets, etc.
            @tags
            ## 
            # The verdict property
            @verdict
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new securityAlertEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_alert_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.amazonResourceEvidence"
                            return SecurityAmazonResourceEvidence.new
                        when "#microsoft.graph.security.analyzedMessageEvidence"
                            return SecurityAnalyzedMessageEvidence.new
                        when "#microsoft.graph.security.azureResourceEvidence"
                            return SecurityAzureResourceEvidence.new
                        when "#microsoft.graph.security.blobContainerEvidence"
                            return SecurityBlobContainerEvidence.new
                        when "#microsoft.graph.security.blobEvidence"
                            return SecurityBlobEvidence.new
                        when "#microsoft.graph.security.cloudApplicationEvidence"
                            return SecurityCloudApplicationEvidence.new
                        when "#microsoft.graph.security.containerEvidence"
                            return SecurityContainerEvidence.new
                        when "#microsoft.graph.security.containerImageEvidence"
                            return SecurityContainerImageEvidence.new
                        when "#microsoft.graph.security.containerRegistryEvidence"
                            return SecurityContainerRegistryEvidence.new
                        when "#microsoft.graph.security.deviceEvidence"
                            return SecurityDeviceEvidence.new
                        when "#microsoft.graph.security.fileEvidence"
                            return SecurityFileEvidence.new
                        when "#microsoft.graph.security.googleCloudResourceEvidence"
                            return SecurityGoogleCloudResourceEvidence.new
                        when "#microsoft.graph.security.ipEvidence"
                            return SecurityIpEvidence.new
                        when "#microsoft.graph.security.kubernetesClusterEvidence"
                            return SecurityKubernetesClusterEvidence.new
                        when "#microsoft.graph.security.kubernetesControllerEvidence"
                            return SecurityKubernetesControllerEvidence.new
                        when "#microsoft.graph.security.kubernetesNamespaceEvidence"
                            return SecurityKubernetesNamespaceEvidence.new
                        when "#microsoft.graph.security.kubernetesPodEvidence"
                            return SecurityKubernetesPodEvidence.new
                        when "#microsoft.graph.security.kubernetesSecretEvidence"
                            return SecurityKubernetesSecretEvidence.new
                        when "#microsoft.graph.security.kubernetesServiceAccountEvidence"
                            return SecurityKubernetesServiceAccountEvidence.new
                        when "#microsoft.graph.security.kubernetesServiceEvidence"
                            return SecurityKubernetesServiceEvidence.new
                        when "#microsoft.graph.security.mailboxEvidence"
                            return SecurityMailboxEvidence.new
                        when "#microsoft.graph.security.mailClusterEvidence"
                            return SecurityMailClusterEvidence.new
                        when "#microsoft.graph.security.processEvidence"
                            return SecurityProcessEvidence.new
                        when "#microsoft.graph.security.registryKeyEvidence"
                            return SecurityRegistryKeyEvidence.new
                        when "#microsoft.graph.security.registryValueEvidence"
                            return SecurityRegistryValueEvidence.new
                        when "#microsoft.graph.security.securityGroupEvidence"
                            return SecuritySecurityGroupEvidence.new
                        when "#microsoft.graph.security.urlEvidence"
                            return SecurityUrlEvidence.new
                        when "#microsoft.graph.security.userEvidence"
                            return SecurityUserEvidence.new
                    end
                end
                return SecurityAlertEvidence.new
            end
            ## 
            ## Gets the detailedRoles property value. Detailed description of the entity role/s in an alert. Values are free-form.
            ## @return a string
            ## 
            def detailed_roles
                return @detailed_roles
            end
            ## 
            ## Sets the detailedRoles property value. Detailed description of the entity role/s in an alert. Values are free-form.
            ## @param value Value to set for the detailedRoles property.
            ## @return a void
            ## 
            def detailed_roles=(value)
                @detailed_roles = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "detailedRoles" => lambda {|n| @detailed_roles = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remediationStatus" => lambda {|n| @remediation_status = n.get_enum_value(MicrosoftGraph::Models::SecurityEvidenceRemediationStatus) },
                    "remediationStatusDetails" => lambda {|n| @remediation_status_details = n.get_string_value() },
                    "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityEvidenceRole.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "verdict" => lambda {|n| @verdict = n.get_enum_value(MicrosoftGraph::Models::SecurityEvidenceVerdict) },
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
            ## Gets the remediationStatus property value. The remediationStatus property
            ## @return a security_evidence_remediation_status
            ## 
            def remediation_status
                return @remediation_status
            end
            ## 
            ## Sets the remediationStatus property value. The remediationStatus property
            ## @param value Value to set for the remediationStatus property.
            ## @return a void
            ## 
            def remediation_status=(value)
                @remediation_status = value
            end
            ## 
            ## Gets the remediationStatusDetails property value. Details about the remediation status.
            ## @return a string
            ## 
            def remediation_status_details
                return @remediation_status_details
            end
            ## 
            ## Sets the remediationStatusDetails property value. Details about the remediation status.
            ## @param value Value to set for the remediationStatusDetails property.
            ## @return a void
            ## 
            def remediation_status_details=(value)
                @remediation_status_details = value
            end
            ## 
            ## Gets the roles property value. The role/s that an evidence entity represents in an alert, for example, an IP address that is associated with an attacker has the evidence role Attacker.
            ## @return a security_evidence_role
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. The role/s that an evidence entity represents in an alert, for example, an IP address that is associated with an attacker has the evidence role Attacker.
            ## @param value Value to set for the roles property.
            ## @return a void
            ## 
            def roles=(value)
                @roles = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_primitive_values("detailedRoles", @detailed_roles)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("remediationStatus", @remediation_status)
                writer.write_string_value("remediationStatusDetails", @remediation_status_details)
                writer.write_collection_of_object_values("roles", @roles)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_enum_value("verdict", @verdict)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tags property value. Array of custom tags associated with an evidence instance, for example, to denote a group of devices, high-value assets, etc.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Array of custom tags associated with an evidence instance, for example, to denote a group of devices, high-value assets, etc.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the verdict property value. The verdict property
            ## @return a security_evidence_verdict
            ## 
            def verdict
                return @verdict
            end
            ## 
            ## Sets the verdict property value. The verdict property
            ## @param value Value to set for the verdict property.
            ## @return a void
            ## 
            def verdict=(value)
                @verdict = value
            end
        end
    end
end
