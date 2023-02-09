require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains MSI app properties for a Win32 App.
        class Win32LobAppMsiInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the package type of an MSI Win32LobApp.
            @package_type
            ## 
            # The MSI product code.
            @product_code
            ## 
            # The MSI product name.
            @product_name
            ## 
            # The MSI product version.
            @product_version
            ## 
            # The MSI publisher.
            @publisher
            ## 
            # Whether the MSI app requires the machine to reboot to complete installation.
            @requires_reboot
            ## 
            # The MSI upgrade code.
            @upgrade_code
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
            ## Instantiates a new win32LobAppMsiInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_msi_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppMsiInformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "packageType" => lambda {|n| @package_type = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppMsiPackageType) },
                    "productCode" => lambda {|n| @product_code = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "productVersion" => lambda {|n| @product_version = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "requiresReboot" => lambda {|n| @requires_reboot = n.get_boolean_value() },
                    "upgradeCode" => lambda {|n| @upgrade_code = n.get_string_value() },
                }
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
            ## Gets the packageType property value. Indicates the package type of an MSI Win32LobApp.
            ## @return a win32_lob_app_msi_package_type
            ## 
            def package_type
                return @package_type
            end
            ## 
            ## Sets the packageType property value. Indicates the package type of an MSI Win32LobApp.
            ## @param value Value to set for the package_type property.
            ## @return a void
            ## 
            def package_type=(value)
                @package_type = value
            end
            ## 
            ## Gets the productCode property value. The MSI product code.
            ## @return a string
            ## 
            def product_code
                return @product_code
            end
            ## 
            ## Sets the productCode property value. The MSI product code.
            ## @param value Value to set for the product_code property.
            ## @return a void
            ## 
            def product_code=(value)
                @product_code = value
            end
            ## 
            ## Gets the productName property value. The MSI product name.
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The MSI product name.
            ## @param value Value to set for the product_name property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the productVersion property value. The MSI product version.
            ## @return a string
            ## 
            def product_version
                return @product_version
            end
            ## 
            ## Sets the productVersion property value. The MSI product version.
            ## @param value Value to set for the product_version property.
            ## @return a void
            ## 
            def product_version=(value)
                @product_version = value
            end
            ## 
            ## Gets the publisher property value. The MSI publisher.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The MSI publisher.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Gets the requiresReboot property value. Whether the MSI app requires the machine to reboot to complete installation.
            ## @return a boolean
            ## 
            def requires_reboot
                return @requires_reboot
            end
            ## 
            ## Sets the requiresReboot property value. Whether the MSI app requires the machine to reboot to complete installation.
            ## @param value Value to set for the requires_reboot property.
            ## @return a void
            ## 
            def requires_reboot=(value)
                @requires_reboot = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("packageType", @package_type)
                writer.write_string_value("productCode", @product_code)
                writer.write_string_value("productName", @product_name)
                writer.write_string_value("productVersion", @product_version)
                writer.write_string_value("publisher", @publisher)
                writer.write_boolean_value("requiresReboot", @requires_reboot)
                writer.write_string_value("upgradeCode", @upgrade_code)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the upgradeCode property value. The MSI upgrade code.
            ## @return a string
            ## 
            def upgrade_code
                return @upgrade_code
            end
            ## 
            ## Sets the upgradeCode property value. The MSI upgrade code.
            ## @param value Value to set for the upgrade_code property.
            ## @return a void
            ## 
            def upgrade_code=(value)
                @upgrade_code = value
            end
        end
    end
end
