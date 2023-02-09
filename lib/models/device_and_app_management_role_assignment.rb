require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceAndAppManagementRoleAssignment < MicrosoftGraph::Models::RoleAssignment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of ids of role member security groups. These are IDs from Azure Active Directory.
            @members
            ## 
            ## Instantiates a new DeviceAndAppManagementRoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_and_app_management_role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceAndAppManagementRoleAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "members" => lambda {|n| @members = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the members property value. The list of ids of role member security groups. These are IDs from Azure Active Directory.
            ## @return a string
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. The list of ids of role member security groups. These are IDs from Azure Active Directory.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("members", @members)
            end
        end
    end
end
