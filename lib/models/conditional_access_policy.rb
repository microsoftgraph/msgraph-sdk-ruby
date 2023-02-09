require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConditionalAccessPolicy < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The conditions property
            @conditions
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Readonly.
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # Specifies a display name for the conditionalAccessPolicy object.
            @display_name
            ## 
            # Specifies the grant controls that must be fulfilled to pass the policy.
            @grant_controls
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Readonly.
            @modified_date_time
            ## 
            # Specifies the session controls that are enforced after sign-in.
            @session_controls
            ## 
            # The state property
            @state
            ## 
            ## Gets the conditions property value. The conditions property
            ## @return a conditional_access_condition_set
            ## 
            def conditions
                return @conditions
            end
            ## 
            ## Sets the conditions property value. The conditions property
            ## @param value Value to set for the conditions property.
            ## @return a void
            ## 
            def conditions=(value)
                @conditions = value
            end
            ## 
            ## Instantiates a new conditionalAccessPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Readonly.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Readonly.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessPolicy.new
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
            ## Gets the displayName property value. Specifies a display name for the conditionalAccessPolicy object.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Specifies a display name for the conditionalAccessPolicy object.
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
                    "conditions" => lambda {|n| @conditions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessConditionSet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "grantControls" => lambda {|n| @grant_controls = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessGrantControls.create_from_discriminator_value(pn) }) },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "sessionControls" => lambda {|n| @session_controls = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessSessionControls.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ConditionalAccessPolicyState) },
                })
            end
            ## 
            ## Gets the grantControls property value. Specifies the grant controls that must be fulfilled to pass the policy.
            ## @return a conditional_access_grant_controls
            ## 
            def grant_controls
                return @grant_controls
            end
            ## 
            ## Sets the grantControls property value. Specifies the grant controls that must be fulfilled to pass the policy.
            ## @param value Value to set for the grant_controls property.
            ## @return a void
            ## 
            def grant_controls=(value)
                @grant_controls = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Readonly.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Readonly.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
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
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("grantControls", @grant_controls)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_object_value("sessionControls", @session_controls)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the sessionControls property value. Specifies the session controls that are enforced after sign-in.
            ## @return a conditional_access_session_controls
            ## 
            def session_controls
                return @session_controls
            end
            ## 
            ## Sets the sessionControls property value. Specifies the session controls that are enforced after sign-in.
            ## @param value Value to set for the session_controls property.
            ## @return a void
            ## 
            def session_controls=(value)
                @session_controls = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a conditional_access_policy_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
