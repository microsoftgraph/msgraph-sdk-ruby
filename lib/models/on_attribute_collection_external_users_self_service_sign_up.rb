require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnAttributeCollectionExternalUsersSelfServiceSignUp < MicrosoftGraph::Models::OnAttributeCollectionHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Required. The configuration for how attributes are displayed in the sign-up experience defined by a user flow, like the externalUsersSelfServiceSignupEventsFlow, specifically on the attribute collection page.
            @attribute_collection_page
            ## 
            # The attributes property
            @attributes
            ## 
            ## Gets the attributeCollectionPage property value. Required. The configuration for how attributes are displayed in the sign-up experience defined by a user flow, like the externalUsersSelfServiceSignupEventsFlow, specifically on the attribute collection page.
            ## @return a authentication_attribute_collection_page
            ## 
            def attribute_collection_page
                return @attribute_collection_page
            end
            ## 
            ## Sets the attributeCollectionPage property value. Required. The configuration for how attributes are displayed in the sign-up experience defined by a user flow, like the externalUsersSelfServiceSignupEventsFlow, specifically on the attribute collection page.
            ## @param value Value to set for the attributeCollectionPage property.
            ## @return a void
            ## 
            def attribute_collection_page=(value)
                @attribute_collection_page = value
            end
            ## 
            ## Gets the attributes property value. The attributes property
            ## @return a identity_user_flow_attribute
            ## 
            def attributes
                return @attributes
            end
            ## 
            ## Sets the attributes property value. The attributes property
            ## @param value Value to set for the attributes property.
            ## @return a void
            ## 
            def attributes=(value)
                @attributes = value
            end
            ## 
            ## Instantiates a new OnAttributeCollectionExternalUsersSelfServiceSignUp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_attribute_collection_external_users_self_service_sign_up
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnAttributeCollectionExternalUsersSelfServiceSignUp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attributeCollectionPage" => lambda {|n| @attribute_collection_page = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationAttributeCollectionPage.create_from_discriminator_value(pn) }) },
                    "attributes" => lambda {|n| @attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityUserFlowAttribute.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("attributeCollectionPage", @attribute_collection_page)
                writer.write_collection_of_object_values("attributes", @attributes)
            end
        end
    end
end
