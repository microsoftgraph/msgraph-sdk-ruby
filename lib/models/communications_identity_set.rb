require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CommunicationsIdentitySet < MicrosoftGraph::Models::IdentitySet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The application instance associated with this action.
            @application_instance
            ## 
            # An identity the participant would like to present itself as to the other participants in the call.
            @asserted_identity
            ## 
            # The Azure Communication Services user associated with this action.
            @azure_communication_services_user
            ## 
            # The encrypted user associated with this action.
            @encrypted
            ## 
            # Type of endpoint that the participant uses. Possible values are: default, voicemail, skypeForBusiness, skypeForBusinessVoipPhone, unknownFutureValue.
            @endpoint_type
            ## 
            # The guest user associated with this action.
            @guest
            ## 
            # The Skype for Business on-premises user associated with this action.
            @on_premises
            ## 
            # The phone user associated with this action.
            @phone
            ## 
            ## Gets the applicationInstance property value. The application instance associated with this action.
            ## @return a identity
            ## 
            def application_instance
                return @application_instance
            end
            ## 
            ## Sets the applicationInstance property value. The application instance associated with this action.
            ## @param value Value to set for the applicationInstance property.
            ## @return a void
            ## 
            def application_instance=(value)
                @application_instance = value
            end
            ## 
            ## Gets the assertedIdentity property value. An identity the participant would like to present itself as to the other participants in the call.
            ## @return a identity
            ## 
            def asserted_identity
                return @asserted_identity
            end
            ## 
            ## Sets the assertedIdentity property value. An identity the participant would like to present itself as to the other participants in the call.
            ## @param value Value to set for the assertedIdentity property.
            ## @return a void
            ## 
            def asserted_identity=(value)
                @asserted_identity = value
            end
            ## 
            ## Gets the azureCommunicationServicesUser property value. The Azure Communication Services user associated with this action.
            ## @return a identity
            ## 
            def azure_communication_services_user
                return @azure_communication_services_user
            end
            ## 
            ## Sets the azureCommunicationServicesUser property value. The Azure Communication Services user associated with this action.
            ## @param value Value to set for the azureCommunicationServicesUser property.
            ## @return a void
            ## 
            def azure_communication_services_user=(value)
                @azure_communication_services_user = value
            end
            ## 
            ## Instantiates a new communicationsIdentitySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.communicationsIdentitySet"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a communications_identity_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CommunicationsIdentitySet.new
            end
            ## 
            ## Gets the encrypted property value. The encrypted user associated with this action.
            ## @return a identity
            ## 
            def encrypted
                return @encrypted
            end
            ## 
            ## Sets the encrypted property value. The encrypted user associated with this action.
            ## @param value Value to set for the encrypted property.
            ## @return a void
            ## 
            def encrypted=(value)
                @encrypted = value
            end
            ## 
            ## Gets the endpointType property value. Type of endpoint that the participant uses. Possible values are: default, voicemail, skypeForBusiness, skypeForBusinessVoipPhone, unknownFutureValue.
            ## @return a endpoint_type
            ## 
            def endpoint_type
                return @endpoint_type
            end
            ## 
            ## Sets the endpointType property value. Type of endpoint that the participant uses. Possible values are: default, voicemail, skypeForBusiness, skypeForBusinessVoipPhone, unknownFutureValue.
            ## @param value Value to set for the endpointType property.
            ## @return a void
            ## 
            def endpoint_type=(value)
                @endpoint_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationInstance" => lambda {|n| @application_instance = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "assertedIdentity" => lambda {|n| @asserted_identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "azureCommunicationServicesUser" => lambda {|n| @azure_communication_services_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "encrypted" => lambda {|n| @encrypted = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "endpointType" => lambda {|n| @endpoint_type = n.get_enum_value(MicrosoftGraph::Models::EndpointType) },
                    "guest" => lambda {|n| @guest = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "onPremises" => lambda {|n| @on_premises = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "phone" => lambda {|n| @phone = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the guest property value. The guest user associated with this action.
            ## @return a identity
            ## 
            def guest
                return @guest
            end
            ## 
            ## Sets the guest property value. The guest user associated with this action.
            ## @param value Value to set for the guest property.
            ## @return a void
            ## 
            def guest=(value)
                @guest = value
            end
            ## 
            ## Gets the onPremises property value. The Skype for Business on-premises user associated with this action.
            ## @return a identity
            ## 
            def on_premises
                return @on_premises
            end
            ## 
            ## Sets the onPremises property value. The Skype for Business on-premises user associated with this action.
            ## @param value Value to set for the onPremises property.
            ## @return a void
            ## 
            def on_premises=(value)
                @on_premises = value
            end
            ## 
            ## Gets the phone property value. The phone user associated with this action.
            ## @return a identity
            ## 
            def phone
                return @phone
            end
            ## 
            ## Sets the phone property value. The phone user associated with this action.
            ## @param value Value to set for the phone property.
            ## @return a void
            ## 
            def phone=(value)
                @phone = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("applicationInstance", @application_instance)
                writer.write_object_value("assertedIdentity", @asserted_identity)
                writer.write_object_value("azureCommunicationServicesUser", @azure_communication_services_user)
                writer.write_object_value("encrypted", @encrypted)
                writer.write_enum_value("endpointType", @endpoint_type)
                writer.write_object_value("guest", @guest)
                writer.write_object_value("onPremises", @on_premises)
                writer.write_object_value("phone", @phone)
            end
        end
    end
end
