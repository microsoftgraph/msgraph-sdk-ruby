require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Entity which represents a connection to an Exchange environment.
        class DeviceManagementExchangeConnector < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the server hosting the Exchange Connector.
            @connector_server_name
            ## 
            # An alias assigned to the Exchange server
            @exchange_alias
            ## 
            # The type of Exchange Connector.
            @exchange_connector_type
            ## 
            # Exchange Organization to the Exchange server
            @exchange_organization
            ## 
            # Last sync time for the Exchange Connector
            @last_sync_date_time
            ## 
            # Email address used to configure the Service To Service Exchange Connector.
            @primary_smtp_address
            ## 
            # The name of the Exchange server.
            @server_name
            ## 
            # The current status of the Exchange Connector.
            @status
            ## 
            # The version of the ExchangeConnectorAgent
            @version
            ## 
            ## Gets the connectorServerName property value. The name of the server hosting the Exchange Connector.
            ## @return a string
            ## 
            def connector_server_name
                return @connector_server_name
            end
            ## 
            ## Sets the connectorServerName property value. The name of the server hosting the Exchange Connector.
            ## @param value Value to set for the connector_server_name property.
            ## @return a void
            ## 
            def connector_server_name=(value)
                @connector_server_name = value
            end
            ## 
            ## Instantiates a new deviceManagementExchangeConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_exchange_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementExchangeConnector.new
            end
            ## 
            ## Gets the exchangeAlias property value. An alias assigned to the Exchange server
            ## @return a string
            ## 
            def exchange_alias
                return @exchange_alias
            end
            ## 
            ## Sets the exchangeAlias property value. An alias assigned to the Exchange server
            ## @param value Value to set for the exchange_alias property.
            ## @return a void
            ## 
            def exchange_alias=(value)
                @exchange_alias = value
            end
            ## 
            ## Gets the exchangeConnectorType property value. The type of Exchange Connector.
            ## @return a device_management_exchange_connector_type
            ## 
            def exchange_connector_type
                return @exchange_connector_type
            end
            ## 
            ## Sets the exchangeConnectorType property value. The type of Exchange Connector.
            ## @param value Value to set for the exchange_connector_type property.
            ## @return a void
            ## 
            def exchange_connector_type=(value)
                @exchange_connector_type = value
            end
            ## 
            ## Gets the exchangeOrganization property value. Exchange Organization to the Exchange server
            ## @return a string
            ## 
            def exchange_organization
                return @exchange_organization
            end
            ## 
            ## Sets the exchangeOrganization property value. Exchange Organization to the Exchange server
            ## @param value Value to set for the exchange_organization property.
            ## @return a void
            ## 
            def exchange_organization=(value)
                @exchange_organization = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectorServerName" => lambda {|n| @connector_server_name = n.get_string_value() },
                    "exchangeAlias" => lambda {|n| @exchange_alias = n.get_string_value() },
                    "exchangeConnectorType" => lambda {|n| @exchange_connector_type = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementExchangeConnectorType) },
                    "exchangeOrganization" => lambda {|n| @exchange_organization = n.get_string_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "primarySmtpAddress" => lambda {|n| @primary_smtp_address = n.get_string_value() },
                    "serverName" => lambda {|n| @server_name = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementExchangeConnectorStatus) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastSyncDateTime property value. Last sync time for the Exchange Connector
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. Last sync time for the Exchange Connector
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the primarySmtpAddress property value. Email address used to configure the Service To Service Exchange Connector.
            ## @return a string
            ## 
            def primary_smtp_address
                return @primary_smtp_address
            end
            ## 
            ## Sets the primarySmtpAddress property value. Email address used to configure the Service To Service Exchange Connector.
            ## @param value Value to set for the primary_smtp_address property.
            ## @return a void
            ## 
            def primary_smtp_address=(value)
                @primary_smtp_address = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("connectorServerName", @connector_server_name)
                writer.write_string_value("exchangeAlias", @exchange_alias)
                writer.write_enum_value("exchangeConnectorType", @exchange_connector_type)
                writer.write_string_value("exchangeOrganization", @exchange_organization)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_string_value("primarySmtpAddress", @primary_smtp_address)
                writer.write_string_value("serverName", @server_name)
                writer.write_enum_value("status", @status)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the serverName property value. The name of the Exchange server.
            ## @return a string
            ## 
            def server_name
                return @server_name
            end
            ## 
            ## Sets the serverName property value. The name of the Exchange server.
            ## @param value Value to set for the server_name property.
            ## @return a void
            ## 
            def server_name=(value)
                @server_name = value
            end
            ## 
            ## Gets the status property value. The current status of the Exchange Connector.
            ## @return a device_management_exchange_connector_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The current status of the Exchange Connector.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the version property value. The version of the ExchangeConnectorAgent
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the ExchangeConnectorAgent
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
