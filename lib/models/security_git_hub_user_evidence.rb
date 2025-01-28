require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityGitHubUserEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email property
            @email
            ## 
            # The login property
            @login
            ## 
            # The name property
            @name
            ## 
            # The userId property
            @user_id
            ## 
            # The webUrl property
            @web_url
            ## 
            ## Instantiates a new SecurityGitHubUserEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.gitHubUserEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_git_hub_user_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityGitHubUserEvidence.new
            end
            ## 
            ## Gets the email property value. The email property
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email property
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
                    "login" => lambda {|n| @login = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the login property value. The login property
            ## @return a string
            ## 
            def login
                return @login
            end
            ## 
            ## Sets the login property value. The login property
            ## @param value Value to set for the login property.
            ## @return a void
            ## 
            def login=(value)
                @login = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
                writer.write_string_value("login", @login)
                writer.write_string_value("name", @name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the webUrl property value. The webUrl property
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The webUrl property
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
