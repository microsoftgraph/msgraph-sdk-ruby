require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosVppApp < MicrosoftGraph::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The store URL.
            @app_store_url
            ## 
            # The applicable iOS Device Type.
            @applicable_device_type
            ## 
            # The Identity Name.
            @bundle_id
            ## 
            # The supported License Type.
            @licensing_type
            ## 
            # The VPP application release date and time.
            @release_date_time
            ## 
            # The total number of VPP licenses.
            @total_license_count
            ## 
            # The number of VPP licenses in use.
            @used_license_count
            ## 
            # Possible types of an Apple Volume Purchase Program token.
            @vpp_token_account_type
            ## 
            # The Apple Id associated with the given Apple Volume Purchase Program Token.
            @vpp_token_apple_id
            ## 
            # The organization associated with the Apple Volume Purchase Program Token
            @vpp_token_organization_name
            ## 
            ## Gets the appStoreUrl property value. The store URL.
            ## @return a string
            ## 
            def app_store_url
                return @app_store_url
            end
            ## 
            ## Sets the appStoreUrl property value. The store URL.
            ## @param value Value to set for the app_store_url property.
            ## @return a void
            ## 
            def app_store_url=(value)
                @app_store_url = value
            end
            ## 
            ## Gets the applicableDeviceType property value. The applicable iOS Device Type.
            ## @return a ios_device_type
            ## 
            def applicable_device_type
                return @applicable_device_type
            end
            ## 
            ## Sets the applicableDeviceType property value. The applicable iOS Device Type.
            ## @param value Value to set for the applicable_device_type property.
            ## @return a void
            ## 
            def applicable_device_type=(value)
                @applicable_device_type = value
            end
            ## 
            ## Gets the bundleId property value. The Identity Name.
            ## @return a string
            ## 
            def bundle_id
                return @bundle_id
            end
            ## 
            ## Sets the bundleId property value. The Identity Name.
            ## @param value Value to set for the bundle_id property.
            ## @return a void
            ## 
            def bundle_id=(value)
                @bundle_id = value
            end
            ## 
            ## Instantiates a new IosVppApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosVppApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_vpp_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosVppApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appStoreUrl" => lambda {|n| @app_store_url = n.get_string_value() },
                    "applicableDeviceType" => lambda {|n| @applicable_device_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IosDeviceType.create_from_discriminator_value(pn) }) },
                    "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                    "licensingType" => lambda {|n| @licensing_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VppLicensingType.create_from_discriminator_value(pn) }) },
                    "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
                    "totalLicenseCount" => lambda {|n| @total_license_count = n.get_number_value() },
                    "usedLicenseCount" => lambda {|n| @used_license_count = n.get_number_value() },
                    "vppTokenAccountType" => lambda {|n| @vpp_token_account_type = n.get_enum_value(MicrosoftGraph::Models::VppTokenAccountType) },
                    "vppTokenAppleId" => lambda {|n| @vpp_token_apple_id = n.get_string_value() },
                    "vppTokenOrganizationName" => lambda {|n| @vpp_token_organization_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the licensingType property value. The supported License Type.
            ## @return a vpp_licensing_type
            ## 
            def licensing_type
                return @licensing_type
            end
            ## 
            ## Sets the licensingType property value. The supported License Type.
            ## @param value Value to set for the licensing_type property.
            ## @return a void
            ## 
            def licensing_type=(value)
                @licensing_type = value
            end
            ## 
            ## Gets the releaseDateTime property value. The VPP application release date and time.
            ## @return a date_time
            ## 
            def release_date_time
                return @release_date_time
            end
            ## 
            ## Sets the releaseDateTime property value. The VPP application release date and time.
            ## @param value Value to set for the release_date_time property.
            ## @return a void
            ## 
            def release_date_time=(value)
                @release_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appStoreUrl", @app_store_url)
                writer.write_object_value("applicableDeviceType", @applicable_device_type)
                writer.write_string_value("bundleId", @bundle_id)
                writer.write_object_value("licensingType", @licensing_type)
                writer.write_date_time_value("releaseDateTime", @release_date_time)
                writer.write_number_value("totalLicenseCount", @total_license_count)
                writer.write_number_value("usedLicenseCount", @used_license_count)
                writer.write_enum_value("vppTokenAccountType", @vpp_token_account_type)
                writer.write_string_value("vppTokenAppleId", @vpp_token_apple_id)
                writer.write_string_value("vppTokenOrganizationName", @vpp_token_organization_name)
            end
            ## 
            ## Gets the totalLicenseCount property value. The total number of VPP licenses.
            ## @return a integer
            ## 
            def total_license_count
                return @total_license_count
            end
            ## 
            ## Sets the totalLicenseCount property value. The total number of VPP licenses.
            ## @param value Value to set for the total_license_count property.
            ## @return a void
            ## 
            def total_license_count=(value)
                @total_license_count = value
            end
            ## 
            ## Gets the usedLicenseCount property value. The number of VPP licenses in use.
            ## @return a integer
            ## 
            def used_license_count
                return @used_license_count
            end
            ## 
            ## Sets the usedLicenseCount property value. The number of VPP licenses in use.
            ## @param value Value to set for the used_license_count property.
            ## @return a void
            ## 
            def used_license_count=(value)
                @used_license_count = value
            end
            ## 
            ## Gets the vppTokenAccountType property value. Possible types of an Apple Volume Purchase Program token.
            ## @return a vpp_token_account_type
            ## 
            def vpp_token_account_type
                return @vpp_token_account_type
            end
            ## 
            ## Sets the vppTokenAccountType property value. Possible types of an Apple Volume Purchase Program token.
            ## @param value Value to set for the vpp_token_account_type property.
            ## @return a void
            ## 
            def vpp_token_account_type=(value)
                @vpp_token_account_type = value
            end
            ## 
            ## Gets the vppTokenAppleId property value. The Apple Id associated with the given Apple Volume Purchase Program Token.
            ## @return a string
            ## 
            def vpp_token_apple_id
                return @vpp_token_apple_id
            end
            ## 
            ## Sets the vppTokenAppleId property value. The Apple Id associated with the given Apple Volume Purchase Program Token.
            ## @param value Value to set for the vpp_token_apple_id property.
            ## @return a void
            ## 
            def vpp_token_apple_id=(value)
                @vpp_token_apple_id = value
            end
            ## 
            ## Gets the vppTokenOrganizationName property value. The organization associated with the Apple Volume Purchase Program Token
            ## @return a string
            ## 
            def vpp_token_organization_name
                return @vpp_token_organization_name
            end
            ## 
            ## Sets the vppTokenOrganizationName property value. The organization associated with the Apple Volume Purchase Program Token
            ## @param value Value to set for the vpp_token_organization_name property.
            ## @return a void
            ## 
            def vpp_token_organization_name=(value)
                @vpp_token_organization_name = value
            end
        end
    end
end
