require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExternalConnectorsExternalConnection < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collects configurable settings related to activities involving connector content.
            @activity_settings
            ## 
            # Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional.
            @configuration
            ## 
            # The Teams app ID. Optional.
            @connector_id
            ## 
            # Description of the connection displayed in the Microsoft 365 admin center. Optional.
            @description
            ## 
            # The groups property
            @groups
            ## 
            # The items property
            @items
            ## 
            # The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required.
            @name
            ## 
            # The operations property
            @operations
            ## 
            # The schema property
            @schema
            ## 
            # The settings configuring the search experience for content in this connection, such as the display templates for search results.
            @search_settings
            ## 
            # Indicates the current state of the connection. Possible values are: draft, ready, obsolete, limitExceeded, unknownFutureValue.
            @state
            ## 
            ## Gets the activitySettings property value. Collects configurable settings related to activities involving connector content.
            ## @return a external_connectors_activity_settings
            ## 
            def activity_settings
                return @activity_settings
            end
            ## 
            ## Sets the activitySettings property value. Collects configurable settings related to activities involving connector content.
            ## @param value Value to set for the activitySettings property.
            ## @return a void
            ## 
            def activity_settings=(value)
                @activity_settings = value
            end
            ## 
            ## Gets the configuration property value. Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional.
            ## @return a external_connectors_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional.
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Gets the connectorId property value. The Teams app ID. Optional.
            ## @return a string
            ## 
            def connector_id
                return @connector_id
            end
            ## 
            ## Sets the connectorId property value. The Teams app ID. Optional.
            ## @param value Value to set for the connectorId property.
            ## @return a void
            ## 
            def connector_id=(value)
                @connector_id = value
            end
            ## 
            ## Instantiates a new externalConnectorsExternalConnection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_connectors_external_connection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalConnectorsExternalConnection.new
            end
            ## 
            ## Gets the description property value. Description of the connection displayed in the Microsoft 365 admin center. Optional.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the connection displayed in the Microsoft 365 admin center. Optional.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activitySettings" => lambda {|n| @activity_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsActivitySettings.create_from_discriminator_value(pn) }) },
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsConfiguration.create_from_discriminator_value(pn) }) },
                    "connectorId" => lambda {|n| @connector_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "groups" => lambda {|n| @groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsExternalGroup.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsExternalItem.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsConnectionOperation.create_from_discriminator_value(pn) }) },
                    "schema" => lambda {|n| @schema = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsSchema.create_from_discriminator_value(pn) }) },
                    "searchSettings" => lambda {|n| @search_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectorsSearchSettings.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ExternalConnectorsConnectionState) },
                })
            end
            ## 
            ## Gets the groups property value. The groups property
            ## @return a external_connectors_external_group
            ## 
            def groups
                return @groups
            end
            ## 
            ## Sets the groups property value. The groups property
            ## @param value Value to set for the groups property.
            ## @return a void
            ## 
            def groups=(value)
                @groups = value
            end
            ## 
            ## Gets the items property value. The items property
            ## @return a external_connectors_external_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. The items property
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the name property value. The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the operations property value. The operations property
            ## @return a external_connectors_connection_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The operations property
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the schema property value. The schema property
            ## @return a external_connectors_schema
            ## 
            def schema
                return @schema
            end
            ## 
            ## Sets the schema property value. The schema property
            ## @param value Value to set for the schema property.
            ## @return a void
            ## 
            def schema=(value)
                @schema = value
            end
            ## 
            ## Gets the searchSettings property value. The settings configuring the search experience for content in this connection, such as the display templates for search results.
            ## @return a external_connectors_search_settings
            ## 
            def search_settings
                return @search_settings
            end
            ## 
            ## Sets the searchSettings property value. The settings configuring the search experience for content in this connection, such as the display templates for search results.
            ## @param value Value to set for the searchSettings property.
            ## @return a void
            ## 
            def search_settings=(value)
                @search_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("activitySettings", @activity_settings)
                writer.write_object_value("configuration", @configuration)
                writer.write_string_value("connectorId", @connector_id)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("groups", @groups)
                writer.write_collection_of_object_values("items", @items)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_object_value("schema", @schema)
                writer.write_object_value("searchSettings", @search_settings)
            end
            ## 
            ## Gets the state property value. Indicates the current state of the connection. Possible values are: draft, ready, obsolete, limitExceeded, unknownFutureValue.
            ## @return a external_connectors_connection_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Indicates the current state of the connection. Possible values are: draft, ready, obsolete, limitExceeded, unknownFutureValue.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
