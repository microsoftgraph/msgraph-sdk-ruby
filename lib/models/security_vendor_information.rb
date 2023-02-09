require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityVendorInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
            @provider
            ## 
            # Version of the provider or subprovider, if it exists, that generated the alert. Required
            @provider_version
            ## 
            # Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
            @sub_provider
            ## 
            # Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
            @vendor
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
            ## Instantiates a new securityVendorInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a security_vendor_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityVendorInformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "provider" => lambda {|n| @provider = n.get_string_value() },
                    "providerVersion" => lambda {|n| @provider_version = n.get_string_value() },
                    "subProvider" => lambda {|n| @sub_provider = n.get_string_value() },
                    "vendor" => lambda {|n| @vendor = n.get_string_value() },
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
            ## Gets the provider property value. Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
            ## @return a string
            ## 
            def provider
                return @provider
            end
            ## 
            ## Sets the provider property value. Specific provider (product/service - not vendor company); for example, WindowsDefenderATP.
            ## @param value Value to set for the provider property.
            ## @return a void
            ## 
            def provider=(value)
                @provider = value
            end
            ## 
            ## Gets the providerVersion property value. Version of the provider or subprovider, if it exists, that generated the alert. Required
            ## @return a string
            ## 
            def provider_version
                return @provider_version
            end
            ## 
            ## Sets the providerVersion property value. Version of the provider or subprovider, if it exists, that generated the alert. Required
            ## @param value Value to set for the provider_version property.
            ## @return a void
            ## 
            def provider_version=(value)
                @provider_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("provider", @provider)
                writer.write_string_value("providerVersion", @provider_version)
                writer.write_string_value("subProvider", @sub_provider)
                writer.write_string_value("vendor", @vendor)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subProvider property value. Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
            ## @return a string
            ## 
            def sub_provider
                return @sub_provider
            end
            ## 
            ## Sets the subProvider property value. Specific subprovider (under aggregating provider); for example, WindowsDefenderATP.SmartScreen.
            ## @param value Value to set for the sub_provider property.
            ## @return a void
            ## 
            def sub_provider=(value)
                @sub_provider = value
            end
            ## 
            ## Gets the vendor property value. Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
            ## @return a string
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. Name of the alert vendor (for example, Microsoft, Dell, FireEye). Required
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
        end
    end
end
