require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DelegatedPermissionClassification < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The classification value being given. Possible value: low. Does not support $filter.
            @classification
            ## 
            # The unique identifier (id) for the delegated permission listed in the oauth2PermissionScopes collection of the servicePrincipal. Required on create. Does not support $filter.
            @permission_id
            ## 
            # The claim value (value) for the delegated permission listed in the oauth2PermissionScopes collection of the servicePrincipal. Does not support $filter.
            @permission_name
            ## 
            ## Gets the classification property value. The classification value being given. Possible value: low. Does not support $filter.
            ## @return a permission_classification_type
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. The classification value being given. Possible value: low. Does not support $filter.
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new delegatedPermissionClassification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a delegated_permission_classification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DelegatedPermissionClassification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraph::Models::PermissionClassificationType) },
                    "permissionId" => lambda {|n| @permission_id = n.get_string_value() },
                    "permissionName" => lambda {|n| @permission_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the permissionId property value. The unique identifier (id) for the delegated permission listed in the oauth2PermissionScopes collection of the servicePrincipal. Required on create. Does not support $filter.
            ## @return a string
            ## 
            def permission_id
                return @permission_id
            end
            ## 
            ## Sets the permissionId property value. The unique identifier (id) for the delegated permission listed in the oauth2PermissionScopes collection of the servicePrincipal. Required on create. Does not support $filter.
            ## @param value Value to set for the permission_id property.
            ## @return a void
            ## 
            def permission_id=(value)
                @permission_id = value
            end
            ## 
            ## Gets the permissionName property value. The claim value (value) for the delegated permission listed in the oauth2PermissionScopes collection of the servicePrincipal. Does not support $filter.
            ## @return a string
            ## 
            def permission_name
                return @permission_name
            end
            ## 
            ## Sets the permissionName property value. The claim value (value) for the delegated permission listed in the oauth2PermissionScopes collection of the servicePrincipal. Does not support $filter.
            ## @param value Value to set for the permission_name property.
            ## @return a void
            ## 
            def permission_name=(value)
                @permission_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("classification", @classification)
                writer.write_string_value("permissionId", @permission_id)
                writer.write_string_value("permissionName", @permission_name)
            end
        end
    end
end
