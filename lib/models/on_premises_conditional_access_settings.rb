require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnPremisesConditionalAccessSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if on premises conditional access is enabled for this organization
            @enabled
            ## 
            # User groups that will be exempt by on premises conditional access. All users in these groups will be exempt from the conditional access policy.
            @excluded_groups
            ## 
            # User groups that will be targeted by on premises conditional access. All users in these groups will be required to have mobile device managed and compliant for mail access.
            @included_groups
            ## 
            # Override the default access rule when allowing a device to ensure access is granted.
            @override_default_rule
            ## 
            ## Instantiates a new onPremisesConditionalAccessSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_conditional_access_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesConditionalAccessSettings.new
            end
            ## 
            ## Gets the enabled property value. Indicates if on premises conditional access is enabled for this organization
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. Indicates if on premises conditional access is enabled for this organization
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## Gets the excludedGroups property value. User groups that will be exempt by on premises conditional access. All users in these groups will be exempt from the conditional access policy.
            ## @return a guid
            ## 
            def excluded_groups
                return @excluded_groups
            end
            ## 
            ## Sets the excludedGroups property value. User groups that will be exempt by on premises conditional access. All users in these groups will be exempt from the conditional access policy.
            ## @param value Value to set for the excluded_groups property.
            ## @return a void
            ## 
            def excluded_groups=(value)
                @excluded_groups = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "excludedGroups" => lambda {|n| @excluded_groups = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "includedGroups" => lambda {|n| @included_groups = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "overrideDefaultRule" => lambda {|n| @override_default_rule = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the includedGroups property value. User groups that will be targeted by on premises conditional access. All users in these groups will be required to have mobile device managed and compliant for mail access.
            ## @return a guid
            ## 
            def included_groups
                return @included_groups
            end
            ## 
            ## Sets the includedGroups property value. User groups that will be targeted by on premises conditional access. All users in these groups will be required to have mobile device managed and compliant for mail access.
            ## @param value Value to set for the included_groups property.
            ## @return a void
            ## 
            def included_groups=(value)
                @included_groups = value
            end
            ## 
            ## Gets the overrideDefaultRule property value. Override the default access rule when allowing a device to ensure access is granted.
            ## @return a boolean
            ## 
            def override_default_rule
                return @override_default_rule
            end
            ## 
            ## Sets the overrideDefaultRule property value. Override the default access rule when allowing a device to ensure access is granted.
            ## @param value Value to set for the override_default_rule property.
            ## @return a void
            ## 
            def override_default_rule=(value)
                @override_default_rule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("enabled", @enabled)
                writer.write_collection_of_primitive_values("excludedGroups", @excluded_groups)
                writer.write_collection_of_primitive_values("includedGroups", @included_groups)
                writer.write_boolean_value("overrideDefaultRule", @override_default_rule)
            end
        end
    end
end
