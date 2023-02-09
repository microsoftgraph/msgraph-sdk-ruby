require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class Incident < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The list of related alerts. Supports $expand.
                @alerts
                ## 
                # Owner of the incident, or null if no owner is assigned. Free editable text.
                @assigned_to
                ## 
                # The specification for the incident. Possible values are: unknown, falsePositive, truePositive, informationalExpectedActivity, unknownFutureValue.
                @classification
                ## 
                # Array of comments created by the Security Operations (SecOps) team when the incident is managed.
                @comments
                ## 
                # Time when the incident was first created.
                @created_date_time
                ## 
                # Array of custom tags associated with an incident.
                @custom_tags
                ## 
                # Specifies the determination of the incident. Possible values are: unknown, apt, malware, securityPersonnel, securityTesting, unwantedSoftware, other, multiStagedAttack, compromisedUser, phishing, maliciousUserActivity, clean, insufficientData, confirmedUserActivity, lineOfBusinessApplication, unknownFutureValue.
                @determination
                ## 
                # The incident name.
                @display_name
                ## 
                # The URL for the incident page in the Microsoft 365 Defender portal.
                @incident_web_url
                ## 
                # Time when the incident was last updated.
                @last_update_date_time
                ## 
                # Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents. In such a case, the status property is redirected.
                @redirect_incident_id
                ## 
                # The severity property
                @severity
                ## 
                # The status property
                @status
                ## 
                # The Azure Active Directory tenant in which the alert was created.
                @tenant_id
                ## 
                ## Gets the alerts property value. The list of related alerts. Supports $expand.
                ## @return a alert
                ## 
                def alerts
                    return @alerts
                end
                ## 
                ## Sets the alerts property value. The list of related alerts. Supports $expand.
                ## @param value Value to set for the alerts property.
                ## @return a void
                ## 
                def alerts=(value)
                    @alerts = value
                end
                ## 
                ## Gets the assignedTo property value. Owner of the incident, or null if no owner is assigned. Free editable text.
                ## @return a string
                ## 
                def assigned_to
                    return @assigned_to
                end
                ## 
                ## Sets the assignedTo property value. Owner of the incident, or null if no owner is assigned. Free editable text.
                ## @param value Value to set for the assigned_to property.
                ## @return a void
                ## 
                def assigned_to=(value)
                    @assigned_to = value
                end
                ## 
                ## Gets the classification property value. The specification for the incident. Possible values are: unknown, falsePositive, truePositive, informationalExpectedActivity, unknownFutureValue.
                ## @return a alert_classification
                ## 
                def classification
                    return @classification
                end
                ## 
                ## Sets the classification property value. The specification for the incident. Possible values are: unknown, falsePositive, truePositive, informationalExpectedActivity, unknownFutureValue.
                ## @param value Value to set for the classification property.
                ## @return a void
                ## 
                def classification=(value)
                    @classification = value
                end
                ## 
                ## Gets the comments property value. Array of comments created by the Security Operations (SecOps) team when the incident is managed.
                ## @return a alert_comment
                ## 
                def comments
                    return @comments
                end
                ## 
                ## Sets the comments property value. Array of comments created by the Security Operations (SecOps) team when the incident is managed.
                ## @param value Value to set for the comments property.
                ## @return a void
                ## 
                def comments=(value)
                    @comments = value
                end
                ## 
                ## Instantiates a new incident and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. Time when the incident was first created.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. Time when the incident was first created.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a incident
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Incident.new
                end
                ## 
                ## Gets the customTags property value. Array of custom tags associated with an incident.
                ## @return a string
                ## 
                def custom_tags
                    return @custom_tags
                end
                ## 
                ## Sets the customTags property value. Array of custom tags associated with an incident.
                ## @param value Value to set for the custom_tags property.
                ## @return a void
                ## 
                def custom_tags=(value)
                    @custom_tags = value
                end
                ## 
                ## Gets the determination property value. Specifies the determination of the incident. Possible values are: unknown, apt, malware, securityPersonnel, securityTesting, unwantedSoftware, other, multiStagedAttack, compromisedUser, phishing, maliciousUserActivity, clean, insufficientData, confirmedUserActivity, lineOfBusinessApplication, unknownFutureValue.
                ## @return a alert_determination
                ## 
                def determination
                    return @determination
                end
                ## 
                ## Sets the determination property value. Specifies the determination of the incident. Possible values are: unknown, apt, malware, securityPersonnel, securityTesting, unwantedSoftware, other, multiStagedAttack, compromisedUser, phishing, maliciousUserActivity, clean, insufficientData, confirmedUserActivity, lineOfBusinessApplication, unknownFutureValue.
                ## @param value Value to set for the determination property.
                ## @return a void
                ## 
                def determination=(value)
                    @determination = value
                end
                ## 
                ## Gets the displayName property value. The incident name.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The incident name.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "alerts" => lambda {|n| @alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::Alert.create_from_discriminator_value(pn) }) },
                        "assignedTo" => lambda {|n| @assigned_to = n.get_string_value() },
                        "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraph::Models::Security::AlertClassification) },
                        "comments" => lambda {|n| @comments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::AlertComment.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "customTags" => lambda {|n| @custom_tags = n.get_collection_of_primitive_values(String) },
                        "determination" => lambda {|n| @determination = n.get_enum_value(MicrosoftGraph::Models::Security::AlertDetermination) },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "incidentWebUrl" => lambda {|n| @incident_web_url = n.get_string_value() },
                        "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                        "redirectIncidentId" => lambda {|n| @redirect_incident_id = n.get_string_value() },
                        "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::Security::AlertSeverity) },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::Security::IncidentStatus) },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the incidentWebUrl property value. The URL for the incident page in the Microsoft 365 Defender portal.
                ## @return a string
                ## 
                def incident_web_url
                    return @incident_web_url
                end
                ## 
                ## Sets the incidentWebUrl property value. The URL for the incident page in the Microsoft 365 Defender portal.
                ## @param value Value to set for the incident_web_url property.
                ## @return a void
                ## 
                def incident_web_url=(value)
                    @incident_web_url = value
                end
                ## 
                ## Gets the lastUpdateDateTime property value. Time when the incident was last updated.
                ## @return a date_time
                ## 
                def last_update_date_time
                    return @last_update_date_time
                end
                ## 
                ## Sets the lastUpdateDateTime property value. Time when the incident was last updated.
                ## @param value Value to set for the last_update_date_time property.
                ## @return a void
                ## 
                def last_update_date_time=(value)
                    @last_update_date_time = value
                end
                ## 
                ## Gets the redirectIncidentId property value. Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents. In such a case, the status property is redirected.
                ## @return a string
                ## 
                def redirect_incident_id
                    return @redirect_incident_id
                end
                ## 
                ## Sets the redirectIncidentId property value. Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents. In such a case, the status property is redirected.
                ## @param value Value to set for the redirect_incident_id property.
                ## @return a void
                ## 
                def redirect_incident_id=(value)
                    @redirect_incident_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("alerts", @alerts)
                    writer.write_string_value("assignedTo", @assigned_to)
                    writer.write_enum_value("classification", @classification)
                    writer.write_collection_of_object_values("comments", @comments)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_collection_of_primitive_values("customTags", @custom_tags)
                    writer.write_enum_value("determination", @determination)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("incidentWebUrl", @incident_web_url)
                    writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                    writer.write_string_value("redirectIncidentId", @redirect_incident_id)
                    writer.write_enum_value("severity", @severity)
                    writer.write_enum_value("status", @status)
                    writer.write_string_value("tenantId", @tenant_id)
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
                ## @return a incident_status
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
                ## Gets the tenantId property value. The Azure Active Directory tenant in which the alert was created.
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The Azure Active Directory tenant in which the alert was created.
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
            end
        end
    end
end
