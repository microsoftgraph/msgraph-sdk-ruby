require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class ExternalDomainFederation < MicrosoftGraph::Models::IdentitySource
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the identity source, typically also the domain name. Read only.
        @display_name
        ## 
        # The domain name. Read only.
        @domain_name
        ## 
        # The issuerURI of the incoming federation. Read only.
        @issuer_uri
        ## 
        ## Instantiates a new ExternalDomainFederation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.externalDomainFederation"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a external_domain_federation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ExternalDomainFederation.new
        end
        ## 
        ## Gets the displayName property value. The name of the identity source, typically also the domain name. Read only.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The name of the identity source, typically also the domain name. Read only.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the domainName property value. The domain name. Read only.
        ## @return a string
        ## 
        def domain_name
            return @domain_name
        end
        ## 
        ## Sets the domainName property value. The domain name. Read only.
        ## @param value Value to set for the domainName property.
        ## @return a void
        ## 
        def domain_name=(value)
            @domain_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                "issuerUri" => lambda {|n| @issuer_uri = n.get_string_value() },
            })
        end
        ## 
        ## Gets the issuerUri property value. The issuerURI of the incoming federation. Read only.
        ## @return a string
        ## 
        def issuer_uri
            return @issuer_uri
        end
        ## 
        ## Sets the issuerUri property value. The issuerURI of the incoming federation. Read only.
        ## @param value Value to set for the issuerUri property.
        ## @return a void
        ## 
        def issuer_uri=(value)
            @issuer_uri = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("domainName", @domain_name)
            writer.write_string_value("issuerUri", @issuer_uri)
        end
    end
end
