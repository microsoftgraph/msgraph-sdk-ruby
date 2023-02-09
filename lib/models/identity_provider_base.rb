require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityProviderBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the identity provider.
            @display_name
            ## 
            ## Instantiates a new identityProviderBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_provider_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.appleManagedIdentityProvider"
                            return AppleManagedIdentityProvider.new
                        when "#microsoft.graph.builtInIdentityProvider"
                            return BuiltInIdentityProvider.new
                        when "#microsoft.graph.internalDomainFederation"
                            return InternalDomainFederation.new
                        when "#microsoft.graph.samlOrWsFedExternalDomainFederation"
                            return SamlOrWsFedExternalDomainFederation.new
                        when "#microsoft.graph.samlOrWsFedProvider"
                            return SamlOrWsFedProvider.new
                        when "#microsoft.graph.socialIdentityProvider"
                            return SocialIdentityProvider.new
                    end
                end
                return IdentityProviderBase.new
            end
            ## 
            ## Gets the displayName property value. The display name of the identity provider.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the identity provider.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
            end
        end
    end
end
