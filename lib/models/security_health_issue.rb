require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHealthIssue < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains additional information about the issue, such as a list of items to fix.
            @additional_information
            ## 
            # The date and time when the health issue was generated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Contains more detailed information about the health issue.
            @description
            ## 
            # The display name of the health issue.
            @display_name
            ## 
            # A list of the fully qualified domain names of the domains or the sensors the health issue is related to.
            @domain_names
            ## 
            # The type of the health issue. The possible values are: sensor, global, unknownFutureValue. For a list of all health issues and their identifiers, see Microsoft Defender for Identity health issues.
            @health_issue_type
            ## 
            # The type identifier of the health issue. For a list of all health issues and their identifiers, see Microsoft Defender for Identity health issues.
            @issue_type_id
            ## 
            # The date and time when the health issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # A list of recommended actions that can be taken to resolve the issue effectively and efficiently. These actions might include instructions for further investigation and aren't limited to prewritten responses.
            @recommendations
            ## 
            # A list of commands from the PowerShell module for the product that can be used to resolve the issue, if available. If no commands can be used to solve the issue, this property is empty. The commands, if present, provide a quick and efficient way to address the issue. These commands run in sequence for the single recommended fix.
            @recommended_action_commands
            ## 
            # A list of the DNS names of the sensors the health issue is related to.
            @sensor_d_n_s_names
            ## 
            # The severity of the health issue. The possible values are: low, medium, high, unknownFutureValue.
            @severity
            ## 
            # The status of the health issue. The possible values are: open, closed, suppressed, unknownFutureValue.
            @status
            ## 
            ## Gets the additionalInformation property value. Contains additional information about the issue, such as a list of items to fix.
            ## @return a string
            ## 
            def additional_information
                return @additional_information
            end
            ## 
            ## Sets the additionalInformation property value. Contains additional information about the issue, such as a list of items to fix.
            ## @param value Value to set for the additionalInformation property.
            ## @return a void
            ## 
            def additional_information=(value)
                @additional_information = value
            end
            ## 
            ## Instantiates a new SecurityHealthIssue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the health issue was generated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the health issue was generated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_health_issue
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHealthIssue.new
            end
            ## 
            ## Gets the description property value. Contains more detailed information about the health issue.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Contains more detailed information about the health issue.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the health issue.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the health issue.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the domainNames property value. A list of the fully qualified domain names of the domains or the sensors the health issue is related to.
            ## @return a string
            ## 
            def domain_names
                return @domain_names
            end
            ## 
            ## Sets the domainNames property value. A list of the fully qualified domain names of the domains or the sensors the health issue is related to.
            ## @param value Value to set for the domainNames property.
            ## @return a void
            ## 
            def domain_names=(value)
                @domain_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalInformation" => lambda {|n| @additional_information = n.get_collection_of_primitive_values(String) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "domainNames" => lambda {|n| @domain_names = n.get_collection_of_primitive_values(String) },
                    "healthIssueType" => lambda {|n| @health_issue_type = n.get_enum_value(MicrosoftGraph::Models::SecurityHealthIssueType) },
                    "issueTypeId" => lambda {|n| @issue_type_id = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "recommendations" => lambda {|n| @recommendations = n.get_collection_of_primitive_values(String) },
                    "recommendedActionCommands" => lambda {|n| @recommended_action_commands = n.get_collection_of_primitive_values(String) },
                    "sensorDNSNames" => lambda {|n| @sensor_d_n_s_names = n.get_collection_of_primitive_values(String) },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraph::Models::SecurityHealthIssueSeverity) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SecurityHealthIssueStatus) },
                })
            end
            ## 
            ## Gets the healthIssueType property value. The type of the health issue. The possible values are: sensor, global, unknownFutureValue. For a list of all health issues and their identifiers, see Microsoft Defender for Identity health issues.
            ## @return a security_health_issue_type
            ## 
            def health_issue_type
                return @health_issue_type
            end
            ## 
            ## Sets the healthIssueType property value. The type of the health issue. The possible values are: sensor, global, unknownFutureValue. For a list of all health issues and their identifiers, see Microsoft Defender for Identity health issues.
            ## @param value Value to set for the healthIssueType property.
            ## @return a void
            ## 
            def health_issue_type=(value)
                @health_issue_type = value
            end
            ## 
            ## Gets the issueTypeId property value. The type identifier of the health issue. For a list of all health issues and their identifiers, see Microsoft Defender for Identity health issues.
            ## @return a string
            ## 
            def issue_type_id
                return @issue_type_id
            end
            ## 
            ## Sets the issueTypeId property value. The type identifier of the health issue. For a list of all health issues and their identifiers, see Microsoft Defender for Identity health issues.
            ## @param value Value to set for the issueTypeId property.
            ## @return a void
            ## 
            def issue_type_id=(value)
                @issue_type_id = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the health issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the health issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the recommendations property value. A list of recommended actions that can be taken to resolve the issue effectively and efficiently. These actions might include instructions for further investigation and aren't limited to prewritten responses.
            ## @return a string
            ## 
            def recommendations
                return @recommendations
            end
            ## 
            ## Sets the recommendations property value. A list of recommended actions that can be taken to resolve the issue effectively and efficiently. These actions might include instructions for further investigation and aren't limited to prewritten responses.
            ## @param value Value to set for the recommendations property.
            ## @return a void
            ## 
            def recommendations=(value)
                @recommendations = value
            end
            ## 
            ## Gets the recommendedActionCommands property value. A list of commands from the PowerShell module for the product that can be used to resolve the issue, if available. If no commands can be used to solve the issue, this property is empty. The commands, if present, provide a quick and efficient way to address the issue. These commands run in sequence for the single recommended fix.
            ## @return a string
            ## 
            def recommended_action_commands
                return @recommended_action_commands
            end
            ## 
            ## Sets the recommendedActionCommands property value. A list of commands from the PowerShell module for the product that can be used to resolve the issue, if available. If no commands can be used to solve the issue, this property is empty. The commands, if present, provide a quick and efficient way to address the issue. These commands run in sequence for the single recommended fix.
            ## @param value Value to set for the recommendedActionCommands property.
            ## @return a void
            ## 
            def recommended_action_commands=(value)
                @recommended_action_commands = value
            end
            ## 
            ## Gets the sensorDNSNames property value. A list of the DNS names of the sensors the health issue is related to.
            ## @return a string
            ## 
            def sensor_d_n_s_names
                return @sensor_d_n_s_names
            end
            ## 
            ## Sets the sensorDNSNames property value. A list of the DNS names of the sensors the health issue is related to.
            ## @param value Value to set for the sensorDNSNames property.
            ## @return a void
            ## 
            def sensor_d_n_s_names=(value)
                @sensor_d_n_s_names = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("additionalInformation", @additional_information)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("domainNames", @domain_names)
                writer.write_enum_value("healthIssueType", @health_issue_type)
                writer.write_string_value("issueTypeId", @issue_type_id)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("recommendations", @recommendations)
                writer.write_collection_of_primitive_values("recommendedActionCommands", @recommended_action_commands)
                writer.write_collection_of_primitive_values("sensorDNSNames", @sensor_d_n_s_names)
                writer.write_enum_value("severity", @severity)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the severity property value. The severity of the health issue. The possible values are: low, medium, high, unknownFutureValue.
            ## @return a security_health_issue_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity of the health issue. The possible values are: low, medium, high, unknownFutureValue.
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the status property value. The status of the health issue. The possible values are: open, closed, suppressed, unknownFutureValue.
            ## @return a security_health_issue_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the health issue. The possible values are: open, closed, suppressed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
