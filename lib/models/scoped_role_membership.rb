require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ScopedRoleMembership < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier for the administrative unit that the directory role is scoped to
            @administrative_unit_id
            ## 
            # Unique identifier for the directory role that the member is in.
            @role_id
            ## 
            # The roleMemberInfo property
            @role_member_info
            ## 
            ## Gets the administrativeUnitId property value. Unique identifier for the administrative unit that the directory role is scoped to
            ## @return a string
            ## 
            def administrative_unit_id
                return @administrative_unit_id
            end
            ## 
            ## Sets the administrativeUnitId property value. Unique identifier for the administrative unit that the directory role is scoped to
            ## @param value Value to set for the administrative_unit_id property.
            ## @return a void
            ## 
            def administrative_unit_id=(value)
                @administrative_unit_id = value
            end
            ## 
            ## Instantiates a new scopedRoleMembership and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a scoped_role_membership
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ScopedRoleMembership.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "administrativeUnitId" => lambda {|n| @administrative_unit_id = n.get_string_value() },
                    "roleId" => lambda {|n| @role_id = n.get_string_value() },
                    "roleMemberInfo" => lambda {|n| @role_member_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the roleId property value. Unique identifier for the directory role that the member is in.
            ## @return a string
            ## 
            def role_id
                return @role_id
            end
            ## 
            ## Sets the roleId property value. Unique identifier for the directory role that the member is in.
            ## @param value Value to set for the role_id property.
            ## @return a void
            ## 
            def role_id=(value)
                @role_id = value
            end
            ## 
            ## Gets the roleMemberInfo property value. The roleMemberInfo property
            ## @return a identity
            ## 
            def role_member_info
                return @role_member_info
            end
            ## 
            ## Sets the roleMemberInfo property value. The roleMemberInfo property
            ## @param value Value to set for the role_member_info property.
            ## @return a void
            ## 
            def role_member_info=(value)
                @role_member_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("administrativeUnitId", @administrative_unit_id)
                writer.write_string_value("roleId", @role_id)
                writer.write_object_value("roleMemberInfo", @role_member_info)
            end
        end
    end
end
