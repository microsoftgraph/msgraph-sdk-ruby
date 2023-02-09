require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AadUserConversationMember < MicrosoftGraph::Models::ConversationMember
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email address of the user.
            @email
            ## 
            # TenantId which the Azure AD user belongs to.
            @tenant_id
            ## 
            # The user property
            @user
            ## 
            # The guid of the user.
            @user_id
            ## 
            ## Instantiates a new AadUserConversationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.aadUserConversationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a aad_user_conversation_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AadUserConversationMember.new
            end
            ## 
            ## Gets the email property value. The email address of the user.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address of the user.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
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
                writer.write_string_value("email", @email)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_object_value("user", @user)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the tenantId property value. TenantId which the Azure AD user belongs to.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. TenantId which the Azure AD user belongs to.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the user property value. The user property
            ## @return a user
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. The user property
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
            ## 
            ## Gets the userId property value. The guid of the user.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The guid of the user.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
