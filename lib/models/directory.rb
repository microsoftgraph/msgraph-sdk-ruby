require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Directory < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Conceptual container for user and group directory objects.
            @administrative_units
            ## 
            # Group of related custom security attribute definitions.
            @attribute_sets
            ## 
            # Schema of a custom security attributes (key-value pairs).
            @custom_security_attribute_definitions
            ## 
            # Recently deleted items. Read-only. Nullable.
            @deleted_items
            ## 
            # The credentials of the device's local administrator account backed up to Microsoft Entra ID.
            @device_local_credentials
            ## 
            # Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            @federation_configurations
            ## 
            # A container for on-premises directory synchronization functionalities that are available for the organization.
            @on_premises_synchronization
            ## 
            # List of commercial subscriptions that an organization acquired.
            @subscriptions
            ## 
            ## Gets the administrativeUnits property value. Conceptual container for user and group directory objects.
            ## @return a administrative_unit
            ## 
            def administrative_units
                return @administrative_units
            end
            ## 
            ## Sets the administrativeUnits property value. Conceptual container for user and group directory objects.
            ## @param value Value to set for the administrativeUnits property.
            ## @return a void
            ## 
            def administrative_units=(value)
                @administrative_units = value
            end
            ## 
            ## Gets the attributeSets property value. Group of related custom security attribute definitions.
            ## @return a attribute_set
            ## 
            def attribute_sets
                return @attribute_sets
            end
            ## 
            ## Sets the attributeSets property value. Group of related custom security attribute definitions.
            ## @param value Value to set for the attributeSets property.
            ## @return a void
            ## 
            def attribute_sets=(value)
                @attribute_sets = value
            end
            ## 
            ## Instantiates a new Directory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a directory
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Directory.new
            end
            ## 
            ## Gets the customSecurityAttributeDefinitions property value. Schema of a custom security attributes (key-value pairs).
            ## @return a custom_security_attribute_definition
            ## 
            def custom_security_attribute_definitions
                return @custom_security_attribute_definitions
            end
            ## 
            ## Sets the customSecurityAttributeDefinitions property value. Schema of a custom security attributes (key-value pairs).
            ## @param value Value to set for the customSecurityAttributeDefinitions property.
            ## @return a void
            ## 
            def custom_security_attribute_definitions=(value)
                @custom_security_attribute_definitions = value
            end
            ## 
            ## Gets the deletedItems property value. Recently deleted items. Read-only. Nullable.
            ## @return a directory_object
            ## 
            def deleted_items
                return @deleted_items
            end
            ## 
            ## Sets the deletedItems property value. Recently deleted items. Read-only. Nullable.
            ## @param value Value to set for the deletedItems property.
            ## @return a void
            ## 
            def deleted_items=(value)
                @deleted_items = value
            end
            ## 
            ## Gets the deviceLocalCredentials property value. The credentials of the device's local administrator account backed up to Microsoft Entra ID.
            ## @return a device_local_credential_info
            ## 
            def device_local_credentials
                return @device_local_credentials
            end
            ## 
            ## Sets the deviceLocalCredentials property value. The credentials of the device's local administrator account backed up to Microsoft Entra ID.
            ## @param value Value to set for the deviceLocalCredentials property.
            ## @return a void
            ## 
            def device_local_credentials=(value)
                @device_local_credentials = value
            end
            ## 
            ## Gets the federationConfigurations property value. Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            ## @return a identity_provider_base
            ## 
            def federation_configurations
                return @federation_configurations
            end
            ## 
            ## Sets the federationConfigurations property value. Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            ## @param value Value to set for the federationConfigurations property.
            ## @return a void
            ## 
            def federation_configurations=(value)
                @federation_configurations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "administrativeUnits" => lambda {|n| @administrative_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AdministrativeUnit.create_from_discriminator_value(pn) }) },
                    "attributeSets" => lambda {|n| @attribute_sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttributeSet.create_from_discriminator_value(pn) }) },
                    "customSecurityAttributeDefinitions" => lambda {|n| @custom_security_attribute_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CustomSecurityAttributeDefinition.create_from_discriminator_value(pn) }) },
                    "deletedItems" => lambda {|n| @deleted_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "deviceLocalCredentials" => lambda {|n| @device_local_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceLocalCredentialInfo.create_from_discriminator_value(pn) }) },
                    "federationConfigurations" => lambda {|n| @federation_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                    "onPremisesSynchronization" => lambda {|n| @on_premises_synchronization = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnPremisesDirectorySynchronization.create_from_discriminator_value(pn) }) },
                    "subscriptions" => lambda {|n| @subscriptions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CompanySubscription.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the onPremisesSynchronization property value. A container for on-premises directory synchronization functionalities that are available for the organization.
            ## @return a on_premises_directory_synchronization
            ## 
            def on_premises_synchronization
                return @on_premises_synchronization
            end
            ## 
            ## Sets the onPremisesSynchronization property value. A container for on-premises directory synchronization functionalities that are available for the organization.
            ## @param value Value to set for the onPremisesSynchronization property.
            ## @return a void
            ## 
            def on_premises_synchronization=(value)
                @on_premises_synchronization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("administrativeUnits", @administrative_units)
                writer.write_collection_of_object_values("attributeSets", @attribute_sets)
                writer.write_collection_of_object_values("customSecurityAttributeDefinitions", @custom_security_attribute_definitions)
                writer.write_collection_of_object_values("deletedItems", @deleted_items)
                writer.write_collection_of_object_values("deviceLocalCredentials", @device_local_credentials)
                writer.write_collection_of_object_values("federationConfigurations", @federation_configurations)
                writer.write_collection_of_object_values("onPremisesSynchronization", @on_premises_synchronization)
                writer.write_collection_of_object_values("subscriptions", @subscriptions)
            end
            ## 
            ## Gets the subscriptions property value. List of commercial subscriptions that an organization acquired.
            ## @return a company_subscription
            ## 
            def subscriptions
                return @subscriptions
            end
            ## 
            ## Sets the subscriptions property value. List of commercial subscriptions that an organization acquired.
            ## @param value Value to set for the subscriptions property.
            ## @return a void
            ## 
            def subscriptions=(value)
                @subscriptions = value
            end
        end
    end
end
