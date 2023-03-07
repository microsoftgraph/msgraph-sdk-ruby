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
            # Recently deleted items. Read-only. Nullable.
            @deleted_items
            ## 
            # Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            @federation_configurations
            ## 
            # A container for on-premises directory synchronization functionalities that are available for the organization.
            @on_premises_synchronization
            ## 
            ## Gets the administrativeUnits property value. Conceptual container for user and group directory objects.
            ## @return a administrative_unit
            ## 
            def administrative_units
                return @administrative_units
            end
            ## 
            ## Sets the administrativeUnits property value. Conceptual container for user and group directory objects.
            ## @param value Value to set for the administrative_units property.
            ## @return a void
            ## 
            def administrative_units=(value)
                @administrative_units = value
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
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a directory
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Directory.new
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
            ## @param value Value to set for the deleted_items property.
            ## @return a void
            ## 
            def deleted_items=(value)
                @deleted_items = value
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
            ## @param value Value to set for the federation_configurations property.
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
                    "deletedItems" => lambda {|n| @deleted_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "federationConfigurations" => lambda {|n| @federation_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                    "onPremisesSynchronization" => lambda {|n| @on_premises_synchronization = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnPremisesDirectorySynchronization.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the on_premises_synchronization property.
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
                writer.write_collection_of_object_values("deletedItems", @deleted_items)
                writer.write_collection_of_object_values("federationConfigurations", @federation_configurations)
                writer.write_collection_of_object_values("onPremisesSynchronization", @on_premises_synchronization)
            end
        end
    end
end
