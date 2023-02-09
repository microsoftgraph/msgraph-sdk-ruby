require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # App for Windows information protection
        class WindowsInformationProtectionApp
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If true, app is denied protection or exemption.
            @denied
            ## 
            # The app's description.
            @description
            ## 
            # App display name.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The product name.
            @product_name
            ## 
            # The publisher name
            @publisher_name
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
            ## Instantiates a new windowsInformationProtectionApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.windowsInformationProtectionDesktopApp"
                            return WindowsInformationProtectionDesktopApp.new
                        when "#microsoft.graph.windowsInformationProtectionStoreApp"
                            return WindowsInformationProtectionStoreApp.new
                    end
                end
                return WindowsInformationProtectionApp.new
            end
            ## 
            ## Gets the denied property value. If true, app is denied protection or exemption.
            ## @return a boolean
            ## 
            def denied
                return @denied
            end
            ## 
            ## Sets the denied property value. If true, app is denied protection or exemption.
            ## @param value Value to set for the denied property.
            ## @return a void
            ## 
            def denied=(value)
                @denied = value
            end
            ## 
            ## Gets the description property value. The app's description.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The app's description.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. App display name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. App display name.
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
                return {
                    "denied" => lambda {|n| @denied = n.get_boolean_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
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
            ## Gets the productName property value. The product name.
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The product name.
            ## @param value Value to set for the product_name property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the publisherName property value. The publisher name
            ## @return a string
            ## 
            def publisher_name
                return @publisher_name
            end
            ## 
            ## Sets the publisherName property value. The publisher name
            ## @param value Value to set for the publisher_name property.
            ## @return a void
            ## 
            def publisher_name=(value)
                @publisher_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("denied", @denied)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("productName", @product_name)
                writer.write_string_value("publisherName", @publisher_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
