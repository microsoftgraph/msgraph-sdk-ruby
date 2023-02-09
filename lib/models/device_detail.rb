require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the browser information of the used for signing in.
            @browser
            ## 
            # Refers to the UniqueID of the device used for signing in.
            @device_id
            ## 
            # Refers to the name of the device used for signing in.
            @display_name
            ## 
            # Indicates whether the device is compliant.
            @is_compliant
            ## 
            # Indicates whether the device is managed.
            @is_managed
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the operating system name and version used for signing in.
            @operating_system
            ## 
            # Provides information about whether the signed-in device is Workplace Joined, AzureAD Joined, Domain Joined.
            @trust_type
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
            ## Gets the browser property value. Indicates the browser information of the used for signing in.
            ## @return a string
            ## 
            def browser
                return @browser
            end
            ## 
            ## Sets the browser property value. Indicates the browser information of the used for signing in.
            ## @param value Value to set for the browser property.
            ## @return a void
            ## 
            def browser=(value)
                @browser = value
            end
            ## 
            ## Instantiates a new deviceDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceDetail.new
            end
            ## 
            ## Gets the deviceId property value. Refers to the UniqueID of the device used for signing in.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. Refers to the UniqueID of the device used for signing in.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the displayName property value. Refers to the name of the device used for signing in.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Refers to the name of the device used for signing in.
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
                    "browser" => lambda {|n| @browser = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isCompliant" => lambda {|n| @is_compliant = n.get_boolean_value() },
                    "isManaged" => lambda {|n| @is_managed = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "trustType" => lambda {|n| @trust_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isCompliant property value. Indicates whether the device is compliant.
            ## @return a boolean
            ## 
            def is_compliant
                return @is_compliant
            end
            ## 
            ## Sets the isCompliant property value. Indicates whether the device is compliant.
            ## @param value Value to set for the is_compliant property.
            ## @return a void
            ## 
            def is_compliant=(value)
                @is_compliant = value
            end
            ## 
            ## Gets the isManaged property value. Indicates whether the device is managed.
            ## @return a boolean
            ## 
            def is_managed
                return @is_managed
            end
            ## 
            ## Sets the isManaged property value. Indicates whether the device is managed.
            ## @param value Value to set for the is_managed property.
            ## @return a void
            ## 
            def is_managed=(value)
                @is_managed = value
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
            ## Gets the operatingSystem property value. Indicates the operating system name and version used for signing in.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. Indicates the operating system name and version used for signing in.
            ## @param value Value to set for the operating_system property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("browser", @browser)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isCompliant", @is_compliant)
                writer.write_boolean_value("isManaged", @is_managed)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_string_value("trustType", @trust_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trustType property value. Provides information about whether the signed-in device is Workplace Joined, AzureAD Joined, Domain Joined.
            ## @return a string
            ## 
            def trust_type
                return @trust_type
            end
            ## 
            ## Sets the trustType property value. Provides information about whether the signed-in device is Workplace Joined, AzureAD Joined, Domain Joined.
            ## @param value Value to set for the trust_type property.
            ## @return a void
            ## 
            def trust_type=(value)
                @trust_type = value
            end
        end
    end
end
