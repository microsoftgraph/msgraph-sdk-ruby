require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftAuthenticatorAuthenticationMethodConfiguration < MicrosoftGraph::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only.
            @feature_settings
            ## 
            # A collection of groups that are enabled to use the authentication method. Expanded by default.
            @include_targets
            ## 
            ## Instantiates a new microsoftAuthenticatorAuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_authenticator_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftAuthenticatorAuthenticationMethodConfiguration.new
            end
            ## 
            ## Gets the featureSettings property value. A collection of Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only.
            ## @return a microsoft_authenticator_feature_settings
            ## 
            def feature_settings
                return @feature_settings
            end
            ## 
            ## Sets the featureSettings property value. A collection of Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only.
            ## @param value Value to set for the feature_settings property.
            ## @return a void
            ## 
            def feature_settings=(value)
                @feature_settings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "featureSettings" => lambda {|n| @feature_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MicrosoftAuthenticatorFeatureSettings.create_from_discriminator_value(pn) }) },
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MicrosoftAuthenticatorAuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the includeTargets property value. A collection of groups that are enabled to use the authentication method. Expanded by default.
            ## @return a microsoft_authenticator_authentication_method_target
            ## 
            def include_targets
                return @include_targets
            end
            ## 
            ## Sets the includeTargets property value. A collection of groups that are enabled to use the authentication method. Expanded by default.
            ## @param value Value to set for the include_targets property.
            ## @return a void
            ## 
            def include_targets=(value)
                @include_targets = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("featureSettings", @feature_settings)
                writer.write_collection_of_object_values("includeTargets", @include_targets)
            end
        end
    end
end
