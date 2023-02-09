require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TemporaryAccessPassAuthenticationMethodConfiguration < MicrosoftGraph::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Default length in characters of a Temporary Access Pass object. Must be between 8 and 48 characters.
            @default_length
            ## 
            # Default lifetime in minutes for a Temporary Access Pass. Value can be any integer between the minimumLifetimeInMinutes and maximumLifetimeInMinutes.
            @default_lifetime_in_minutes
            ## 
            # A collection of groups that are enabled to use the authentication method.
            @include_targets
            ## 
            # If true, all the passes in the tenant will be restricted to one-time use. If false, passes in the tenant can be created to be either one-time use or reusable.
            @is_usable_once
            ## 
            # Maximum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).
            @maximum_lifetime_in_minutes
            ## 
            # Minimum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).
            @minimum_lifetime_in_minutes
            ## 
            ## Instantiates a new TemporaryAccessPassAuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a temporary_access_pass_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TemporaryAccessPassAuthenticationMethodConfiguration.new
            end
            ## 
            ## Gets the defaultLength property value. Default length in characters of a Temporary Access Pass object. Must be between 8 and 48 characters.
            ## @return a integer
            ## 
            def default_length
                return @default_length
            end
            ## 
            ## Sets the defaultLength property value. Default length in characters of a Temporary Access Pass object. Must be between 8 and 48 characters.
            ## @param value Value to set for the default_length property.
            ## @return a void
            ## 
            def default_length=(value)
                @default_length = value
            end
            ## 
            ## Gets the defaultLifetimeInMinutes property value. Default lifetime in minutes for a Temporary Access Pass. Value can be any integer between the minimumLifetimeInMinutes and maximumLifetimeInMinutes.
            ## @return a integer
            ## 
            def default_lifetime_in_minutes
                return @default_lifetime_in_minutes
            end
            ## 
            ## Sets the defaultLifetimeInMinutes property value. Default lifetime in minutes for a Temporary Access Pass. Value can be any integer between the minimumLifetimeInMinutes and maximumLifetimeInMinutes.
            ## @param value Value to set for the default_lifetime_in_minutes property.
            ## @return a void
            ## 
            def default_lifetime_in_minutes=(value)
                @default_lifetime_in_minutes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultLength" => lambda {|n| @default_length = n.get_number_value() },
                    "defaultLifetimeInMinutes" => lambda {|n| @default_lifetime_in_minutes = n.get_number_value() },
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
                    "isUsableOnce" => lambda {|n| @is_usable_once = n.get_boolean_value() },
                    "maximumLifetimeInMinutes" => lambda {|n| @maximum_lifetime_in_minutes = n.get_number_value() },
                    "minimumLifetimeInMinutes" => lambda {|n| @minimum_lifetime_in_minutes = n.get_number_value() },
                })
            end
            ## 
            ## Gets the includeTargets property value. A collection of groups that are enabled to use the authentication method.
            ## @return a authentication_method_target
            ## 
            def include_targets
                return @include_targets
            end
            ## 
            ## Sets the includeTargets property value. A collection of groups that are enabled to use the authentication method.
            ## @param value Value to set for the include_targets property.
            ## @return a void
            ## 
            def include_targets=(value)
                @include_targets = value
            end
            ## 
            ## Gets the isUsableOnce property value. If true, all the passes in the tenant will be restricted to one-time use. If false, passes in the tenant can be created to be either one-time use or reusable.
            ## @return a boolean
            ## 
            def is_usable_once
                return @is_usable_once
            end
            ## 
            ## Sets the isUsableOnce property value. If true, all the passes in the tenant will be restricted to one-time use. If false, passes in the tenant can be created to be either one-time use or reusable.
            ## @param value Value to set for the is_usable_once property.
            ## @return a void
            ## 
            def is_usable_once=(value)
                @is_usable_once = value
            end
            ## 
            ## Gets the maximumLifetimeInMinutes property value. Maximum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).
            ## @return a integer
            ## 
            def maximum_lifetime_in_minutes
                return @maximum_lifetime_in_minutes
            end
            ## 
            ## Sets the maximumLifetimeInMinutes property value. Maximum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).
            ## @param value Value to set for the maximum_lifetime_in_minutes property.
            ## @return a void
            ## 
            def maximum_lifetime_in_minutes=(value)
                @maximum_lifetime_in_minutes = value
            end
            ## 
            ## Gets the minimumLifetimeInMinutes property value. Minimum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).
            ## @return a integer
            ## 
            def minimum_lifetime_in_minutes
                return @minimum_lifetime_in_minutes
            end
            ## 
            ## Sets the minimumLifetimeInMinutes property value. Minimum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).
            ## @param value Value to set for the minimum_lifetime_in_minutes property.
            ## @return a void
            ## 
            def minimum_lifetime_in_minutes=(value)
                @minimum_lifetime_in_minutes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("defaultLength", @default_length)
                writer.write_number_value("defaultLifetimeInMinutes", @default_lifetime_in_minutes)
                writer.write_collection_of_object_values("includeTargets", @include_targets)
                writer.write_boolean_value("isUsableOnce", @is_usable_once)
                writer.write_number_value("maximumLifetimeInMinutes", @maximum_lifetime_in_minutes)
                writer.write_number_value("minimumLifetimeInMinutes", @minimum_lifetime_in_minutes)
            end
        end
    end
end
