require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EmailAuthenticationMethodConfiguration < MicrosoftGraph::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Determines whether email OTP is usable by external users for authentication. Possible values are: default, enabled, disabled, unknownFutureValue. Tenants in the default state who did not use public preview will automatically have email OTP enabled beginning in October 2021.
            @allow_external_id_to_use_email_otp
            ## 
            # A collection of groups that are enabled to use the authentication method.
            @include_targets
            ## 
            ## Gets the allowExternalIdToUseEmailOtp property value. Determines whether email OTP is usable by external users for authentication. Possible values are: default, enabled, disabled, unknownFutureValue. Tenants in the default state who did not use public preview will automatically have email OTP enabled beginning in October 2021.
            ## @return a external_email_otp_state
            ## 
            def allow_external_id_to_use_email_otp
                return @allow_external_id_to_use_email_otp
            end
            ## 
            ## Sets the allowExternalIdToUseEmailOtp property value. Determines whether email OTP is usable by external users for authentication. Possible values are: default, enabled, disabled, unknownFutureValue. Tenants in the default state who did not use public preview will automatically have email OTP enabled beginning in October 2021.
            ## @param value Value to set for the allow_external_id_to_use_email_otp property.
            ## @return a void
            ## 
            def allow_external_id_to_use_email_otp=(value)
                @allow_external_id_to_use_email_otp = value
            end
            ## 
            ## Instantiates a new EmailAuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.emailAuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a email_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmailAuthenticationMethodConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowExternalIdToUseEmailOtp" => lambda {|n| @allow_external_id_to_use_email_otp = n.get_enum_value(MicrosoftGraph::Models::ExternalEmailOtpState) },
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("allowExternalIdToUseEmailOtp", @allow_external_id_to_use_email_otp)
                writer.write_collection_of_object_values("includeTargets", @include_targets)
            end
        end
    end
end
