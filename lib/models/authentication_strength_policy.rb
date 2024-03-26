require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationStrengthPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of authentication method modes that are required be used to satify this authentication strength.
            @allowed_combinations
            ## 
            # Settings that may be used to require specific types or instances of an authentication method to be used when authenticating with a specified combination of authentication methods.
            @combination_configurations
            ## 
            # The datetime when this policy was created.
            @created_date_time
            ## 
            # The human-readable description of this policy.
            @description
            ## 
            # The human-readable display name of this policy. Supports $filter (eq, ne, not , and in).
            @display_name
            ## 
            # The datetime when this policy was last modified.
            @modified_date_time
            ## 
            # The policyType property
            @policy_type
            ## 
            # The requirementsSatisfied property
            @requirements_satisfied
            ## 
            ## Gets the allowedCombinations property value. A collection of authentication method modes that are required be used to satify this authentication strength.
            ## @return a authentication_method_modes
            ## 
            def allowed_combinations
                return @allowed_combinations
            end
            ## 
            ## Sets the allowedCombinations property value. A collection of authentication method modes that are required be used to satify this authentication strength.
            ## @param value Value to set for the allowedCombinations property.
            ## @return a void
            ## 
            def allowed_combinations=(value)
                @allowed_combinations = value
            end
            ## 
            ## Gets the combinationConfigurations property value. Settings that may be used to require specific types or instances of an authentication method to be used when authenticating with a specified combination of authentication methods.
            ## @return a authentication_combination_configuration
            ## 
            def combination_configurations
                return @combination_configurations
            end
            ## 
            ## Sets the combinationConfigurations property value. Settings that may be used to require specific types or instances of an authentication method to be used when authenticating with a specified combination of authentication methods.
            ## @param value Value to set for the combinationConfigurations property.
            ## @return a void
            ## 
            def combination_configurations=(value)
                @combination_configurations = value
            end
            ## 
            ## Instantiates a new AuthenticationStrengthPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The datetime when this policy was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The datetime when this policy was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_strength_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationStrengthPolicy.new
            end
            ## 
            ## Gets the description property value. The human-readable description of this policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The human-readable description of this policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The human-readable display name of this policy. Supports $filter (eq, ne, not , and in).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The human-readable display name of this policy. Supports $filter (eq, ne, not , and in).
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
                    "allowedCombinations" => lambda {|n| @allowed_combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
                    "combinationConfigurations" => lambda {|n| @combination_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationCombinationConfiguration.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "policyType" => lambda {|n| @policy_type = n.get_enum_value(MicrosoftGraph::Models::AuthenticationStrengthPolicyType) },
                    "requirementsSatisfied" => lambda {|n| @requirements_satisfied = n.get_enum_values(MicrosoftGraph::Models::AuthenticationStrengthRequirements) },
                })
            end
            ## 
            ## Gets the modifiedDateTime property value. The datetime when this policy was last modified.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The datetime when this policy was last modified.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the policyType property value. The policyType property
            ## @return a authentication_strength_policy_type
            ## 
            def policy_type
                return @policy_type
            end
            ## 
            ## Sets the policyType property value. The policyType property
            ## @param value Value to set for the policyType property.
            ## @return a void
            ## 
            def policy_type=(value)
                @policy_type = value
            end
            ## 
            ## Gets the requirementsSatisfied property value. The requirementsSatisfied property
            ## @return a authentication_strength_requirements
            ## 
            def requirements_satisfied
                return @requirements_satisfied
            end
            ## 
            ## Sets the requirementsSatisfied property value. The requirementsSatisfied property
            ## @param value Value to set for the requirementsSatisfied property.
            ## @return a void
            ## 
            def requirements_satisfied=(value)
                @requirements_satisfied = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("allowedCombinations", @allowed_combinations)
                writer.write_collection_of_object_values("combinationConfigurations", @combination_configurations)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_enum_value("policyType", @policy_type)
                writer.write_enum_value("requirementsSatisfied", @requirements_satisfied)
            end
        end
    end
end
