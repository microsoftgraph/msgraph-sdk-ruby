require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppleManagedIdentityProvider < MicrosoftGraph::Models::IdentityProviderBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The certificate data, which is a long string of text from the certificate. Can be null.
            @certificate_data
            ## 
            # The Apple developer identifier. Required.
            @developer_id
            ## 
            # The Apple key identifier. Required.
            @key_id
            ## 
            # The Apple service identifier. Required.
            @service_id
            ## 
            ## Gets the certificateData property value. The certificate data, which is a long string of text from the certificate. Can be null.
            ## @return a string
            ## 
            def certificate_data
                return @certificate_data
            end
            ## 
            ## Sets the certificateData property value. The certificate data, which is a long string of text from the certificate. Can be null.
            ## @param value Value to set for the certificate_data property.
            ## @return a void
            ## 
            def certificate_data=(value)
                @certificate_data = value
            end
            ## 
            ## Instantiates a new AppleManagedIdentityProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appleManagedIdentityProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a apple_managed_identity_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppleManagedIdentityProvider.new
            end
            ## 
            ## Gets the developerId property value. The Apple developer identifier. Required.
            ## @return a string
            ## 
            def developer_id
                return @developer_id
            end
            ## 
            ## Sets the developerId property value. The Apple developer identifier. Required.
            ## @param value Value to set for the developer_id property.
            ## @return a void
            ## 
            def developer_id=(value)
                @developer_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateData" => lambda {|n| @certificate_data = n.get_string_value() },
                    "developerId" => lambda {|n| @developer_id = n.get_string_value() },
                    "keyId" => lambda {|n| @key_id = n.get_string_value() },
                    "serviceId" => lambda {|n| @service_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the keyId property value. The Apple key identifier. Required.
            ## @return a string
            ## 
            def key_id
                return @key_id
            end
            ## 
            ## Sets the keyId property value. The Apple key identifier. Required.
            ## @param value Value to set for the key_id property.
            ## @return a void
            ## 
            def key_id=(value)
                @key_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("certificateData", @certificate_data)
                writer.write_string_value("developerId", @developer_id)
                writer.write_string_value("keyId", @key_id)
                writer.write_string_value("serviceId", @service_id)
            end
            ## 
            ## Gets the serviceId property value. The Apple service identifier. Required.
            ## @return a string
            ## 
            def service_id
                return @service_id
            end
            ## 
            ## Sets the serviceId property value. The Apple service identifier. Required.
            ## @param value Value to set for the service_id property.
            ## @return a void
            ## 
            def service_id=(value)
                @service_id = value
            end
        end
    end
end
