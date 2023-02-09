require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EditionUpgradeConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Edition Upgrade License File Content.
            @license
            ## 
            # Edition Upgrade License type
            @license_type
            ## 
            # Edition Upgrade Product Key.
            @product_key
            ## 
            # Windows 10 Edition type.
            @target_edition
            ## 
            ## Instantiates a new EditionUpgradeConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.editionUpgradeConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a edition_upgrade_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EditionUpgradeConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "license" => lambda {|n| @license = n.get_string_value() },
                    "licenseType" => lambda {|n| @license_type = n.get_enum_value(MicrosoftGraph::Models::EditionUpgradeLicenseType) },
                    "productKey" => lambda {|n| @product_key = n.get_string_value() },
                    "targetEdition" => lambda {|n| @target_edition = n.get_enum_value(MicrosoftGraph::Models::Windows10EditionType) },
                })
            end
            ## 
            ## Gets the license property value. Edition Upgrade License File Content.
            ## @return a string
            ## 
            def license
                return @license
            end
            ## 
            ## Sets the license property value. Edition Upgrade License File Content.
            ## @param value Value to set for the license property.
            ## @return a void
            ## 
            def license=(value)
                @license = value
            end
            ## 
            ## Gets the licenseType property value. Edition Upgrade License type
            ## @return a edition_upgrade_license_type
            ## 
            def license_type
                return @license_type
            end
            ## 
            ## Sets the licenseType property value. Edition Upgrade License type
            ## @param value Value to set for the license_type property.
            ## @return a void
            ## 
            def license_type=(value)
                @license_type = value
            end
            ## 
            ## Gets the productKey property value. Edition Upgrade Product Key.
            ## @return a string
            ## 
            def product_key
                return @product_key
            end
            ## 
            ## Sets the productKey property value. Edition Upgrade Product Key.
            ## @param value Value to set for the product_key property.
            ## @return a void
            ## 
            def product_key=(value)
                @product_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("license", @license)
                writer.write_enum_value("licenseType", @license_type)
                writer.write_string_value("productKey", @product_key)
                writer.write_enum_value("targetEdition", @target_edition)
            end
            ## 
            ## Gets the targetEdition property value. Windows 10 Edition type.
            ## @return a windows10_edition_type
            ## 
            def target_edition
                return @target_edition
            end
            ## 
            ## Sets the targetEdition property value. Windows 10 Edition type.
            ## @param value Value to set for the target_edition property.
            ## @return a void
            ## 
            def target_edition=(value)
                @target_edition = value
            end
        end
    end
end
