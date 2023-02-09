require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class Alert < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The adversary or activity group that is associated with this alert.
                @actor_display_name
                ## 
                # URL for the alert page in the Microsoft 365 Defender portal.
                @alert_web_url
                ## 
                # Owner of the alert, or null if no owner is assigned.
                @assigned_to
                ## 
                # The attack kill-chain category that the alert belongs to. Aligned with the MITRE ATT&CK framework.
                @category
                ## 
                # Specifies whether the alert represents a true threat. Possible values are: unknown, falsePositive, truePositive, benignPositive, unknownFutureValue.
                @classification
                ## 
                # Array of comments created by the Security Operations (SecOps) team during the alert management process.
                @comments
                ## 
                # Time when Microsoft 365 Defender created the alert.
                @created_date_time
                ## 
                # String value describing each alert.
                @description
                ## 
                # Detection technology or sensor that identified the notable component or activity.
                @detection_source
                ## 
                # The ID of the detector that triggered the alert.
                @detector_id
                ## 
                # Specifies the result of the investigation, whether the alert represents a true attack and if so, the nature of the attack. Possible values are: unknown, apt, malware, securityPersonnel, securityTesting, unwantedSoftware, other, multiStagedAttack, compromisedUser, phishing, maliciousUserActivity, clean, insufficientData, confirmedUserActivity, lineOfBusinessApplication, unknownFutureValue.
                @determination
                ## 
                # Collection of evidence related to the alert.
                @evidence
                ## 
                # The earliest activity associated with the alert.
                @first_activity_date_time
                ## 
                # Unique identifier to represent the incident this alert resource is associated with.
                @incident_id
                ## 
                # URL for the incident page in the Microsoft 365 Defender portal.
                @incident_web_url
                ## 
                # The oldest activity associated with the alert.
                @last_activity_date_time
                ## 
                # Time when the alert was last updated at Microsoft 365 Defender.
                @last_update_date_time
                ## 
                # The attack techniques, as aligned with the MITRE ATT&CK framework.
                @mitre_techniques
                ## 
                # The ID of the alert as it appears in the security provider product that generated the alert.
                @provider_alert_id
                ## 
                # Recommended response and remediation actions to take in the event this alert was generated.
                @recommended_actions
                ## 
                # Time when the alert was resolved.
                @resolved_date_time
                ## 
                # The serviceSource property
                @service_source
                ## 
                # The severity property
                @severity
                ## 
                # The status property
                @status
                ## 
                # The Azure Active Directory tenant the alert was created in.
                @tenant_id
                ## 
                # The threat associated with this alert.
                @threat_display_name
                ## 
                # Threat family associated with this alert.
                @threat_family_name
                ## 
                # Brief identifying string value describing the alert.
                @title
                ## 
                ## Gets the actorDisplayName property value. The adversary or activity group that is associated with this alert.
                ## @return a string
                ## 
                def actor_display_name
                    return @actor_display_name
                end
                ## 
                ## Sets the actorDisplayName property value. The adversary or activity group that is associated with this alert.
                ## @param value Value to set for the actor_display_name property.
                ## @return a void
                ## 
                def actor_display_name=(value)
                    @actor_display_name = value
                end
                ## 
                ## Gets the alertWebUrl property value. URL for the alert page in the Microsoft 365 Defender portal.
                ## @return a string
                ## 
                def alert_web_url
                    return @alert_web_url
                end
                ## 
                ## Sets the alertWebUrl property value. URL for the alert page in the Microsoft 365 Defender portal.
                ## @param value Value to set for the alert_web_url property.
                ## @return a void
                ## 
                def alert_web_url=(value)
                    @alert_web_url = value
                end
                ## 
                ## Gets the assignedTo property value. Owner of the alert, or null if no owner is assigned.
                ## @return a string
                ## 
                def assigned_to
                    return @assigned_to
                end
                ## 
                ## Sets the assignedTo property value. Owner of the alert, or null if no owner is assigned.
                ## @param value Value to set for the assigned_to property.
                ## @return a void
                ## 
                def assigned_to=(value)
                    @assigned_to = value
                end
                ## 
                ## Gets the category property value. The attack kill-chain category that the alert belongs to. Aligned with the MITRE ATT&CK framework.
                ## @return a string
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The attack kill-chain category that the alert belongs to. Aligned with the MITRE ATT&CK framework.
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Gets the classification property value. Specifies whether the alert represents a true threat. Possible values are: unknown, falsePositive, truePositive, benignPositive, unknownFutureValue.
                ## @return a alert_classification
                ## 
                def classification
                    return @classification
                end
                ## 
                ## Sets the classification property value. Specifies whether the alert represents a true threat. Possible values are: unknown, falsePositive, truePositive, benignPositive, unknownFutureValue.
                ## @param value Value to set for the classification property.
                ## @return a void
                ## 
                def classification=(value)
                    @classification = value
                end
                ## 
                ## Gets the comments property value. Array of comments created by the Security Operations (SecOps) team during the alert management process.
                ## @return a alert_comment
                ## 
                def comments
                    return @comments
                end
                ## 
                ## Sets the comments property value. Array of comments created by the Security Operations (SecOps) team during the alert management process.
                ## @param value Value to set for the comments property.
                ## @return a void
                ## 
                def comments=(value)
                    @comments = value
                end
                ## 
                ## Instantiates a new alert and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. Time when Microsoft 365 Defender created the alert.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. Time when Microsoft 365 Defender created the alert.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a alert
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Alert.new
                end
                ## 
                ## Gets the description property value. String value describing each alert.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. String value describing each alert.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the detectionSource property value. Detection technology or sensor that identified the notable component or activity.
                ## @return a detection_source
                ## 
                def detection_source
                    return @detection_source
                end
                ## 
                ## Sets the detectionSource property value. Detection technology or sensor that identified the notable component or activity.
                ## @param value Value to set for the detection_source property.
                ## @return a void
                ## 
                def detection_source=(value)
                    @detection_source = value
                end
                ## 
                ## Gets the detectorId property value. The ID of the detector that triggered the alert.
                ## @return a string
                ## 
                def detector_id
                    return @detector_id
                end
                ## 
                ## Sets the detectorId property value. The ID of the detector that triggered the alert.
                ## @param value Value to set for the detector_id property.
                ## @return a void
                ## 
                def detector_id=(value)
                    @detector_id = value
                end
                ## 
                ## Gets the determination property value. Specifies the result of the investigation, whether the alert represents a true attack and if so, the nature of the attack. Possible values are: unknown, apt, malware, securityPersonnel, securityTesting, unwantedSoftware, other, multiStagedAttack, compromisedUser, phishing, maliciousUserActivity, clean, insufficientData, confirmedUserActivity, lineOfBusinessApplication, unknownFutureValue.
                ## @return a alert_determination
                ## 
                def determination
                    return @determination
                end
                ## 
                ## Sets the determination property value. Specifies the result of the investigation, whether the alert represents a true attack and if so, the nature of the attack. Possible values are: unknown, apt, malware, securityPersonnel, securityTesting, unwantedSoftware, other, multiStagedAttack, compromisedUser, phishing, maliciousUserActivity, clean, insufficientData, confirmedUserActivity, lineOfBusinessApplication, unknownFutureValue.
                ## @param value Value to set for the determination property.
                ## @return a void
                ## 
                def determination=(value)
                    @determination = value
                end
                ## 
                ## Gets the evidence property value. Collection of evidence related to the alert.
                ## @return a alert_evidence
                ## 
                def evidence
                    return @evidence
                end
                ## 
                ## Sets the evidence property value. Collection of evidence related to the alert.
                ## @param value Value to set for the evidence property.
                ## @return a void
                ## 
                def evidence=(value)
                    @evidence = value
                end
                ## 
                ## Gets the firstActivityDateTime property value. The earliest activity associated with the alert.
                ## @return a date_time
                ## 
                def first_activity_date_time
                    return @first_activity_date_time
                end
                ## 
                ## Sets the firstActivityDateTime property value. The earliest activity associated with the alert.
                ## @param value Value to set for the first_activity_date_time property.
                ## @return a void
                ## 
                def first_activity_date_time=(value)
                    @first_activity_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "actorDisplayName" => lambda {|n| @actor_display_name = n.get_string_value() },
                        "alertWebUrl" => lambda {|n| @alert_web_url = n.get_string_value() },
                        "assignedTo" => lambda {|n| @assigned_to = n.get_string_value() },
                        "category" => lambda {|n| @category = n.get_string_value() },
                        "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraph::Models::Security::AlertClassification) },
                        "comments" => lambda {|n| @comments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::AlertComment.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "detectionSource" => lambda {|n| @detection_source = n.get_enum_value(MicrosoftGraph::Models::Security::DetectionSource) },
                        "detectorId" => lambda {|n| @detector_id = n.get_string_value() },
                        "determination" => lambda {|n| @determination = n.get_enum_value(MicrosoftGraph::Models::Security::AlertDetermination) },
                        "evidence" => lambda {|n| @evidence = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::AlertEvidence.create_from_discriminator_value(pn) }) },
                        "firstActivityDateTime" => lambda {|n| @first_activity_date_time = n.get_date_time_value() },
                        "incidentId" => lambda {|n| @incident_id = n.get_string_value() },
                        "incidentWebUrl" => lambda {|n| @incident_web_url = n.get_string_value() },
                        "lastActivityDateTime" => lambda {|n| @last_activity_date_time = n.get_date_time_value() },
                        "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                        "mitreTechniques" => lambda {|n| @mitre_techniques = n.get_collection_of_primitive_values(String) },
                        "providerAlertId" => lambda {|n| @provider_alert_id = n.get_string_value() },
                        "recommendedActions" => lambda {|n| @recommended_actions = n.get_string_value() },
                        "resolvedDateTime" => lambda {|n| @resolved_date_time = n.get_date_time_value() },
                        "serviceSource" => lambda {|n| @service_source = n.get_enum_value(MicrosoftGraph::Models::Security::ServiceSource) },
                        "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::Security::AlertSeverity) },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::Security::AlertStatus) },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "threatDisplayName" => lambda {|n| @threat_display_name = n.get_string_value() },
                        "threatFamilyName" => lambda {|n| @threat_family_name = n.get_string_value() },
                        "title" => lambda {|n| @title = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the incidentId property value. Unique identifier to represent the incident this alert resource is associated with.
                ## @return a string
                ## 
                def incident_id
                    return @incident_id
                end
                ## 
                ## Sets the incidentId property value. Unique identifier to represent the incident this alert resource is associated with.
                ## @param value Value to set for the incident_id property.
                ## @return a void
                ## 
                def incident_id=(value)
                    @incident_id = value
                end
                ## 
                ## Gets the incidentWebUrl property value. URL for the incident page in the Microsoft 365 Defender portal.
                ## @return a string
                ## 
                def incident_web_url
                    return @incident_web_url
                end
                ## 
                ## Sets the incidentWebUrl property value. URL for the incident page in the Microsoft 365 Defender portal.
                ## @param value Value to set for the incident_web_url property.
                ## @return a void
                ## 
                def incident_web_url=(value)
                    @incident_web_url = value
                end
                ## 
                ## Gets the lastActivityDateTime property value. The oldest activity associated with the alert.
                ## @return a date_time
                ## 
                def last_activity_date_time
                    return @last_activity_date_time
                end
                ## 
                ## Sets the lastActivityDateTime property value. The oldest activity associated with the alert.
                ## @param value Value to set for the last_activity_date_time property.
                ## @return a void
                ## 
                def last_activity_date_time=(value)
                    @last_activity_date_time = value
                end
                ## 
                ## Gets the lastUpdateDateTime property value. Time when the alert was last updated at Microsoft 365 Defender.
                ## @return a date_time
                ## 
                def last_update_date_time
                    return @last_update_date_time
                end
                ## 
                ## Sets the lastUpdateDateTime property value. Time when the alert was last updated at Microsoft 365 Defender.
                ## @param value Value to set for the last_update_date_time property.
                ## @return a void
                ## 
                def last_update_date_time=(value)
                    @last_update_date_time = value
                end
                ## 
                ## Gets the mitreTechniques property value. The attack techniques, as aligned with the MITRE ATT&CK framework.
                ## @return a string
                ## 
                def mitre_techniques
                    return @mitre_techniques
                end
                ## 
                ## Sets the mitreTechniques property value. The attack techniques, as aligned with the MITRE ATT&CK framework.
                ## @param value Value to set for the mitre_techniques property.
                ## @return a void
                ## 
                def mitre_techniques=(value)
                    @mitre_techniques = value
                end
                ## 
                ## Gets the providerAlertId property value. The ID of the alert as it appears in the security provider product that generated the alert.
                ## @return a string
                ## 
                def provider_alert_id
                    return @provider_alert_id
                end
                ## 
                ## Sets the providerAlertId property value. The ID of the alert as it appears in the security provider product that generated the alert.
                ## @param value Value to set for the provider_alert_id property.
                ## @return a void
                ## 
                def provider_alert_id=(value)
                    @provider_alert_id = value
                end
                ## 
                ## Gets the recommendedActions property value. Recommended response and remediation actions to take in the event this alert was generated.
                ## @return a string
                ## 
                def recommended_actions
                    return @recommended_actions
                end
                ## 
                ## Sets the recommendedActions property value. Recommended response and remediation actions to take in the event this alert was generated.
                ## @param value Value to set for the recommended_actions property.
                ## @return a void
                ## 
                def recommended_actions=(value)
                    @recommended_actions = value
                end
                ## 
                ## Gets the resolvedDateTime property value. Time when the alert was resolved.
                ## @return a date_time
                ## 
                def resolved_date_time
                    return @resolved_date_time
                end
                ## 
                ## Sets the resolvedDateTime property value. Time when the alert was resolved.
                ## @param value Value to set for the resolved_date_time property.
                ## @return a void
                ## 
                def resolved_date_time=(value)
                    @resolved_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("actorDisplayName", @actor_display_name)
                    writer.write_string_value("alertWebUrl", @alert_web_url)
                    writer.write_string_value("assignedTo", @assigned_to)
                    writer.write_string_value("category", @category)
                    writer.write_enum_value("classification", @classification)
                    writer.write_collection_of_object_values("comments", @comments)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("description", @description)
                    writer.write_enum_value("detectionSource", @detection_source)
                    writer.write_string_value("detectorId", @detector_id)
                    writer.write_enum_value("determination", @determination)
                    writer.write_collection_of_object_values("evidence", @evidence)
                    writer.write_date_time_value("firstActivityDateTime", @first_activity_date_time)
                    writer.write_string_value("incidentId", @incident_id)
                    writer.write_string_value("incidentWebUrl", @incident_web_url)
                    writer.write_date_time_value("lastActivityDateTime", @last_activity_date_time)
                    writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                    writer.write_collection_of_primitive_values("mitreTechniques", @mitre_techniques)
                    writer.write_string_value("providerAlertId", @provider_alert_id)
                    writer.write_string_value("recommendedActions", @recommended_actions)
                    writer.write_date_time_value("resolvedDateTime", @resolved_date_time)
                    writer.write_enum_value("serviceSource", @service_source)
                    writer.write_enum_value("severity", @severity)
                    writer.write_enum_value("status", @status)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_string_value("threatDisplayName", @threat_display_name)
                    writer.write_string_value("threatFamilyName", @threat_family_name)
                    writer.write_string_value("title", @title)
                end
                ## 
                ## Gets the serviceSource property value. The serviceSource property
                ## @return a service_source
                ## 
                def service_source
                    return @service_source
                end
                ## 
                ## Sets the serviceSource property value. The serviceSource property
                ## @param value Value to set for the service_source property.
                ## @return a void
                ## 
                def service_source=(value)
                    @service_source = value
                end
                ## 
                ## Gets the severity property value. The severity property
                ## @return a alert_severity
                ## 
                def severity
                    return @severity
                end
                ## 
                ## Sets the severity property value. The severity property
                ## @param value Value to set for the severity property.
                ## @return a void
                ## 
                def severity=(value)
                    @severity = value
                end
                ## 
                ## Gets the status property value. The status property
                ## @return a alert_status
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
                ## 
                ## Gets the tenantId property value. The Azure Active Directory tenant the alert was created in.
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The Azure Active Directory tenant the alert was created in.
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
                ## 
                ## Gets the threatDisplayName property value. The threat associated with this alert.
                ## @return a string
                ## 
                def threat_display_name
                    return @threat_display_name
                end
                ## 
                ## Sets the threatDisplayName property value. The threat associated with this alert.
                ## @param value Value to set for the threat_display_name property.
                ## @return a void
                ## 
                def threat_display_name=(value)
                    @threat_display_name = value
                end
                ## 
                ## Gets the threatFamilyName property value. Threat family associated with this alert.
                ## @return a string
                ## 
                def threat_family_name
                    return @threat_family_name
                end
                ## 
                ## Sets the threatFamilyName property value. Threat family associated with this alert.
                ## @param value Value to set for the threat_family_name property.
                ## @return a void
                ## 
                def threat_family_name=(value)
                    @threat_family_name = value
                end
                ## 
                ## Gets the title property value. Brief identifying string value describing the alert.
                ## @return a string
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. Brief identifying string value describing the alert.
                ## @param value Value to set for the title property.
                ## @return a void
                ## 
                def title=(value)
                    @title = value
                end
            end
        end
    end
end
