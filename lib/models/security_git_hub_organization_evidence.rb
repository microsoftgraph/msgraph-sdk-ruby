require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityGitHubOrganizationEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The company property
            @company
            ## 
            # The displayName property
            @display_name
            ## 
            # The email property
            @email
            ## 
            # The login property
            @login
            ## 
            # The orgId property
            @org_id
            ## 
            # The webUrl property
            @web_url
            ## 
            ## Gets the company property value. The company property
            ## @return a string
            ## 
            def company
                return @company
            end
            ## 
            ## Sets the company property value. The company property
            ## @param value Value to set for the company property.
            ## @return a void
            ## 
            def company=(value)
                @company = value
            end
            ## 
            ## Instantiates a new securityGitHubOrganizationEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.gitHubOrganizationEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_git_hub_organization_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityGitHubOrganizationEvidence.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
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
                    "company" => lambda {|n| @company = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "login" => lambda {|n| @login = n.get_string_value() },
                    "orgId" => lambda {|n| @org_id = n.get_string_value() },
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
            ## Gets the orgId property value. The orgId property
            ## @return a string
            ## 
            def org_id
                return @org_id
            end
            ## 
            ## Sets the orgId property value. The orgId property
            ## @param value Value to set for the orgId property.
            ## @return a void
            ## 
            def org_id=(value)
                @org_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("company", @company)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_string_value("login", @login)
                writer.write_string_value("orgId", @org_id)
                writer.write_string_value("webUrl", @web_url)
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
