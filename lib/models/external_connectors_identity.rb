require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExternalConnectorsIdentity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The type of identity. Possible values are: user or group for Microsoft Entra identities and externalgroup for groups in an external system.
            @type
            ## 
            ## Instantiates a new externalConnectorsIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_connectors_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalConnectorsIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::ExternalConnectorsIdentityType) },
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
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the type property value. The type of identity. Possible values are: user or group for Microsoft Entra identities and externalgroup for groups in an external system.
            ## @return a external_connectors_identity_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of identity. Possible values are: user or group for Microsoft Entra identities and externalgroup for groups in an external system.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
