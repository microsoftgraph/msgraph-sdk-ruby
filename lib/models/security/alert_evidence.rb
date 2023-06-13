require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class AlertEvidence
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @created_date_time
                ## 
                # The detailedRoles property
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
                # One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role Attacker.
                @roles
                ## 
                # Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets.
                @tags
                ## 
                # The verdict property
                @verdict
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
                ## Instantiates a new alertEvidence and sets the default values.
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
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a alert_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.security.amazonResourceEvidence"
                                return AmazonResourceEvidence.new
                            when "#microsoft.graph.security.analyzedMessageEvidence"
                                return AnalyzedMessageEvidence.new
                            when "#microsoft.graph.security.azureResourceEvidence"
                                return AzureResourceEvidence.new
                            when "#microsoft.graph.security.cloudApplicationEvidence"
                                return CloudApplicationEvidence.new
                            when "#microsoft.graph.security.deviceEvidence"
                                return DeviceEvidence.new
                            when "#microsoft.graph.security.fileEvidence"
                                return FileEvidence.new
                            when "#microsoft.graph.security.googleCloudResourceEvidence"
                                return GoogleCloudResourceEvidence.new
                            when "#microsoft.graph.security.ipEvidence"
                                return IpEvidence.new
                            when "#microsoft.graph.security.mailboxEvidence"
                                return MailboxEvidence.new
                            when "#microsoft.graph.security.mailClusterEvidence"
                                return MailClusterEvidence.new
                            when "#microsoft.graph.security.oauthApplicationEvidence"
                                return OauthApplicationEvidence.new
                            when "#microsoft.graph.security.processEvidence"
                                return ProcessEvidence.new
                            when "#microsoft.graph.security.registryKeyEvidence"
                                return RegistryKeyEvidence.new
                            when "#microsoft.graph.security.registryValueEvidence"
                                return RegistryValueEvidence.new
                            when "#microsoft.graph.security.securityGroupEvidence"
                                return SecurityGroupEvidence.new
                            when "#microsoft.graph.security.urlEvidence"
                                return UrlEvidence.new
                            when "#microsoft.graph.security.userEvidence"
                                return UserEvidence.new
                        end
                    end
                    return AlertEvidence.new
                end
                ## 
                ## Gets the detailedRoles property value. The detailedRoles property
                ## @return a string
                ## 
                def detailed_roles
                    return @detailed_roles
                end
                ## 
                ## Sets the detailedRoles property value. The detailedRoles property
                ## @param value Value to set for the detailed_roles property.
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
                        "remediationStatus" => lambda {|n| @remediation_status = n.get_enum_value(MicrosoftGraph::Models::Security::EvidenceRemediationStatus) },
                        "remediationStatusDetails" => lambda {|n| @remediation_status_details = n.get_string_value() },
                        "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EvidenceRole.create_from_discriminator_value(pn) }) },
                        "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                        "verdict" => lambda {|n| @verdict = n.get_enum_value(MicrosoftGraph::Models::Security::EvidenceVerdict) },
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
                ## Gets the remediationStatus property value. The remediationStatus property
                ## @return a evidence_remediation_status
                ## 
                def remediation_status
                    return @remediation_status
                end
                ## 
                ## Sets the remediationStatus property value. The remediationStatus property
                ## @param value Value to set for the remediation_status property.
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
                ## @param value Value to set for the remediation_status_details property.
                ## @return a void
                ## 
                def remediation_status_details=(value)
                    @remediation_status_details = value
                end
                ## 
                ## Gets the roles property value. One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role Attacker.
                ## @return a evidence_role
                ## 
                def roles
                    return @roles
                end
                ## 
                ## Sets the roles property value. One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role Attacker.
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
                ## Gets the tags property value. Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets.
                ## @return a string
                ## 
                def tags
                    return @tags
                end
                ## 
                ## Sets the tags property value. Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets.
                ## @param value Value to set for the tags property.
                ## @return a void
                ## 
                def tags=(value)
                    @tags = value
                end
                ## 
                ## Gets the verdict property value. The verdict property
                ## @return a evidence_verdict
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
end
