require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageResourceRoleScope < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The role property
            @role
            ## 
            # The scope property
            @scope
            ## 
            ## Instantiates a new accessPackageResourceRoleScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_role_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceRoleScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "role" => lambda {|n| @role = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                    "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a access_package_resource_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Gets the scope property value. The scope property
            ## @return a access_package_resource_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. The scope property
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
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("role", @role)
                writer.write_object_value("scope", @scope)
            end
        end
    end
end
