require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRbacResourceNamespace < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name property
            @name
            ## 
            # The resourceActions property
            @resource_actions
            ## 
            ## Instantiates a new unifiedRbacResourceNamespace and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_rbac_resource_namespace
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRbacResourceNamespace.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "resourceActions" => lambda {|n| @resource_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRbacResourceAction.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the resourceActions property value. The resourceActions property
            ## @return a unified_rbac_resource_action
            ## 
            def resource_actions
                return @resource_actions
            end
            ## 
            ## Sets the resourceActions property value. The resourceActions property
            ## @param value Value to set for the resourceActions property.
            ## @return a void
            ## 
            def resource_actions=(value)
                @resource_actions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("resourceActions", @resource_actions)
            end
        end
    end
end
