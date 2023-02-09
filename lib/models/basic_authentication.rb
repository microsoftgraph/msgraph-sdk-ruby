require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BasicAuthentication < MicrosoftGraph::Models::ApiAuthenticationConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The password. It is not returned in the responses.
            @password
            ## 
            # The username.
            @username
            ## 
            ## Instantiates a new BasicAuthentication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.basicAuthentication"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a basic_authentication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BasicAuthentication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "password" => lambda {|n| @password = n.get_string_value() },
                    "username" => lambda {|n| @username = n.get_string_value() },
                })
            end
            ## 
            ## Gets the password property value. The password. It is not returned in the responses.
            ## @return a string
            ## 
            def password
                return @password
            end
            ## 
            ## Sets the password property value. The password. It is not returned in the responses.
            ## @param value Value to set for the password property.
            ## @return a void
            ## 
            def password=(value)
                @password = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("password", @password)
                writer.write_string_value("username", @username)
            end
            ## 
            ## Gets the username property value. The username.
            ## @return a string
            ## 
            def username
                return @username
            end
            ## 
            ## Sets the username property value. The username.
            ## @param value Value to set for the username property.
            ## @return a void
            ## 
            def username=(value)
                @username = value
            end
        end
    end
end
