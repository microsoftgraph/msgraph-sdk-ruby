require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SocialIdentitySource < MicrosoftGraph::Models::IdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The socialIdentitySourceType property
            @social_identity_source_type
            ## 
            ## Instantiates a new SocialIdentitySource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.socialIdentitySource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a social_identity_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SocialIdentitySource.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
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
                    "socialIdentitySourceType" => lambda {|n| @social_identity_source_type = n.get_enum_value(MicrosoftGraph::Models::SocialIdentitySourceType) },
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
                writer.write_enum_value("socialIdentitySourceType", @social_identity_source_type)
            end
            ## 
            ## Gets the socialIdentitySourceType property value. The socialIdentitySourceType property
            ## @return a social_identity_source_type
            ## 
            def social_identity_source_type
                return @social_identity_source_type
            end
            ## 
            ## Sets the socialIdentitySourceType property value. The socialIdentitySourceType property
            ## @param value Value to set for the socialIdentitySourceType property.
            ## @return a void
            ## 
            def social_identity_source_type=(value)
                @social_identity_source_type = value
            end
        end
    end
end
