require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FeatureRolloutPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Nullable. Specifies a list of directoryObjects that feature is enabled for.
            @applies_to
            ## 
            # A description for this feature rollout policy.
            @description
            ## 
            # The display name for this  feature rollout policy.
            @display_name
            ## 
            # The feature property
            @feature
            ## 
            # Indicates whether this feature rollout policy should be applied to the entire organization.
            @is_applied_to_organization
            ## 
            # Indicates whether the feature rollout is enabled.
            @is_enabled
            ## 
            ## Gets the appliesTo property value. Nullable. Specifies a list of directoryObjects that feature is enabled for.
            ## @return a directory_object
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. Nullable. Specifies a list of directoryObjects that feature is enabled for.
            ## @param value Value to set for the applies_to property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new featureRolloutPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a feature_rollout_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FeatureRolloutPolicy.new
            end
            ## 
            ## Gets the description property value. A description for this feature rollout policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A description for this feature rollout policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for this  feature rollout policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for this  feature rollout policy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the feature property value. The feature property
            ## @return a staged_feature_name
            ## 
            def feature
                return @feature
            end
            ## 
            ## Sets the feature property value. The feature property
            ## @param value Value to set for the feature property.
            ## @return a void
            ## 
            def feature=(value)
                @feature = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appliesTo" => lambda {|n| @applies_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "feature" => lambda {|n| @feature = n.get_enum_value(MicrosoftGraph::Models::StagedFeatureName) },
                    "isAppliedToOrganization" => lambda {|n| @is_applied_to_organization = n.get_boolean_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isAppliedToOrganization property value. Indicates whether this feature rollout policy should be applied to the entire organization.
            ## @return a boolean
            ## 
            def is_applied_to_organization
                return @is_applied_to_organization
            end
            ## 
            ## Sets the isAppliedToOrganization property value. Indicates whether this feature rollout policy should be applied to the entire organization.
            ## @param value Value to set for the is_applied_to_organization property.
            ## @return a void
            ## 
            def is_applied_to_organization=(value)
                @is_applied_to_organization = value
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether the feature rollout is enabled.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether the feature rollout is enabled.
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("appliesTo", @applies_to)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("feature", @feature)
                writer.write_boolean_value("isAppliedToOrganization", @is_applied_to_organization)
                writer.write_boolean_value("isEnabled", @is_enabled)
            end
        end
    end
end
