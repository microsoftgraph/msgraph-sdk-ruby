require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityHostLogonSessionEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The account property
            @account
            ## 
            # The endUtcDateTime property
            @end_utc_date_time
            ## 
            # The host property
            @host
            ## 
            # The sessionId property
            @session_id
            ## 
            # The startUtcDateTime property
            @start_utc_date_time
            ## 
            ## Gets the account property value. The account property
            ## @return a security_user_evidence
            ## 
            def account
                return @account
            end
            ## 
            ## Sets the account property value. The account property
            ## @param value Value to set for the account property.
            ## @return a void
            ## 
            def account=(value)
                @account = value
            end
            ## 
            ## Instantiates a new SecurityHostLogonSessionEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.hostLogonSessionEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_host_logon_session_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityHostLogonSessionEvidence.new
            end
            ## 
            ## Gets the endUtcDateTime property value. The endUtcDateTime property
            ## @return a date_time
            ## 
            def end_utc_date_time
                return @end_utc_date_time
            end
            ## 
            ## Sets the endUtcDateTime property value. The endUtcDateTime property
            ## @param value Value to set for the endUtcDateTime property.
            ## @return a void
            ## 
            def end_utc_date_time=(value)
                @end_utc_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "account" => lambda {|n| @account = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityUserEvidence.create_from_discriminator_value(pn) }) },
                    "endUtcDateTime" => lambda {|n| @end_utc_date_time = n.get_date_time_value() },
                    "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityDeviceEvidence.create_from_discriminator_value(pn) }) },
                    "sessionId" => lambda {|n| @session_id = n.get_string_value() },
                    "startUtcDateTime" => lambda {|n| @start_utc_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the host property value. The host property
            ## @return a security_device_evidence
            ## 
            def host
                return @host
            end
            ## 
            ## Sets the host property value. The host property
            ## @param value Value to set for the host property.
            ## @return a void
            ## 
            def host=(value)
                @host = value
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
                writer.write_date_time_value("endUtcDateTime", @end_utc_date_time)
                writer.write_object_value("host", @host)
                writer.write_string_value("sessionId", @session_id)
                writer.write_date_time_value("startUtcDateTime", @start_utc_date_time)
            end
            ## 
            ## Gets the sessionId property value. The sessionId property
            ## @return a string
            ## 
            def session_id
                return @session_id
            end
            ## 
            ## Sets the sessionId property value. The sessionId property
            ## @param value Value to set for the sessionId property.
            ## @return a void
            ## 
            def session_id=(value)
                @session_id = value
            end
            ## 
            ## Gets the startUtcDateTime property value. The startUtcDateTime property
            ## @return a date_time
            ## 
            def start_utc_date_time
                return @start_utc_date_time
            end
            ## 
            ## Sets the startUtcDateTime property value. The startUtcDateTime property
            ## @param value Value to set for the startUtcDateTime property.
            ## @return a void
            ## 
            def start_utc_date_time=(value)
                @start_utc_date_time = value
            end
        end
    end
end
