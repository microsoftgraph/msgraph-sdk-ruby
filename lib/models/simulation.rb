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
            # Flag that represents if the attack simulation and training campaign was created from a simulation automation flow. Supports $filter and $orderby.
            @is_automated
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
            # Method of delivery of the phishing payload used in the attack simulation and training campaign. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            @payload_delivery_platform
            ## 
            # Report of the attack simulation and training campaign.
            @report
            ## 
            # Status of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, draft, running, scheduled, succeeded, failed, cancelled, excluded, unknownFutureValue.
            @status
            ## 
            ## Gets the attackTechnique property value. The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue. For more information on the types of social engineering attack techniques, see simulations.
            ## @return a simulation_attack_technique
            ## 
            def attack_technique
                return @attack_technique
            end
            ## 
            ## Sets the attackTechnique property value. The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue. For more information on the types of social engineering attack techniques, see simulations.
            ## @param value Value to set for the attack_technique property.
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
            ## @param value Value to set for the attack_type property.
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
            ## @param value Value to set for the automation_id property.
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
            ## @param value Value to set for the completion_date_time property.
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
            ## @param value Value to set for the created_by property.
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
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
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
                    "attackTechnique" => lambda {|n| @attack_technique = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackTechnique) },
                    "attackType" => lambda {|n| @attack_type = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackType) },
                    "automationId" => lambda {|n| @automation_id = n.get_string_value() },
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isAutomated" => lambda {|n| @is_automated = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "launchDateTime" => lambda {|n| @launch_date_time = n.get_date_time_value() },
                    "payloadDeliveryPlatform" => lambda {|n| @payload_delivery_platform = n.get_enum_value(MicrosoftGraph::Models::PayloadDeliveryPlatform) },
                    "report" => lambda {|n| @report = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SimulationReport.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationStatus) },
                })
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
            ## @param value Value to set for the is_automated property.
            ## @return a void
            ## 
            def is_automated=(value)
                @is_automated = value
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
            ## @param value Value to set for the last_modified_by property.
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
            ## @param value Value to set for the last_modified_date_time property.
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
            ## @param value Value to set for the launch_date_time property.
            ## @return a void
            ## 
            def launch_date_time=(value)
                @launch_date_time = value
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
            ## @param value Value to set for the payload_delivery_platform property.
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
                writer.write_boolean_value("isAutomated", @is_automated)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("launchDateTime", @launch_date_time)
                writer.write_enum_value("payloadDeliveryPlatform", @payload_delivery_platform)
                writer.write_object_value("report", @report)
                writer.write_enum_value("status", @status)
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
        end
    end
end
