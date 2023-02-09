require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EntitlementManagementSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If externalUserLifecycleAction is blockSignInAndDelete, the duration, typically a number of days, after an external user is blocked from sign in before their account is deleted.
            @duration_until_external_user_deleted_after_blocked
            ## 
            # Automatic action that the service should take when an external user's last access package assignment is removed. The possible values are: none, blockSignIn, blockSignInAndDelete, unknownFutureValue.
            @external_user_lifecycle_action
            ## 
            ## Instantiates a new entitlementManagementSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a entitlement_management_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EntitlementManagementSettings.new
            end
            ## 
            ## Gets the durationUntilExternalUserDeletedAfterBlocked property value. If externalUserLifecycleAction is blockSignInAndDelete, the duration, typically a number of days, after an external user is blocked from sign in before their account is deleted.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration_until_external_user_deleted_after_blocked
                return @duration_until_external_user_deleted_after_blocked
            end
            ## 
            ## Sets the durationUntilExternalUserDeletedAfterBlocked property value. If externalUserLifecycleAction is blockSignInAndDelete, the duration, typically a number of days, after an external user is blocked from sign in before their account is deleted.
            ## @param value Value to set for the duration_until_external_user_deleted_after_blocked property.
            ## @return a void
            ## 
            def duration_until_external_user_deleted_after_blocked=(value)
                @duration_until_external_user_deleted_after_blocked = value
            end
            ## 
            ## Gets the externalUserLifecycleAction property value. Automatic action that the service should take when an external user's last access package assignment is removed. The possible values are: none, blockSignIn, blockSignInAndDelete, unknownFutureValue.
            ## @return a access_package_external_user_lifecycle_action
            ## 
            def external_user_lifecycle_action
                return @external_user_lifecycle_action
            end
            ## 
            ## Sets the externalUserLifecycleAction property value. Automatic action that the service should take when an external user's last access package assignment is removed. The possible values are: none, blockSignIn, blockSignInAndDelete, unknownFutureValue.
            ## @param value Value to set for the external_user_lifecycle_action property.
            ## @return a void
            ## 
            def external_user_lifecycle_action=(value)
                @external_user_lifecycle_action = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "durationUntilExternalUserDeletedAfterBlocked" => lambda {|n| @duration_until_external_user_deleted_after_blocked = n.get_duration_value() },
                    "externalUserLifecycleAction" => lambda {|n| @external_user_lifecycle_action = n.get_enum_value(MicrosoftGraph::Models::AccessPackageExternalUserLifecycleAction) },
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
                writer.write_duration_value("durationUntilExternalUserDeletedAfterBlocked", @duration_until_external_user_deleted_after_blocked)
                writer.write_enum_value("externalUserLifecycleAction", @external_user_lifecycle_action)
            end
        end
    end
end
