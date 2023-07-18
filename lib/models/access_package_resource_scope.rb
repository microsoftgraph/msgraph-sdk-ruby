require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageResourceScope < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The isRootScope property
            @is_root_scope
            ## 
            # The originId property
            @origin_id
            ## 
            # The originSystem property
            @origin_system
            ## 
            # The resource property
            @resource
            ## 
            ## Instantiates a new accessPackageResourceScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceScope.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
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
            ## @param value Value to set for the display_name property.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isRootScope" => lambda {|n| @is_root_scope = n.get_boolean_value() },
                    "originId" => lambda {|n| @origin_id = n.get_string_value() },
                    "originSystem" => lambda {|n| @origin_system = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isRootScope property value. The isRootScope property
            ## @return a boolean
            ## 
            def is_root_scope
                return @is_root_scope
            end
            ## 
            ## Sets the isRootScope property value. The isRootScope property
            ## @param value Value to set for the is_root_scope property.
            ## @return a void
            ## 
            def is_root_scope=(value)
                @is_root_scope = value
            end
            ## 
            ## Gets the originId property value. The originId property
            ## @return a string
            ## 
            def origin_id
                return @origin_id
            end
            ## 
            ## Sets the originId property value. The originId property
            ## @param value Value to set for the origin_id property.
            ## @return a void
            ## 
            def origin_id=(value)
                @origin_id = value
            end
            ## 
            ## Gets the originSystem property value. The originSystem property
            ## @return a string
            ## 
            def origin_system
                return @origin_system
            end
            ## 
            ## Sets the originSystem property value. The originSystem property
            ## @param value Value to set for the origin_system property.
            ## @return a void
            ## 
            def origin_system=(value)
                @origin_system = value
            end
            ## 
            ## Gets the resource property value. The resource property
            ## @return a access_package_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. The resource property
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isRootScope", @is_root_scope)
                writer.write_string_value("originId", @origin_id)
                writer.write_string_value("originSystem", @origin_system)
                writer.write_object_value("resource", @resource)
            end
        end
    end
end
