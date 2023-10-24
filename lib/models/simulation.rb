require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Simulation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue. For more information on the types of social engineering attack techniques, see simulations.
            @attack_technique
            ## 
            # Attack type of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, social, cloud, endpoint, unknownFutureValue.
            @attack_type
            ## 
            # Unique identifier for the attack simulation automation.
            @automation_id
            ## 
            # Date and time of completion of the attack simulation and training campaign. Supports $filter and $orderby.
            @completion_date_time
            ## 
            # Identity of the user who created the attack simulation and training campaign.
            @created_by
            ## 
            # Date and time of creation of the attack simulation and training campaign.
            @created_date_time
            ## 
            # Description of the attack simulation and training campaign.
            @description
            ## 
            # Display name of the attack simulation and training campaign. Supports $filter and $orderby.
            @display_name
            ## 
            # The durationInDays property
            @duration_in_days
            ## 
            # The endUserNotificationSetting property
            @end_user_notification_setting
            ## 
            # The excludedAccountTarget property
            @excluded_account_target
            ## 
            # The includedAccountTarget property
            @included_account_target
            ## 
            # Flag that represents if the attack simulation and training campaign was created from a simulation automation flow. Supports $filter and $orderby.
            @is_automated
            ## 
            # The landingPage property
            @landing_page
            ## 
            # Identity of the user who most recently modified the attack simulation and training campaign.
            @last_modified_by
            ## 
            # Date and time of the most recent modification of the attack simulation and training campaign.
            @last_modified_date_time
            ## 
            # Date and time of the launch/start of the attack simulation and training campaign. Supports $filter and $orderby.
            @launch_date_time
            ## 
            # The loginPage property
            @login_page
            ## 
            # The oAuthConsentAppDetail property
            @o_auth_consent_app_detail
            ## 
            # The payload property
            @payload
            ## 
            # Method of delivery of the phishing payload used in the attack simulation and training campaign. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            @payload_delivery_platform
            ## 
            # Report of the attack simulation and training campaign.
            @report
            ## 
            # Status of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, draft, running, scheduled, succeeded, failed, cancelled, excluded, unknownFutureValue.
            @status
            ## 
            # The trainingSetting property
            @training_setting
            ## 
            ## Gets the attackTechnique property value. The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue. For more information on the types of social engineering attack techniques, see simulations.
            ## @return a simulation_attack_technique
            ## 
            def attack_technique
                return @attack_technique
            end
            ## 
            ## Sets the attackTechnique property value. The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue. For more information on the types of social engineering attack techniques, see simulations.
            ## @param value Value to set for the attackTechnique property.
            ## @return a void
            ## 
            def attack_technique=(value)
                @attack_technique = value
            end
            ## 
            ## Gets the attackType property value. Attack type of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, social, cloud, endpoint, unknownFutureValue.
            ## @return a simulation_attack_type
            ## 
            def attack_type
                return @attack_type
            end
            ## 
            ## Sets the attackType property value. Attack type of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, social, cloud, endpoint, unknownFutureValue.
            ## @param value Value to set for the attackType property.
            ## @return a void
            ## 
            def attack_type=(value)
                @attack_type = value
            end
            ## 
            ## Gets the automationId property value. Unique identifier for the attack simulation automation.
            ## @return a string
            ## 
            def automation_id
                return @automation_id
            end
            ## 
            ## Sets the automationId property value. Unique identifier for the attack simulation automation.
            ## @param value Value to set for the automationId property.
            ## @return a void
            ## 
            def automation_id=(value)
                @automation_id = value
            end
            ## 
            ## Gets the completionDateTime property value. Date and time of completion of the attack simulation and training campaign. Supports $filter and $orderby.
            ## @return a date_time
            ## 
            def completion_date_time
                return @completion_date_time
            end
            ## 
            ## Sets the completionDateTime property value. Date and time of completion of the attack simulation and training campaign. Supports $filter and $orderby.
            ## @param value Value to set for the completionDateTime property.
            ## @return a void
            ## 
            def completion_date_time=(value)
                @completion_date_time = value
            end
            ## 
            ## Instantiates a new simulation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the attack simulation and training campaign.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the attack simulation and training campaign.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of creation of the attack simulation and training campaign.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of creation of the attack simulation and training campaign.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a simulation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Simulation.new
            end
            ## 
            ## Gets the description property value. Description of the attack simulation and training campaign.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the attack simulation and training campaign.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the attack simulation and training campaign. Supports $filter and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the attack simulation and training campaign. Supports $filter and $orderby.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the durationInDays property value. The durationInDays property
            ## @return a integer
            ## 
            def duration_in_days
                return @duration_in_days
            end
            ## 
            ## Sets the durationInDays property value. The durationInDays property
            ## @param value Value to set for the durationInDays property.
            ## @return a void
            ## 
            def duration_in_days=(value)
                @duration_in_days = value
            end
            ## 
            ## Gets the endUserNotificationSetting property value. The endUserNotificationSetting property
            ## @return a end_user_notification_setting
            ## 
            def end_user_notification_setting
                return @end_user_notification_setting
            end
            ## 
            ## Sets the endUserNotificationSetting property value. The endUserNotificationSetting property
            ## @param value Value to set for the endUserNotificationSetting property.
            ## @return a void
            ## 
            def end_user_notification_setting=(value)
                @end_user_notification_setting = value
            end
            ## 
            ## Gets the excludedAccountTarget property value. The excludedAccountTarget property
            ## @return a account_target_content
            ## 
            def excluded_account_target
                return @excluded_account_target
            end
            ## 
            ## Sets the excludedAccountTarget property value. The excludedAccountTarget property
            ## @param value Value to set for the excludedAccountTarget property.
            ## @return a void
            ## 
            def excluded_account_target=(value)
                @excluded_account_target = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attackTechnique" => lambda {|n| @attack_technique = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackTechnique) },
                    "attackType" => lambda {|n| @attack_type = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackType) },
                    "automationId" => lambda {|n| @automation_id = n.get_string_value() },
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "durationInDays" => lambda {|n| @duration_in_days = n.get_number_value() },
                    "endUserNotificationSetting" => lambda {|n| @end_user_notification_setting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EndUserNotificationSetting.create_from_discriminator_value(pn) }) },
                    "excludedAccountTarget" => lambda {|n| @excluded_account_target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccountTargetContent.create_from_discriminator_value(pn) }) },
                    "includedAccountTarget" => lambda {|n| @included_account_target = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccountTargetContent.create_from_discriminator_value(pn) }) },
                    "isAutomated" => lambda {|n| @is_automated = n.get_boolean_value() },
                    "landingPage" => lambda {|n| @landing_page = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LandingPage.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "launchDateTime" => lambda {|n| @launch_date_time = n.get_date_time_value() },
                    "loginPage" => lambda {|n| @login_page = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LoginPage.create_from_discriminator_value(pn) }) },
                    "oAuthConsentAppDetail" => lambda {|n| @o_auth_consent_app_detail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OAuthConsentAppDetail.create_from_discriminator_value(pn) }) },
                    "payload" => lambda {|n| @payload = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Payload.create_from_discriminator_value(pn) }) },
                    "payloadDeliveryPlatform" => lambda {|n| @payload_delivery_platform = n.get_enum_value(MicrosoftGraph::Models::PayloadDeliveryPlatform) },
                    "report" => lambda {|n| @report = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SimulationReport.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationStatus) },
                    "trainingSetting" => lambda {|n| @training_setting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TrainingSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the includedAccountTarget property value. The includedAccountTarget property
            ## @return a account_target_content
            ## 
            def included_account_target
                return @included_account_target
            end
            ## 
            ## Sets the includedAccountTarget property value. The includedAccountTarget property
            ## @param value Value to set for the includedAccountTarget property.
            ## @return a void
            ## 
            def included_account_target=(value)
                @included_account_target = value
            end
            ## 
            ## Gets the isAutomated property value. Flag that represents if the attack simulation and training campaign was created from a simulation automation flow. Supports $filter and $orderby.
            ## @return a boolean
            ## 
            def is_automated
                return @is_automated
            end
            ## 
            ## Sets the isAutomated property value. Flag that represents if the attack simulation and training campaign was created from a simulation automation flow. Supports $filter and $orderby.
            ## @param value Value to set for the isAutomated property.
            ## @return a void
            ## 
            def is_automated=(value)
                @is_automated = value
            end
            ## 
            ## Gets the landingPage property value. The landingPage property
            ## @return a landing_page
            ## 
            def landing_page
                return @landing_page
            end
            ## 
            ## Sets the landingPage property value. The landingPage property
            ## @param value Value to set for the landingPage property.
            ## @return a void
            ## 
            def landing_page=(value)
                @landing_page = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who most recently modified the attack simulation and training campaign.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who most recently modified the attack simulation and training campaign.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time of the most recent modification of the attack simulation and training campaign.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time of the most recent modification of the attack simulation and training campaign.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the launchDateTime property value. Date and time of the launch/start of the attack simulation and training campaign. Supports $filter and $orderby.
            ## @return a date_time
            ## 
            def launch_date_time
                return @launch_date_time
            end
            ## 
            ## Sets the launchDateTime property value. Date and time of the launch/start of the attack simulation and training campaign. Supports $filter and $orderby.
            ## @param value Value to set for the launchDateTime property.
            ## @return a void
            ## 
            def launch_date_time=(value)
                @launch_date_time = value
            end
            ## 
            ## Gets the loginPage property value. The loginPage property
            ## @return a login_page
            ## 
            def login_page
                return @login_page
            end
            ## 
            ## Sets the loginPage property value. The loginPage property
            ## @param value Value to set for the loginPage property.
            ## @return a void
            ## 
            def login_page=(value)
                @login_page = value
            end
            ## 
            ## Gets the oAuthConsentAppDetail property value. The oAuthConsentAppDetail property
            ## @return a o_auth_consent_app_detail
            ## 
            def o_auth_consent_app_detail
                return @o_auth_consent_app_detail
            end
            ## 
            ## Sets the oAuthConsentAppDetail property value. The oAuthConsentAppDetail property
            ## @param value Value to set for the oAuthConsentAppDetail property.
            ## @return a void
            ## 
            def o_auth_consent_app_detail=(value)
                @o_auth_consent_app_detail = value
            end
            ## 
            ## Gets the payload property value. The payload property
            ## @return a payload
            ## 
            def payload
                return @payload
            end
            ## 
            ## Sets the payload property value. The payload property
            ## @param value Value to set for the payload property.
            ## @return a void
            ## 
            def payload=(value)
                @payload = value
            end
            ## 
            ## Gets the payloadDeliveryPlatform property value. Method of delivery of the phishing payload used in the attack simulation and training campaign. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            ## @return a payload_delivery_platform
            ## 
            def payload_delivery_platform
                return @payload_delivery_platform
            end
            ## 
            ## Sets the payloadDeliveryPlatform property value. Method of delivery of the phishing payload used in the attack simulation and training campaign. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            ## @param value Value to set for the payloadDeliveryPlatform property.
            ## @return a void
            ## 
            def payload_delivery_platform=(value)
                @payload_delivery_platform = value
            end
            ## 
            ## Gets the report property value. Report of the attack simulation and training campaign.
            ## @return a simulation_report
            ## 
            def report
                return @report
            end
            ## 
            ## Sets the report property value. Report of the attack simulation and training campaign.
            ## @param value Value to set for the report property.
            ## @return a void
            ## 
            def report=(value)
                @report = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("attackTechnique", @attack_technique)
                writer.write_enum_value("attackType", @attack_type)
                writer.write_string_value("automationId", @automation_id)
                writer.write_date_time_value("completionDateTime", @completion_date_time)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("durationInDays", @duration_in_days)
                writer.write_object_value("endUserNotificationSetting", @end_user_notification_setting)
                writer.write_object_value("excludedAccountTarget", @excluded_account_target)
                writer.write_object_value("includedAccountTarget", @included_account_target)
                writer.write_boolean_value("isAutomated", @is_automated)
                writer.write_object_value("landingPage", @landing_page)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("launchDateTime", @launch_date_time)
                writer.write_object_value("loginPage", @login_page)
                writer.write_object_value("oAuthConsentAppDetail", @o_auth_consent_app_detail)
                writer.write_object_value("payload", @payload)
                writer.write_enum_value("payloadDeliveryPlatform", @payload_delivery_platform)
                writer.write_object_value("report", @report)
                writer.write_enum_value("status", @status)
                writer.write_object_value("trainingSetting", @training_setting)
            end
            ## 
            ## Gets the status property value. Status of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, draft, running, scheduled, succeeded, failed, cancelled, excluded, unknownFutureValue.
            ## @return a simulation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, draft, running, scheduled, succeeded, failed, cancelled, excluded, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the trainingSetting property value. The trainingSetting property
            ## @return a training_setting
            ## 
            def training_setting
                return @training_setting
            end
            ## 
            ## Sets the trainingSetting property value. The trainingSetting property
            ## @param value Value to set for the trainingSetting property.
            ## @return a void
            ## 
            def training_setting=(value)
                @training_setting = value
            end
        end
    end
end
