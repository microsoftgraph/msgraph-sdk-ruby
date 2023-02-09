require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # configuration Manager client enabled features
        class ConfigurationManagerClientEnabledFeatures
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Whether compliance policy is managed by Intune
            @compliance_policy
            ## 
            # Whether device configuration is managed by Intune
            @device_configuration
            ## 
            # Whether inventory is managed by Intune
            @inventory
            ## 
            # Whether modern application is managed by Intune
            @modern_apps
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Whether resource access is managed by Intune
            @resource_access
            ## 
            # Whether Windows Update for Business is managed by Intune
            @windows_update_for_business
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
            ## Gets the compliancePolicy property value. Whether compliance policy is managed by Intune
            ## @return a boolean
            ## 
            def compliance_policy
                return @compliance_policy
            end
            ## 
            ## Sets the compliancePolicy property value. Whether compliance policy is managed by Intune
            ## @param value Value to set for the compliance_policy property.
            ## @return a void
            ## 
            def compliance_policy=(value)
                @compliance_policy = value
            end
            ## 
            ## Instantiates a new configurationManagerClientEnabledFeatures and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a configuration_manager_client_enabled_features
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConfigurationManagerClientEnabledFeatures.new
            end
            ## 
            ## Gets the deviceConfiguration property value. Whether device configuration is managed by Intune
            ## @return a boolean
            ## 
            def device_configuration
                return @device_configuration
            end
            ## 
            ## Sets the deviceConfiguration property value. Whether device configuration is managed by Intune
            ## @param value Value to set for the device_configuration property.
            ## @return a void
            ## 
            def device_configuration=(value)
                @device_configuration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "compliancePolicy" => lambda {|n| @compliance_policy = n.get_boolean_value() },
                    "deviceConfiguration" => lambda {|n| @device_configuration = n.get_boolean_value() },
                    "inventory" => lambda {|n| @inventory = n.get_boolean_value() },
                    "modernApps" => lambda {|n| @modern_apps = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resourceAccess" => lambda {|n| @resource_access = n.get_boolean_value() },
                    "windowsUpdateForBusiness" => lambda {|n| @windows_update_for_business = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the inventory property value. Whether inventory is managed by Intune
            ## @return a boolean
            ## 
            def inventory
                return @inventory
            end
            ## 
            ## Sets the inventory property value. Whether inventory is managed by Intune
            ## @param value Value to set for the inventory property.
            ## @return a void
            ## 
            def inventory=(value)
                @inventory = value
            end
            ## 
            ## Gets the modernApps property value. Whether modern application is managed by Intune
            ## @return a boolean
            ## 
            def modern_apps
                return @modern_apps
            end
            ## 
            ## Sets the modernApps property value. Whether modern application is managed by Intune
            ## @param value Value to set for the modern_apps property.
            ## @return a void
            ## 
            def modern_apps=(value)
                @modern_apps = value
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
            ## Gets the resourceAccess property value. Whether resource access is managed by Intune
            ## @return a boolean
            ## 
            def resource_access
                return @resource_access
            end
            ## 
            ## Sets the resourceAccess property value. Whether resource access is managed by Intune
            ## @param value Value to set for the resource_access property.
            ## @return a void
            ## 
            def resource_access=(value)
                @resource_access = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("compliancePolicy", @compliance_policy)
                writer.write_boolean_value("deviceConfiguration", @device_configuration)
                writer.write_boolean_value("inventory", @inventory)
                writer.write_boolean_value("modernApps", @modern_apps)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("resourceAccess", @resource_access)
                writer.write_boolean_value("windowsUpdateForBusiness", @windows_update_for_business)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the windowsUpdateForBusiness property value. Whether Windows Update for Business is managed by Intune
            ## @return a boolean
            ## 
            def windows_update_for_business
                return @windows_update_for_business
            end
            ## 
            ## Sets the windowsUpdateForBusiness property value. Whether Windows Update for Business is managed by Intune
            ## @param value Value to set for the windows_update_for_business property.
            ## @return a void
            ## 
            def windows_update_for_business=(value)
                @windows_update_for_business = value
            end
        end
    end
end
