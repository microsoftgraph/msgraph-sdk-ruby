require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AzureADRegistrationPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The allowedToRegister property
            @allowed_to_register
            ## 
            # The isAdminConfigurable property
            @is_admin_configurable
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowedToRegister property value. The allowedToRegister property
            ## @return a device_registration_membership
            ## 
            def allowed_to_register
                return @allowed_to_register
            end
            ## 
            ## Sets the allowedToRegister property value. The allowedToRegister property
            ## @param value Value to set for the allowedToRegister property.
            ## @return a void
            ## 
            def allowed_to_register=(value)
                @allowed_to_register = value
            end
            ## 
            ## Instantiates a new AzureADRegistrationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_a_d_registration_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureADRegistrationPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedToRegister" => lambda {|n| @allowed_to_register = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceRegistrationMembership.create_from_discriminator_value(pn) }) },
                    "isAdminConfigurable" => lambda {|n| @is_admin_configurable = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAdminConfigurable property value. The isAdminConfigurable property
            ## @return a boolean
            ## 
            def is_admin_configurable
                return @is_admin_configurable
            end
            ## 
            ## Sets the isAdminConfigurable property value. The isAdminConfigurable property
            ## @param value Value to set for the isAdminConfigurable property.
            ## @return a void
            ## 
            def is_admin_configurable=(value)
                @is_admin_configurable = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_object_value("allowedToRegister", @allowed_to_register)
                writer.write_boolean_value("isAdminConfigurable", @is_admin_configurable)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
