require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SkypeForBusinessUserConversationMember < MicrosoftGraph::Models::ConversationMember
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ID of the tenant that the user belongs to.
            @tenant_id
            ## 
            # Azure Active Directory ID of the user.
            @user_id
            ## 
            ## Instantiates a new SkypeForBusinessUserConversationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.skypeForBusinessUserConversationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a skype_for_business_user_conversation_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SkypeForBusinessUserConversationMember.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the tenantId property value. ID of the tenant that the user belongs to.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. ID of the tenant that the user belongs to.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the userId property value. Azure Active Directory ID of the user.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. Azure Active Directory ID of the user.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
