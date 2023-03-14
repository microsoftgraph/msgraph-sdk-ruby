require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SoftwareOathAuthenticationMethod < MicrosoftGraph::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The secret key of the method. Always returns null.
            @secret_key
            ## 
            ## Instantiates a new SoftwareOathAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.softwareOathAuthenticationMethod"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a software_oath_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SoftwareOathAuthenticationMethod.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "secretKey" => lambda {|n| @secret_key = n.get_string_value() },
                })
            end
            ## 
            ## Gets the secretKey property value. The secret key of the method. Always returns null.
            ## @return a string
            ## 
            def secret_key
                return @secret_key
            end
            ## 
            ## Sets the secretKey property value. The secret key of the method. Always returns null.
            ## @param value Value to set for the secret_key property.
            ## @return a void
            ## 
            def secret_key=(value)
                @secret_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("secretKey", @secret_key)
            end
        end
    end
end
