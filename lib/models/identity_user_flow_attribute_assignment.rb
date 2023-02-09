require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityUserFlowAttributeAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the identityUserFlowAttribute within a user flow.
            @display_name
            ## 
            # Determines whether the identityUserFlowAttribute is optional. true means the user doesn't have to provide a value. false means the user cannot complete sign-up without providing a value.
            @is_optional
            ## 
            # Determines whether the identityUserFlowAttribute requires verification. This is only used for verifying the user's phone number or email address.
            @requires_verification
            ## 
            # The user attribute that you want to add to your user flow.
            @user_attribute
            ## 
            # The input options for the user flow attribute. Only applicable when the userInputType is radioSingleSelect, dropdownSingleSelect, or checkboxMultiSelect.
            @user_attribute_values
            ## 
            # The userInputType property
            @user_input_type
            ## 
            ## Instantiates a new identityUserFlowAttributeAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_user_flow_attribute_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityUserFlowAttributeAssignment.new
            end
            ## 
            ## Gets the displayName property value. The display name of the identityUserFlowAttribute within a user flow.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the identityUserFlowAttribute within a user flow.
            ## @param value Value to set for the display_name property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isOptional" => lambda {|n| @is_optional = n.get_boolean_value() },
                    "requiresVerification" => lambda {|n| @requires_verification = n.get_boolean_value() },
                    "userAttribute" => lambda {|n| @user_attribute = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityUserFlowAttribute.create_from_discriminator_value(pn) }) },
                    "userAttributeValues" => lambda {|n| @user_attribute_values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserAttributeValuesItem.create_from_discriminator_value(pn) }) },
                    "userInputType" => lambda {|n| @user_input_type = n.get_enum_value(MicrosoftGraph::Models::IdentityUserFlowAttributeInputType) },
                })
            end
            ## 
            ## Gets the isOptional property value. Determines whether the identityUserFlowAttribute is optional. true means the user doesn't have to provide a value. false means the user cannot complete sign-up without providing a value.
            ## @return a boolean
            ## 
            def is_optional
                return @is_optional
            end
            ## 
            ## Sets the isOptional property value. Determines whether the identityUserFlowAttribute is optional. true means the user doesn't have to provide a value. false means the user cannot complete sign-up without providing a value.
            ## @param value Value to set for the is_optional property.
            ## @return a void
            ## 
            def is_optional=(value)
                @is_optional = value
            end
            ## 
            ## Gets the requiresVerification property value. Determines whether the identityUserFlowAttribute requires verification. This is only used for verifying the user's phone number or email address.
            ## @return a boolean
            ## 
            def requires_verification
                return @requires_verification
            end
            ## 
            ## Sets the requiresVerification property value. Determines whether the identityUserFlowAttribute requires verification. This is only used for verifying the user's phone number or email address.
            ## @param value Value to set for the requires_verification property.
            ## @return a void
            ## 
            def requires_verification=(value)
                @requires_verification = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isOptional", @is_optional)
                writer.write_boolean_value("requiresVerification", @requires_verification)
                writer.write_object_value("userAttribute", @user_attribute)
                writer.write_collection_of_object_values("userAttributeValues", @user_attribute_values)
                writer.write_enum_value("userInputType", @user_input_type)
            end
            ## 
            ## Gets the userAttribute property value. The user attribute that you want to add to your user flow.
            ## @return a identity_user_flow_attribute
            ## 
            def user_attribute
                return @user_attribute
            end
            ## 
            ## Sets the userAttribute property value. The user attribute that you want to add to your user flow.
            ## @param value Value to set for the user_attribute property.
            ## @return a void
            ## 
            def user_attribute=(value)
                @user_attribute = value
            end
            ## 
            ## Gets the userAttributeValues property value. The input options for the user flow attribute. Only applicable when the userInputType is radioSingleSelect, dropdownSingleSelect, or checkboxMultiSelect.
            ## @return a user_attribute_values_item
            ## 
            def user_attribute_values
                return @user_attribute_values
            end
            ## 
            ## Sets the userAttributeValues property value. The input options for the user flow attribute. Only applicable when the userInputType is radioSingleSelect, dropdownSingleSelect, or checkboxMultiSelect.
            ## @param value Value to set for the user_attribute_values property.
            ## @return a void
            ## 
            def user_attribute_values=(value)
                @user_attribute_values = value
            end
            ## 
            ## Gets the userInputType property value. The userInputType property
            ## @return a identity_user_flow_attribute_input_type
            ## 
            def user_input_type
                return @user_input_type
            end
            ## 
            ## Sets the userInputType property value. The userInputType property
            ## @param value Value to set for the user_input_type property.
            ## @return a void
            ## 
            def user_input_type=(value)
                @user_input_type = value
            end
        end
    end
end
