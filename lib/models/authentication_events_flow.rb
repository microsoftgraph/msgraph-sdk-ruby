require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationEventsFlow < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The conditions representing the context of the authentication request that's used to decide whether the events policy is invoked.  Supports $filter (eq). See support for filtering on user flows for syntax information.
            @conditions
            ## 
            # The description of the events policy.
            @description
            ## 
            # Required. The display name for the events policy.
            @display_name
            ## 
            ## Gets the conditions property value. The conditions representing the context of the authentication request that's used to decide whether the events policy is invoked.  Supports $filter (eq). See support for filtering on user flows for syntax information.
            ## @return a authentication_conditions
            ## 
            def conditions
                return @conditions
            end
            ## 
            ## Sets the conditions property value. The conditions representing the context of the authentication request that's used to decide whether the events policy is invoked.  Supports $filter (eq). See support for filtering on user flows for syntax information.
            ## @param value Value to set for the conditions property.
            ## @return a void
            ## 
            def conditions=(value)
                @conditions = value
            end
            ## 
            ## Instantiates a new AuthenticationEventsFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_events_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow"
                            return ExternalUsersSelfServiceSignUpEventsFlow.new
                    end
                end
                return AuthenticationEventsFlow.new
            end
            ## 
            ## Gets the description property value. The description of the events policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the events policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Required. The display name for the events policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Required. The display name for the events policy.
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
                    "conditions" => lambda {|n| @conditions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationConditions.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_object_value("conditions", @conditions)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
