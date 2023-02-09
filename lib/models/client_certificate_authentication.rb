require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ClientCertificateAuthentication < MicrosoftGraph::Models::ApiAuthenticationConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of certificates uploaded for this API connector.
            @certificate_list
            ## 
            ## Gets the certificateList property value. The list of certificates uploaded for this API connector.
            ## @return a pkcs12_certificate_information
            ## 
            def certificate_list
                return @certificate_list
            end
            ## 
            ## Sets the certificateList property value. The list of certificates uploaded for this API connector.
            ## @param value Value to set for the certificate_list property.
            ## @return a void
            ## 
            def certificate_list=(value)
                @certificate_list = value
            end
            ## 
            ## Instantiates a new ClientCertificateAuthentication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.clientCertificateAuthentication"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a client_certificate_authentication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ClientCertificateAuthentication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateList" => lambda {|n| @certificate_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Pkcs12CertificateInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("certificateList", @certificate_list)
            end
        end
    end
end
