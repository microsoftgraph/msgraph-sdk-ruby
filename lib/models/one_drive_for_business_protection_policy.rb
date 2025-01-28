require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OneDriveForBusinessProtectionPolicy < MicrosoftGraph::Models::ProtectionPolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains the details of the Onedrive for Business protection rule.
            @drive_inclusion_rules
            ## 
            # Contains the protection units associated with a  OneDrive for Business protection policy.
            @drive_protection_units
            ## 
            ## Instantiates a new OneDriveForBusinessProtectionPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.oneDriveForBusinessProtectionPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a one_drive_for_business_protection_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OneDriveForBusinessProtectionPolicy.new
            end
            ## 
            ## Gets the driveInclusionRules property value. Contains the details of the Onedrive for Business protection rule.
            ## @return a drive_protection_rule
            ## 
            def drive_inclusion_rules
                return @drive_inclusion_rules
            end
            ## 
            ## Sets the driveInclusionRules property value. Contains the details of the Onedrive for Business protection rule.
            ## @param value Value to set for the driveInclusionRules property.
            ## @return a void
            ## 
            def drive_inclusion_rules=(value)
                @drive_inclusion_rules = value
            end
            ## 
            ## Gets the driveProtectionUnits property value. Contains the protection units associated with a  OneDrive for Business protection policy.
            ## @return a drive_protection_unit
            ## 
            def drive_protection_units
                return @drive_protection_units
            end
            ## 
            ## Sets the driveProtectionUnits property value. Contains the protection units associated with a  OneDrive for Business protection policy.
            ## @param value Value to set for the driveProtectionUnits property.
            ## @return a void
            ## 
            def drive_protection_units=(value)
                @drive_protection_units = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "driveInclusionRules" => lambda {|n| @drive_inclusion_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveProtectionRule.create_from_discriminator_value(pn) }) },
                    "driveProtectionUnits" => lambda {|n| @drive_protection_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveProtectionUnit.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("driveInclusionRules", @drive_inclusion_rules)
                writer.write_collection_of_object_values("driveProtectionUnits", @drive_protection_units)
            end
        end
    end
end
