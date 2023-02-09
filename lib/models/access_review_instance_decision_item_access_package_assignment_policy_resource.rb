require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource < MicrosoftGraph::Models::AccessReviewInstanceDecisionItemResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the access package to which access has been granted.
            @access_package_display_name
            ## 
            # Identifier of the access package to which access has been granted.
            @access_package_id
            ## 
            ## Gets the accessPackageDisplayName property value. Display name of the access package to which access has been granted.
            ## @return a string
            ## 
            def access_package_display_name
                return @access_package_display_name
            end
            ## 
            ## Sets the accessPackageDisplayName property value. Display name of the access package to which access has been granted.
            ## @param value Value to set for the access_package_display_name property.
            ## @return a void
            ## 
            def access_package_display_name=(value)
                @access_package_display_name = value
            end
            ## 
            ## Gets the accessPackageId property value. Identifier of the access package to which access has been granted.
            ## @return a string
            ## 
            def access_package_id
                return @access_package_id
            end
            ## 
            ## Sets the accessPackageId property value. Identifier of the access package to which access has been granted.
            ## @param value Value to set for the access_package_id property.
            ## @return a void
            ## 
            def access_package_id=(value)
                @access_package_id = value
            end
            ## 
            ## Instantiates a new AccessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_instance_decision_item_access_package_assignment_policy_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackageDisplayName" => lambda {|n| @access_package_display_name = n.get_string_value() },
                    "accessPackageId" => lambda {|n| @access_package_id = n.get_string_value() },
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
                writer.write_string_value("accessPackageDisplayName", @access_package_display_name)
                writer.write_string_value("accessPackageId", @access_package_id)
            end
        end
    end
end
