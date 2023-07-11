require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomCalloutExtension < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow.
            @authentication_configuration
            ## 
            # HTTP connection settings that define how long Azure AD can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed.
            @client_configuration
            ## 
            # Description for the customCalloutExtension object.
            @description
            ## 
            # Display name for the customCalloutExtension object.
            @display_name
            ## 
            # The type and details for configuring the endpoint to call the logic app's workflow.
            @endpoint_configuration
            ## 
            ## Gets the authenticationConfiguration property value. Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow.
            ## @return a custom_extension_authentication_configuration
            ## 
            def authentication_configuration
                return @authentication_configuration
            end
            ## 
            ## Sets the authenticationConfiguration property value. Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow.
            ## @param value Value to set for the authentication_configuration property.
            ## @return a void
            ## 
            def authentication_configuration=(value)
                @authentication_configuration = value
            end
            ## 
            ## Gets the clientConfiguration property value. HTTP connection settings that define how long Azure AD can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed.
            ## @return a custom_extension_client_configuration
            ## 
            def client_configuration
                return @client_configuration
            end
            ## 
            ## Sets the clientConfiguration property value. HTTP connection settings that define how long Azure AD can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed.
            ## @param value Value to set for the client_configuration property.
            ## @return a void
            ## 
            def client_configuration=(value)
                @client_configuration = value
            end
            ## 
            ## Instantiates a new customCalloutExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_callout_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension"
                            return AccessPackageAssignmentRequestWorkflowExtension.new
                        when "#microsoft.graph.accessPackageAssignmentWorkflowExtension"
                            return AccessPackageAssignmentWorkflowExtension.new
                    end
                end
                return CustomCalloutExtension.new
            end
            ## 
            ## Gets the description property value. Description for the customCalloutExtension object.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description for the customCalloutExtension object.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name for the customCalloutExtension object.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the customCalloutExtension object.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endpointConfiguration property value. The type and details for configuring the endpoint to call the logic app's workflow.
            ## @return a custom_extension_endpoint_configuration
            ## 
            def endpoint_configuration
                return @endpoint_configuration
            end
            ## 
            ## Sets the endpointConfiguration property value. The type and details for configuring the endpoint to call the logic app's workflow.
            ## @param value Value to set for the endpoint_configuration property.
            ## @return a void
            ## 
            def endpoint_configuration=(value)
                @endpoint_configuration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationConfiguration" => lambda {|n| @authentication_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionAuthenticationConfiguration.create_from_discriminator_value(pn) }) },
                    "clientConfiguration" => lambda {|n| @client_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionClientConfiguration.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endpointConfiguration" => lambda {|n| @endpoint_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionEndpointConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("authenticationConfiguration", @authentication_configuration)
                writer.write_object_value("clientConfiguration", @client_configuration)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("endpointConfiguration", @endpoint_configuration)
            end
        end
    end
end
