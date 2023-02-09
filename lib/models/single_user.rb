require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SingleUser < MicrosoftGraph::Models::SubjectSet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the user in Azure AD. Read only.
            @description
            ## 
            # The ID of the user in Azure AD.
            @user_id
            ## 
            ## Instantiates a new SingleUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.singleUser"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a single_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SingleUser.new
            end
            ## 
            ## Gets the description property value. The name of the user in Azure AD. Read only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The name of the user in Azure AD. Read only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
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
                writer.write_string_value("description", @description)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. The ID of the user in Azure AD.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The ID of the user in Azure AD.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
