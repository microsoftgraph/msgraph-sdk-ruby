require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProvisionedIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Details of the identity.
            @details
            ## 
            # Type of identity that has been provisioned, such as 'user' or 'group'.
            @identity_type
            ## 
            ## Instantiates a new ProvisionedIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.provisionedIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a provisioned_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProvisionedIdentity.new
            end
            ## 
            ## Gets the details property value. Details of the identity.
            ## @return a details_info
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Details of the identity.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "details" => lambda {|n| @details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DetailsInfo.create_from_discriminator_value(pn) }) },
                    "identityType" => lambda {|n| @identity_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the identityType property value. Type of identity that has been provisioned, such as 'user' or 'group'.
            ## @return a string
            ## 
            def identity_type
                return @identity_type
            end
            ## 
            ## Sets the identityType property value. Type of identity that has been provisioned, such as 'user' or 'group'.
            ## @param value Value to set for the identity_type property.
            ## @return a void
            ## 
            def identity_type=(value)
                @identity_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("details", @details)
                writer.write_string_value("identityType", @identity_type)
            end
        end
    end
end
