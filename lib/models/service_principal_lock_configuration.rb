require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServicePrincipalLockConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Enables locking all sensitive properties. The sensitive properties are keyCredentials, passwordCredentials, and tokenEncryptionKeyId.
            @all_properties
            ## 
            # Locks the keyCredentials and passwordCredentials properties for modification where credential usage type is Sign.
            @credentials_with_usage_sign
            ## 
            # Locks the keyCredentials and passwordCredentials properties for modification where credential usage type is Verify. This locks OAuth service principals.
            @credentials_with_usage_verify
            ## 
            # Enables or disables service principal lock configuration. To allow the sensitive properties to be updated, update this property to false to disable the lock on the service principal.
            @is_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Locks the tokenEncryptionKeyId property for modification on the service principal.
            @token_encryption_key_id
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
            ## Gets the allProperties property value. Enables locking all sensitive properties. The sensitive properties are keyCredentials, passwordCredentials, and tokenEncryptionKeyId.
            ## @return a boolean
            ## 
            def all_properties
                return @all_properties
            end
            ## 
            ## Sets the allProperties property value. Enables locking all sensitive properties. The sensitive properties are keyCredentials, passwordCredentials, and tokenEncryptionKeyId.
            ## @param value Value to set for the allProperties property.
            ## @return a void
            ## 
            def all_properties=(value)
                @all_properties = value
            end
            ## 
            ## Instantiates a new ServicePrincipalLockConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_principal_lock_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePrincipalLockConfiguration.new
            end
            ## 
            ## Gets the credentialsWithUsageSign property value. Locks the keyCredentials and passwordCredentials properties for modification where credential usage type is Sign.
            ## @return a boolean
            ## 
            def credentials_with_usage_sign
                return @credentials_with_usage_sign
            end
            ## 
            ## Sets the credentialsWithUsageSign property value. Locks the keyCredentials and passwordCredentials properties for modification where credential usage type is Sign.
            ## @param value Value to set for the credentialsWithUsageSign property.
            ## @return a void
            ## 
            def credentials_with_usage_sign=(value)
                @credentials_with_usage_sign = value
            end
            ## 
            ## Gets the credentialsWithUsageVerify property value. Locks the keyCredentials and passwordCredentials properties for modification where credential usage type is Verify. This locks OAuth service principals.
            ## @return a boolean
            ## 
            def credentials_with_usage_verify
                return @credentials_with_usage_verify
            end
            ## 
            ## Sets the credentialsWithUsageVerify property value. Locks the keyCredentials and passwordCredentials properties for modification where credential usage type is Verify. This locks OAuth service principals.
            ## @param value Value to set for the credentialsWithUsageVerify property.
            ## @return a void
            ## 
            def credentials_with_usage_verify=(value)
                @credentials_with_usage_verify = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allProperties" => lambda {|n| @all_properties = n.get_boolean_value() },
                    "credentialsWithUsageSign" => lambda {|n| @credentials_with_usage_sign = n.get_boolean_value() },
                    "credentialsWithUsageVerify" => lambda {|n| @credentials_with_usage_verify = n.get_boolean_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tokenEncryptionKeyId" => lambda {|n| @token_encryption_key_id = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the isEnabled property value. Enables or disables service principal lock configuration. To allow the sensitive properties to be updated, update this property to false to disable the lock on the service principal.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Enables or disables service principal lock configuration. To allow the sensitive properties to be updated, update this property to false to disable the lock on the service principal.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
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
                writer.write_boolean_value("allProperties", @all_properties)
                writer.write_boolean_value("credentialsWithUsageSign", @credentials_with_usage_sign)
                writer.write_boolean_value("credentialsWithUsageVerify", @credentials_with_usage_verify)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("tokenEncryptionKeyId", @token_encryption_key_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tokenEncryptionKeyId property value. Locks the tokenEncryptionKeyId property for modification on the service principal.
            ## @return a boolean
            ## 
            def token_encryption_key_id
                return @token_encryption_key_id
            end
            ## 
            ## Sets the tokenEncryptionKeyId property value. Locks the tokenEncryptionKeyId property for modification on the service principal.
            ## @param value Value to set for the tokenEncryptionKeyId property.
            ## @return a void
            ## 
            def token_encryption_key_id=(value)
                @token_encryption_key_id = value
            end
        end
    end
end
