require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnUserCreateStartExternalUsersSelfServiceSignUp < MicrosoftGraph::Models::OnUserCreateStartHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The type of user to create. Maps to userType property of user object. The possible values are: member, guest, unknownFutureValue.
            @user_type_to_create
            ## 
            ## Instantiates a new OnUserCreateStartExternalUsersSelfServiceSignUp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_user_create_start_external_users_self_service_sign_up
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnUserCreateStartExternalUsersSelfServiceSignUp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userTypeToCreate" => lambda {|n| @user_type_to_create = n.get_enum_value(MicrosoftGraph::Models::UserType) },
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
                writer.write_enum_value("userTypeToCreate", @user_type_to_create)
            end
            ## 
            ## Gets the userTypeToCreate property value. The type of user to create. Maps to userType property of user object. The possible values are: member, guest, unknownFutureValue.
            ## @return a user_type
            ## 
            def user_type_to_create
                return @user_type_to_create
            end
            ## 
            ## Sets the userTypeToCreate property value. The type of user to create. Maps to userType property of user object. The possible values are: member, guest, unknownFutureValue.
            ## @param value Value to set for the userTypeToCreate property.
            ## @return a void
            ## 
            def user_type_to_create=(value)
                @user_type_to_create = value
            end
        end
    end
end
