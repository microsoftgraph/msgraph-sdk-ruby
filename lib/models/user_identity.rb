require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class UserIdentity < MicrosoftGraph::Models::Identity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates the client IP address used by user performing the activity (audit log only).
        @ip_address
        ## 
        # The userPrincipalName attribute of the user.
        @user_principal_name
        ## 
        ## Instantiates a new UserIdentity and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.userIdentity"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_identity
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserIdentity.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the ipAddress property value. Indicates the client IP address used by user performing the activity (audit log only).
        ## @return a string
        ## 
        def ip_address
            return @ip_address
        end
        ## 
        ## Sets the ipAddress property value. Indicates the client IP address used by user performing the activity (audit log only).
        ## @param value Value to set for the ip_address property.
        ## @return a void
        ## 
        def ip_address=(value)
            @ip_address = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("ipAddress", @ip_address)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userPrincipalName property value. The userPrincipalName attribute of the user.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The userPrincipalName attribute of the user.
        ## @param value Value to set for the user_principal_name property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
