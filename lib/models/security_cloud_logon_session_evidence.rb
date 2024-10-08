require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityCloudLogonSessionEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The account associated with the sign-in session.
            @account
            ## 
            # The browser that is used for the sign-in, if known.
            @browser
            ## 
            # The friendly name of the device, if known.
            @device_name
            ## 
            # The operating system that the device is running, if known.
            @operating_system
            ## 
            # The previous sign-in time for this account, if known.
            @previous_logon_date_time
            ## 
            # The authentication protocol that is used in this session, if known.
            @protocol
            ## 
            # The session ID for the account reported in the alert.
            @session_id
            ## 
            # The session start time, if known.
            @start_utc_date_time
            ## 
            # The user agent that is used for the sign-in, if known.
            @user_agent
            ## 
            ## Gets the account property value. The account associated with the sign-in session.
            ## @return a security_user_evidence
            ## 
            def account
                return @account
            end
            ## 
            ## Sets the account property value. The account associated with the sign-in session.
            ## @param value Value to set for the account property.
            ## @return a void
            ## 
            def account=(value)
                @account = value
            end
            ## 
            ## Gets the browser property value. The browser that is used for the sign-in, if known.
            ## @return a string
            ## 
            def browser
                return @browser
            end
            ## 
            ## Sets the browser property value. The browser that is used for the sign-in, if known.
            ## @param value Value to set for the browser property.
            ## @return a void
            ## 
            def browser=(value)
                @browser = value
            end
            ## 
            ## Instantiates a new SecurityCloudLogonSessionEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.cloudLogonSessionEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_cloud_logon_session_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCloudLogonSessionEvidence.new
            end
            ## 
            ## Gets the deviceName property value. The friendly name of the device, if known.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The friendly name of the device, if known.
            ## @param value Value to set for the deviceName property.
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
                return super.merge({
                    "account" => lambda {|n| @account = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityUserEvidence.create_from_discriminator_value(pn) }) },
                    "browser" => lambda {|n| @browser = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "previousLogonDateTime" => lambda {|n| @previous_logon_date_time = n.get_date_time_value() },
                    "protocol" => lambda {|n| @protocol = n.get_string_value() },
                    "sessionId" => lambda {|n| @session_id = n.get_string_value() },
                    "startUtcDateTime" => lambda {|n| @start_utc_date_time = n.get_date_time_value() },
                    "userAgent" => lambda {|n| @user_agent = n.get_string_value() },
                })
            end
            ## 
            ## Gets the operatingSystem property value. The operating system that the device is running, if known.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operating system that the device is running, if known.
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the previousLogonDateTime property value. The previous sign-in time for this account, if known.
            ## @return a date_time
            ## 
            def previous_logon_date_time
                return @previous_logon_date_time
            end
            ## 
            ## Sets the previousLogonDateTime property value. The previous sign-in time for this account, if known.
            ## @param value Value to set for the previousLogonDateTime property.
            ## @return a void
            ## 
            def previous_logon_date_time=(value)
                @previous_logon_date_time = value
            end
            ## 
            ## Gets the protocol property value. The authentication protocol that is used in this session, if known.
            ## @return a string
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. The authentication protocol that is used in this session, if known.
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("account", @account)
                writer.write_string_value("browser", @browser)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_date_time_value("previousLogonDateTime", @previous_logon_date_time)
                writer.write_string_value("protocol", @protocol)
                writer.write_string_value("sessionId", @session_id)
                writer.write_date_time_value("startUtcDateTime", @start_utc_date_time)
                writer.write_string_value("userAgent", @user_agent)
            end
            ## 
            ## Gets the sessionId property value. The session ID for the account reported in the alert.
            ## @return a string
            ## 
            def session_id
                return @session_id
            end
            ## 
            ## Sets the sessionId property value. The session ID for the account reported in the alert.
            ## @param value Value to set for the sessionId property.
            ## @return a void
            ## 
            def session_id=(value)
                @session_id = value
            end
            ## 
            ## Gets the startUtcDateTime property value. The session start time, if known.
            ## @return a date_time
            ## 
            def start_utc_date_time
                return @start_utc_date_time
            end
            ## 
            ## Sets the startUtcDateTime property value. The session start time, if known.
            ## @param value Value to set for the startUtcDateTime property.
            ## @return a void
            ## 
            def start_utc_date_time=(value)
                @start_utc_date_time = value
            end
            ## 
            ## Gets the userAgent property value. The user agent that is used for the sign-in, if known.
            ## @return a string
            ## 
            def user_agent
                return @user_agent
            end
            ## 
            ## Sets the userAgent property value. The user agent that is used for the sign-in, if known.
            ## @param value Value to set for the userAgent property.
            ## @return a void
            ## 
            def user_agent=(value)
                @user_agent = value
            end
        end
    end
end
