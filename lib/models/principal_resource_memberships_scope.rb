require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrincipalResourceMembershipsScope < MicrosoftGraph::Models::AccessReviewScope
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the scopes of the principals whose access to resources are reviewed in the access review.
            @principal_scopes
            ## 
            # Defines the scopes of the resources for which access is reviewed.
            @resource_scopes
            ## 
            ## Instantiates a new PrincipalResourceMembershipsScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.principalResourceMembershipsScope"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a principal_resource_memberships_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrincipalResourceMembershipsScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "principalScopes" => lambda {|n| @principal_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewScope.create_from_discriminator_value(pn) }) },
                    "resourceScopes" => lambda {|n| @resource_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessReviewScope.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the principalScopes property value. Defines the scopes of the principals whose access to resources are reviewed in the access review.
            ## @return a access_review_scope
            ## 
            def principal_scopes
                return @principal_scopes
            end
            ## 
            ## Sets the principalScopes property value. Defines the scopes of the principals whose access to resources are reviewed in the access review.
            ## @param value Value to set for the principal_scopes property.
            ## @return a void
            ## 
            def principal_scopes=(value)
                @principal_scopes = value
            end
            ## 
            ## Gets the resourceScopes property value. Defines the scopes of the resources for which access is reviewed.
            ## @return a access_review_scope
            ## 
            def resource_scopes
                return @resource_scopes
            end
            ## 
            ## Sets the resourceScopes property value. Defines the scopes of the resources for which access is reviewed.
            ## @param value Value to set for the resource_scopes property.
            ## @return a void
            ## 
            def resource_scopes=(value)
                @resource_scopes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("principalScopes", @principal_scopes)
                writer.write_collection_of_object_values("resourceScopes", @resource_scopes)
            end
        end
    end
end
