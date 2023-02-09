require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VerifiedDomain
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # For example, Email, OfficeCommunicationsOnline.
            @capabilities
            ## 
            # true if this is the default domain associated with the tenant; otherwise, false.
            @is_default
            ## 
            # true if this is the initial domain associated with the tenant; otherwise, false.
            @is_initial
            ## 
            # The domain name; for example, contoso.onmicrosoft.com.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # For example, Managed.
            @type
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
            ## Gets the capabilities property value. For example, Email, OfficeCommunicationsOnline.
            ## @return a string
            ## 
            def capabilities
                return @capabilities
            end
            ## 
            ## Sets the capabilities property value. For example, Email, OfficeCommunicationsOnline.
            ## @param value Value to set for the capabilities property.
            ## @return a void
            ## 
            def capabilities=(value)
                @capabilities = value
            end
            ## 
            ## Instantiates a new verifiedDomain and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a verified_domain
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VerifiedDomain.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "capabilities" => lambda {|n| @capabilities = n.get_string_value() },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "isInitial" => lambda {|n| @is_initial = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isDefault property value. true if this is the default domain associated with the tenant; otherwise, false.
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. true if this is the default domain associated with the tenant; otherwise, false.
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the isInitial property value. true if this is the initial domain associated with the tenant; otherwise, false.
            ## @return a boolean
            ## 
            def is_initial
                return @is_initial
            end
            ## 
            ## Sets the isInitial property value. true if this is the initial domain associated with the tenant; otherwise, false.
            ## @param value Value to set for the is_initial property.
            ## @return a void
            ## 
            def is_initial=(value)
                @is_initial = value
            end
            ## 
            ## Gets the name property value. The domain name; for example, contoso.onmicrosoft.com.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The domain name; for example, contoso.onmicrosoft.com.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("capabilities", @capabilities)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_boolean_value("isInitial", @is_initial)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. For example, Managed.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. For example, Managed.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
