require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainIdentitySource < MicrosoftGraph::Models::IdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the identity source, typically also the domain name. Read only.
            @display_name
            ## 
            # The domain name. Read only.
            @domain_name
            ## 
            ## Instantiates a new DomainIdentitySource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.domainIdentitySource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_identity_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainIdentitySource.new
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
            ## @param value Value to set for the display_name property.
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
            ## @param value Value to set for the domain_name property.
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
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("domainName", @domain_name)
            end
        end
    end
end
