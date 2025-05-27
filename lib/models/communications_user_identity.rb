require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CommunicationsUserIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user's tenant ID.
            @tenant_id
            ## 
            ## Instantiates a new CommunicationsUserIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.communicationsUserIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a communications_user_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CommunicationsUserIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the tenantId property value. The user's tenant ID.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The user's tenant ID.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
