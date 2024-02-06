require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRbacResourceAction < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionVerb property
            @action_verb
            ## 
            # The authenticationContextId property
            @authentication_context_id
            ## 
            # The description property
            @description
            ## 
            # The isAuthenticationContextSettable property
            @is_authentication_context_settable
            ## 
            # The name property
            @name
            ## 
            # The resourceScopeId property
            @resource_scope_id
            ## 
            ## Gets the actionVerb property value. The actionVerb property
            ## @return a string
            ## 
            def action_verb
                return @action_verb
            end
            ## 
            ## Sets the actionVerb property value. The actionVerb property
            ## @param value Value to set for the actionVerb property.
            ## @return a void
            ## 
            def action_verb=(value)
                @action_verb = value
            end
            ## 
            ## Gets the authenticationContextId property value. The authenticationContextId property
            ## @return a string
            ## 
            def authentication_context_id
                return @authentication_context_id
            end
            ## 
            ## Sets the authenticationContextId property value. The authenticationContextId property
            ## @param value Value to set for the authenticationContextId property.
            ## @return a void
            ## 
            def authentication_context_id=(value)
                @authentication_context_id = value
            end
            ## 
            ## Instantiates a new unifiedRbacResourceAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_rbac_resource_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRbacResourceAction.new
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionVerb" => lambda {|n| @action_verb = n.get_string_value() },
                    "authenticationContextId" => lambda {|n| @authentication_context_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "isAuthenticationContextSettable" => lambda {|n| @is_authentication_context_settable = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "resourceScopeId" => lambda {|n| @resource_scope_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isAuthenticationContextSettable property value. The isAuthenticationContextSettable property
            ## @return a boolean
            ## 
            def is_authentication_context_settable
                return @is_authentication_context_settable
            end
            ## 
            ## Sets the isAuthenticationContextSettable property value. The isAuthenticationContextSettable property
            ## @param value Value to set for the isAuthenticationContextSettable property.
            ## @return a void
            ## 
            def is_authentication_context_settable=(value)
                @is_authentication_context_settable = value
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
            ## Gets the resourceScopeId property value. The resourceScopeId property
            ## @return a string
            ## 
            def resource_scope_id
                return @resource_scope_id
            end
            ## 
            ## Sets the resourceScopeId property value. The resourceScopeId property
            ## @param value Value to set for the resourceScopeId property.
            ## @return a void
            ## 
            def resource_scope_id=(value)
                @resource_scope_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("actionVerb", @action_verb) unless @action_verb.nil?
                writer.write_string_value("authenticationContextId", @authentication_context_id) unless @authentication_context_id.nil?
                writer.write_string_value("description", @description) unless @description.nil?
                writer.write_boolean_value("isAuthenticationContextSettable", @is_authentication_context_settable) unless @is_authentication_context_settable.nil?
                writer.write_string_value("name", @name) unless @name.nil?
                writer.write_string_value("resourceScopeId", @resource_scope_id) unless @resource_scope_id.nil?
            end
        end
    end
end
