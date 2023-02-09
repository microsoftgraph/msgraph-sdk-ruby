require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodsRegistrationCampaign
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Users and groups of users that are excluded from being prompted to set up the authentication method.
            @exclude_targets
            ## 
            # Users and groups of users that are prompted to set up the authentication method.
            @include_targets
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the number of days that the user sees a prompt again if they select 'Not now' and snoozes the prompt. Minimum: 0 days. Maximum: 14 days. If the value is '0', the user is prompted during every MFA attempt.
            @snooze_duration_in_days
            ## 
            # The state property
            @state
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new authenticationMethodsRegistrationCampaign and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication_methods_registration_campaign
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationMethodsRegistrationCampaign.new
            end
            ## 
            ## Gets the excludeTargets property value. Users and groups of users that are excluded from being prompted to set up the authentication method.
            ## @return a exclude_target
            ## 
            def exclude_targets
                return @exclude_targets
            end
            ## 
            ## Sets the excludeTargets property value. Users and groups of users that are excluded from being prompted to set up the authentication method.
            ## @param value Value to set for the exclude_targets property.
            ## @return a void
            ## 
            def exclude_targets=(value)
                @exclude_targets = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "excludeTargets" => lambda {|n| @exclude_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ExcludeTarget.create_from_discriminator_value(pn) }) },
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodsRegistrationCampaignIncludeTarget.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "snoozeDurationInDays" => lambda {|n| @snooze_duration_in_days = n.get_number_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AdvancedConfigState) },
                }
            end
            ## 
            ## Gets the includeTargets property value. Users and groups of users that are prompted to set up the authentication method.
            ## @return a authentication_methods_registration_campaign_include_target
            ## 
            def include_targets
                return @include_targets
            end
            ## 
            ## Sets the includeTargets property value. Users and groups of users that are prompted to set up the authentication method.
            ## @param value Value to set for the include_targets property.
            ## @return a void
            ## 
            def include_targets=(value)
                @include_targets = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("excludeTargets", @exclude_targets)
                writer.write_collection_of_object_values("includeTargets", @include_targets)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("snoozeDurationInDays", @snooze_duration_in_days)
                writer.write_enum_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the snoozeDurationInDays property value. Specifies the number of days that the user sees a prompt again if they select 'Not now' and snoozes the prompt. Minimum: 0 days. Maximum: 14 days. If the value is '0', the user is prompted during every MFA attempt.
            ## @return a integer
            ## 
            def snooze_duration_in_days
                return @snooze_duration_in_days
            end
            ## 
            ## Sets the snoozeDurationInDays property value. Specifies the number of days that the user sees a prompt again if they select 'Not now' and snoozes the prompt. Minimum: 0 days. Maximum: 14 days. If the value is '0', the user is prompted during every MFA attempt.
            ## @param value Value to set for the snooze_duration_in_days property.
            ## @return a void
            ## 
            def snooze_duration_in_days=(value)
                @snooze_duration_in_days = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a advanced_config_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
