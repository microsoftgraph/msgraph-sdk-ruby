require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AzureCommunicationServicesUserConversationMember < MicrosoftGraph::Models::ConversationMember
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Azure Communication Services ID of the user.
            @azure_communication_services_id
            ## 
            ## Gets the azureCommunicationServicesId property value. Azure Communication Services ID of the user.
            ## @return a string
            ## 
            def azure_communication_services_id
                return @azure_communication_services_id
            end
            ## 
            ## Sets the azureCommunicationServicesId property value. Azure Communication Services ID of the user.
            ## @param value Value to set for the azure_communication_services_id property.
            ## @return a void
            ## 
            def azure_communication_services_id=(value)
                @azure_communication_services_id = value
            end
            ## 
            ## Instantiates a new AzureCommunicationServicesUserConversationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureCommunicationServicesUserConversationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a azure_communication_services_user_conversation_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureCommunicationServicesUserConversationMember.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureCommunicationServicesId" => lambda {|n| @azure_communication_services_id = n.get_string_value() },
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
                writer.write_string_value("azureCommunicationServicesId", @azure_communication_services_id)
            end
        end
    end
end
