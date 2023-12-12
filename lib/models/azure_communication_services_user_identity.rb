require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AzureCommunicationServicesUserIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Azure Communication Services resource ID associated with the user.
            @azure_communication_services_resource_id
            ## 
            ## Gets the azureCommunicationServicesResourceId property value. The Azure Communication Services resource ID associated with the user.
            ## @return a string
            ## 
            def azure_communication_services_resource_id
                return @azure_communication_services_resource_id
            end
            ## 
            ## Sets the azureCommunicationServicesResourceId property value. The Azure Communication Services resource ID associated with the user.
            ## @param value Value to set for the azureCommunicationServicesResourceId property.
            ## @return a void
            ## 
            def azure_communication_services_resource_id=(value)
                @azure_communication_services_resource_id = value
            end
            ## 
            ## Instantiates a new azureCommunicationServicesUserIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureCommunicationServicesUserIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_communication_services_user_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureCommunicationServicesUserIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureCommunicationServicesResourceId" => lambda {|n| @azure_communication_services_resource_id = n.get_string_value() },
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
                writer.write_string_value("azureCommunicationServicesResourceId", @azure_communication_services_resource_id)
            end
        end
    end
end
