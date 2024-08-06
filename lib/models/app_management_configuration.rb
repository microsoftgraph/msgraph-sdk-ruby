require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppManagementConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Collection of keyCredential restrictions settings to be applied to an application or service principal.
            @key_credentials
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Collection of password restrictions settings to be applied to an application or service principal.
            @password_credentials
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
            ## Instantiates a new AppManagementConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_management_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.appManagementApplicationConfiguration"
                            return AppManagementApplicationConfiguration.new
                        when "#microsoft.graph.appManagementServicePrincipalConfiguration"
                            return AppManagementServicePrincipalConfiguration.new
                        when "#microsoft.graph.customAppManagementConfiguration"
                            return CustomAppManagementConfiguration.new
                    end
                end
                return AppManagementConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "keyCredentials" => lambda {|n| @key_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyCredentialConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "passwordCredentials" => lambda {|n| @password_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PasswordCredentialConfiguration.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the keyCredentials property value. Collection of keyCredential restrictions settings to be applied to an application or service principal.
            ## @return a key_credential_configuration
            ## 
            def key_credentials
                return @key_credentials
            end
            ## 
            ## Sets the keyCredentials property value. Collection of keyCredential restrictions settings to be applied to an application or service principal.
            ## @param value Value to set for the keyCredentials property.
            ## @return a void
            ## 
            def key_credentials=(value)
                @key_credentials = value
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
            ## Gets the passwordCredentials property value. Collection of password restrictions settings to be applied to an application or service principal.
            ## @return a password_credential_configuration
            ## 
            def password_credentials
                return @password_credentials
            end
            ## 
            ## Sets the passwordCredentials property value. Collection of password restrictions settings to be applied to an application or service principal.
            ## @param value Value to set for the passwordCredentials property.
            ## @return a void
            ## 
            def password_credentials=(value)
                @password_credentials = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("keyCredentials", @key_credentials)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("passwordCredentials", @password_credentials)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
