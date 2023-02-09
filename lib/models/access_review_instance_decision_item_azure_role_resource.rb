require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewInstanceDecisionItemAzureRoleResource < MicrosoftGraph::Models::AccessReviewInstanceDecisionItemResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Details of the scope this role is associated with.
            @scope
            ## 
            ## Instantiates a new AccessReviewInstanceDecisionItemAzureRoleResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_instance_decision_item_azure_role_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewInstanceDecisionItemAzureRoleResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewInstanceDecisionItemResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the scope property value. Details of the scope this role is associated with.
            ## @return a access_review_instance_decision_item_resource
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Details of the scope this role is associated with.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("scope", @scope)
            end
        end
    end
end
