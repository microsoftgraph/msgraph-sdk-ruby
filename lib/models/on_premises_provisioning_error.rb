require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnPremisesProvisioningError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Category of the provisioning error. Note: Currently, there is only one possible value. Possible value: PropertyConflict - indicates a property value is not unique. Other objects contain the same value for the property.
            @category
            ## 
            # The date and time at which the error occurred.
            @occurred_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Name of the directory property causing the error. Current possible values: UserPrincipalName or ProxyAddress
            @property_causing_error
            ## 
            # Value of the property causing the error.
            @value
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
            ## Gets the category property value. Category of the provisioning error. Note: Currently, there is only one possible value. Possible value: PropertyConflict - indicates a property value is not unique. Other objects contain the same value for the property.
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. Category of the provisioning error. Note: Currently, there is only one possible value. Possible value: PropertyConflict - indicates a property value is not unique. Other objects contain the same value for the property.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new onPremisesProvisioningError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_provisioning_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesProvisioningError.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "occurredDateTime" => lambda {|n| @occurred_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "propertyCausingError" => lambda {|n| @property_causing_error = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the occurredDateTime property value. The date and time at which the error occurred.
            ## @return a date_time
            ## 
            def occurred_date_time
                return @occurred_date_time
            end
            ## 
            ## Sets the occurredDateTime property value. The date and time at which the error occurred.
            ## @param value Value to set for the occurred_date_time property.
            ## @return a void
            ## 
            def occurred_date_time=(value)
                @occurred_date_time = value
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
            ## Gets the propertyCausingError property value. Name of the directory property causing the error. Current possible values: UserPrincipalName or ProxyAddress
            ## @return a string
            ## 
            def property_causing_error
                return @property_causing_error
            end
            ## 
            ## Sets the propertyCausingError property value. Name of the directory property causing the error. Current possible values: UserPrincipalName or ProxyAddress
            ## @param value Value to set for the property_causing_error property.
            ## @return a void
            ## 
            def property_causing_error=(value)
                @property_causing_error = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("category", @category)
                writer.write_date_time_value("occurredDateTime", @occurred_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("propertyCausingError", @property_causing_error)
                writer.write_string_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. Value of the property causing the error.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Value of the property causing the error.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
