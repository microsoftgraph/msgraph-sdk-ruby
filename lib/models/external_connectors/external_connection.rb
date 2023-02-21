require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './external_connectors'

module MicrosoftGraph
    module Models
        module ExternalConnectors
            class ExternalConnection < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional.
                @configuration
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
                # Indicates the current state of the connection. Possible values are: draft, ready, obsolete, limitExceeded, unknownFutureValue.
                @state
                ## 
                ## Gets the configuration property value. Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional.
                ## @return a configuration
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
                ## Instantiates a new externalConnection and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a external_connection
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ExternalConnection.new
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
                        "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::Configuration.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "groups" => lambda {|n| @groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::ExternalGroup.create_from_discriminator_value(pn) }) },
                        "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::ExternalItem.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::ConnectionOperation.create_from_discriminator_value(pn) }) },
                        "schema" => lambda {|n| @schema = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ExternalConnectors::Schema.create_from_discriminator_value(pn) }) },
                        "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ExternalConnectors::ConnectionState) },
                    })
                end
                ## 
                ## Gets the groups property value. The groups property
                ## @return a external_group
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
                ## @return a external_item
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
                ## @return a connection_operation
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
                ## @return a schema
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("configuration", @configuration)
                    writer.write_string_value("description", @description)
                    writer.write_collection_of_object_values("groups", @groups)
                    writer.write_collection_of_object_values("items", @items)
                    writer.write_string_value("name", @name)
                    writer.write_collection_of_object_values("operations", @operations)
                    writer.write_object_value("schema", @schema)
                end
                ## 
                ## Gets the state property value. Indicates the current state of the connection. Possible values are: draft, ready, obsolete, limitExceeded, unknownFutureValue.
                ## @return a connection_state
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
end
