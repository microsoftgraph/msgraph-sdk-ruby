require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodsPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the settings for each authentication method. Automatically expanded on GET /policies/authenticationMethodsPolicy.
            @authentication_method_configurations
            ## 
            # A description of the policy. Read-only.
            @description
            ## 
            # The name of the policy. Read-only.
            @display_name
            ## 
            # The date and time of the last update to the policy. Read-only.
            @last_modified_date_time
            ## 
            # The state of migration of the authentication methods policy from the legacy multifactor authentication and self-service password reset (SSPR) policies. The possible values are: premigration - means the authentication methods policy is used for authentication only, legacy policies are respected. migrationInProgress - means the authentication methods policy is used for both authentication and SSPR, legacy policies are respected. migrationComplete - means the authentication methods policy is used for authentication and SSPR, legacy policies are ignored. unknownFutureValue - Evolvable enumeration sentinel value. Do not use.
            @policy_migration_state
            ## 
            # The version of the policy in use. Read-only.
            @policy_version
            ## 
            # The reconfirmationInDays property
            @reconfirmation_in_days
            ## 
            # Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.
            @registration_enforcement
            ## 
            ## Gets the authenticationMethodConfigurations property value. Represents the settings for each authentication method. Automatically expanded on GET /policies/authenticationMethodsPolicy.
            ## @return a authentication_method_configuration
            ## 
            def authentication_method_configurations
                return @authentication_method_configurations
            end
            ## 
            ## Sets the authenticationMethodConfigurations property value. Represents the settings for each authentication method. Automatically expanded on GET /policies/authenticationMethodsPolicy.
            ## @param value Value to set for the authenticationMethodConfigurations property.
            ## @return a void
            ## 
            def authentication_method_configurations=(value)
                @authentication_method_configurations = value
            end
            ## 
            ## Instantiates a new authenticationMethodsPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_methods_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationMethodsPolicy.new
            end
            ## 
            ## Gets the description property value. A description of the policy. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A description of the policy. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the policy. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the policy. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethodConfigurations" => lambda {|n| @authentication_method_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodConfiguration.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "policyMigrationState" => lambda {|n| @policy_migration_state = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodsPolicyMigrationState) },
                    "policyVersion" => lambda {|n| @policy_version = n.get_string_value() },
                    "reconfirmationInDays" => lambda {|n| @reconfirmation_in_days = n.get_number_value() },
                    "registrationEnforcement" => lambda {|n| @registration_enforcement = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RegistrationEnforcement.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time of the last update to the policy. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time of the last update to the policy. Read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the policyMigrationState property value. The state of migration of the authentication methods policy from the legacy multifactor authentication and self-service password reset (SSPR) policies. The possible values are: premigration - means the authentication methods policy is used for authentication only, legacy policies are respected. migrationInProgress - means the authentication methods policy is used for both authentication and SSPR, legacy policies are respected. migrationComplete - means the authentication methods policy is used for authentication and SSPR, legacy policies are ignored. unknownFutureValue - Evolvable enumeration sentinel value. Do not use.
            ## @return a authentication_methods_policy_migration_state
            ## 
            def policy_migration_state
                return @policy_migration_state
            end
            ## 
            ## Sets the policyMigrationState property value. The state of migration of the authentication methods policy from the legacy multifactor authentication and self-service password reset (SSPR) policies. The possible values are: premigration - means the authentication methods policy is used for authentication only, legacy policies are respected. migrationInProgress - means the authentication methods policy is used for both authentication and SSPR, legacy policies are respected. migrationComplete - means the authentication methods policy is used for authentication and SSPR, legacy policies are ignored. unknownFutureValue - Evolvable enumeration sentinel value. Do not use.
            ## @param value Value to set for the policyMigrationState property.
            ## @return a void
            ## 
            def policy_migration_state=(value)
                @policy_migration_state = value
            end
            ## 
            ## Gets the policyVersion property value. The version of the policy in use. Read-only.
            ## @return a string
            ## 
            def policy_version
                return @policy_version
            end
            ## 
            ## Sets the policyVersion property value. The version of the policy in use. Read-only.
            ## @param value Value to set for the policyVersion property.
            ## @return a void
            ## 
            def policy_version=(value)
                @policy_version = value
            end
            ## 
            ## Gets the reconfirmationInDays property value. The reconfirmationInDays property
            ## @return a integer
            ## 
            def reconfirmation_in_days
                return @reconfirmation_in_days
            end
            ## 
            ## Sets the reconfirmationInDays property value. The reconfirmationInDays property
            ## @param value Value to set for the reconfirmationInDays property.
            ## @return a void
            ## 
            def reconfirmation_in_days=(value)
                @reconfirmation_in_days = value
            end
            ## 
            ## Gets the registrationEnforcement property value. Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.
            ## @return a registration_enforcement
            ## 
            def registration_enforcement
                return @registration_enforcement
            end
            ## 
            ## Sets the registrationEnforcement property value. Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.
            ## @param value Value to set for the registrationEnforcement property.
            ## @return a void
            ## 
            def registration_enforcement=(value)
                @registration_enforcement = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("authenticationMethodConfigurations", @authentication_method_configurations) unless @authentication_method_configurations.nil?
                writer.write_string_value("description", @description) unless @description.nil?
                writer.write_string_value("displayName", @display_name) unless @display_name.nil?
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time) unless @last_modified_date_time.nil?
                writer.write_enum_value("policyMigrationState", @policy_migration_state) unless @policy_migration_state.nil?
                writer.write_string_value("policyVersion", @policy_version) unless @policy_version.nil?
                writer.write_number_value("reconfirmationInDays", @reconfirmation_in_days) unless @reconfirmation_in_days.nil?
                writer.write_object_value("registrationEnforcement", @registration_enforcement) unless @registration_enforcement.nil?
            end
        end
    end
end
