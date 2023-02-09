require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Pkcs12Certificate < MicrosoftGraph::Models::ApiAuthenticationConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The password for the pfx file. Required. If no password is used, you must still provide a value of ''.
            @password
            ## 
            # Represents the pfx content that is sent. The value should be a base-64 encoded version of the actual certificate content. Required.
            @pkcs12_value
            ## 
            ## Instantiates a new Pkcs12Certificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.pkcs12Certificate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a pkcs12_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Pkcs12Certificate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "password" => lambda {|n| @password = n.get_string_value() },
                    "pkcs12Value" => lambda {|n| @pkcs12_value = n.get_string_value() },
                })
            end
            ## 
            ## Gets the password property value. The password for the pfx file. Required. If no password is used, you must still provide a value of ''.
            ## @return a string
            ## 
            def password
                return @password
            end
            ## 
            ## Sets the password property value. The password for the pfx file. Required. If no password is used, you must still provide a value of ''.
            ## @param value Value to set for the password property.
            ## @return a void
            ## 
            def password=(value)
                @password = value
            end
            ## 
            ## Gets the pkcs12Value property value. Represents the pfx content that is sent. The value should be a base-64 encoded version of the actual certificate content. Required.
            ## @return a string
            ## 
            def pkcs12_value
                return @pkcs12_value
            end
            ## 
            ## Sets the pkcs12Value property value. Represents the pfx content that is sent. The value should be a base-64 encoded version of the actual certificate content. Required.
            ## @param value Value to set for the pkcs12_value property.
            ## @return a void
            ## 
            def pkcs12_value=(value)
                @pkcs12_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("password", @password)
                writer.write_string_value("pkcs12Value", @pkcs12_value)
            end
        end
    end
end
