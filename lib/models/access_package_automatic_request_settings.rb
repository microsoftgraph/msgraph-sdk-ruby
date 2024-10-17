require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAutomaticRequestSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The duration for which access must be retained before the target's access is revoked once they leave the allowed target scope.
            @grace_period_before_access_removal
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether automatic assignment must be removed for targets who move out of the allowed target scope.
            @remove_access_when_target_leaves_allowed_targets
            ## 
            # If set to true, automatic assignments will be created for targets in the allowed target scope.
            @request_access_for_allowed_targets
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AccessPackageAutomaticRequestSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_automatic_request_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAutomaticRequestSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "gracePeriodBeforeAccessRemoval" => lambda {|n| @grace_period_before_access_removal = n.get_duration_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "removeAccessWhenTargetLeavesAllowedTargets" => lambda {|n| @remove_access_when_target_leaves_allowed_targets = n.get_boolean_value() },
                    "requestAccessForAllowedTargets" => lambda {|n| @request_access_for_allowed_targets = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the gracePeriodBeforeAccessRemoval property value. The duration for which access must be retained before the target's access is revoked once they leave the allowed target scope.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def grace_period_before_access_removal
                return @grace_period_before_access_removal
            end
            ## 
            ## Sets the gracePeriodBeforeAccessRemoval property value. The duration for which access must be retained before the target's access is revoked once they leave the allowed target scope.
            ## @param value Value to set for the gracePeriodBeforeAccessRemoval property.
            ## @return a void
            ## 
            def grace_period_before_access_removal=(value)
                @grace_period_before_access_removal = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the removeAccessWhenTargetLeavesAllowedTargets property value. Indicates whether automatic assignment must be removed for targets who move out of the allowed target scope.
            ## @return a boolean
            ## 
            def remove_access_when_target_leaves_allowed_targets
                return @remove_access_when_target_leaves_allowed_targets
            end
            ## 
            ## Sets the removeAccessWhenTargetLeavesAllowedTargets property value. Indicates whether automatic assignment must be removed for targets who move out of the allowed target scope.
            ## @param value Value to set for the removeAccessWhenTargetLeavesAllowedTargets property.
            ## @return a void
            ## 
            def remove_access_when_target_leaves_allowed_targets=(value)
                @remove_access_when_target_leaves_allowed_targets = value
            end
            ## 
            ## Gets the requestAccessForAllowedTargets property value. If set to true, automatic assignments will be created for targets in the allowed target scope.
            ## @return a boolean
            ## 
            def request_access_for_allowed_targets
                return @request_access_for_allowed_targets
            end
            ## 
            ## Sets the requestAccessForAllowedTargets property value. If set to true, automatic assignments will be created for targets in the allowed target scope.
            ## @param value Value to set for the requestAccessForAllowedTargets property.
            ## @return a void
            ## 
            def request_access_for_allowed_targets=(value)
                @request_access_for_allowed_targets = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_duration_value("gracePeriodBeforeAccessRemoval", @grace_period_before_access_removal)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("removeAccessWhenTargetLeavesAllowedTargets", @remove_access_when_target_leaves_allowed_targets)
                writer.write_boolean_value("requestAccessForAllowedTargets", @request_access_for_allowed_targets)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
