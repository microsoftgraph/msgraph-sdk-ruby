require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewInstanceDecisionItemServicePrincipalResource < MicrosoftGraph::Models::AccessReviewInstanceDecisionItemResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The globally unique identifier of the application to which access has been granted.
            @app_id
            ## 
            ## Gets the appId property value. The globally unique identifier of the application to which access has been granted.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The globally unique identifier of the application to which access has been granted.
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new accessReviewInstanceDecisionItemServicePrincipalResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessReviewInstanceDecisionItemServicePrincipalResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_review_instance_decision_item_service_principal_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewInstanceDecisionItemServicePrincipalResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
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
                writer.write_string_value("appId", @app_id)
            end
        end
    end
end
