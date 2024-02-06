require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityGitHubRepoEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The baseUrl property
            @base_url
            ## 
            # The login property
            @login
            ## 
            # The owner property
            @owner
            ## 
            # The ownerType property
            @owner_type
            ## 
            # The repoId property
            @repo_id
            ## 
            ## Gets the baseUrl property value. The baseUrl property
            ## @return a string
            ## 
            def base_url
                return @base_url
            end
            ## 
            ## Sets the baseUrl property value. The baseUrl property
            ## @param value Value to set for the baseUrl property.
            ## @return a void
            ## 
            def base_url=(value)
                @base_url = value
            end
            ## 
            ## Instantiates a new securityGitHubRepoEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.gitHubRepoEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_git_hub_repo_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityGitHubRepoEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "baseUrl" => lambda {|n| @base_url = n.get_string_value() },
                    "login" => lambda {|n| @login = n.get_string_value() },
                    "owner" => lambda {|n| @owner = n.get_string_value() },
                    "ownerType" => lambda {|n| @owner_type = n.get_string_value() },
                    "repoId" => lambda {|n| @repo_id = n.get_string_value() },
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
            ## Gets the owner property value. The owner property
            ## @return a string
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. The owner property
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the ownerType property value. The ownerType property
            ## @return a string
            ## 
            def owner_type
                return @owner_type
            end
            ## 
            ## Sets the ownerType property value. The ownerType property
            ## @param value Value to set for the ownerType property.
            ## @return a void
            ## 
            def owner_type=(value)
                @owner_type = value
            end
            ## 
            ## Gets the repoId property value. The repoId property
            ## @return a string
            ## 
            def repo_id
                return @repo_id
            end
            ## 
            ## Sets the repoId property value. The repoId property
            ## @param value Value to set for the repoId property.
            ## @return a void
            ## 
            def repo_id=(value)
                @repo_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("baseUrl", @base_url)
                writer.write_string_value("login", @login)
                writer.write_string_value("owner", @owner)
                writer.write_string_value("ownerType", @owner_type)
                writer.write_string_value("repoId", @repo_id)
            end
        end
    end
end
