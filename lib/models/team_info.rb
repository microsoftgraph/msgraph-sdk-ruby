require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamInfo < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the team.
            @display_name
            ## 
            # The team property
            @team
            ## 
            # The ID of the Azure Active Directory tenant.
            @tenant_id
            ## 
            ## Instantiates a new teamInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a team_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.associatedTeamInfo"
                            return AssociatedTeamInfo.new
                        when "#microsoft.graph.sharedWithChannelTeamInfo"
                            return SharedWithChannelTeamInfo.new
                    end
                end
                return TeamInfo.new
            end
            ## 
            ## Gets the displayName property value. The name of the team.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the team.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "team" => lambda {|n| @team = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("team", @team)
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the team property value. The team property
            ## @return a team
            ## 
            def team
                return @team
            end
            ## 
            ## Sets the team property value. The team property
            ## @param value Value to set for the team property.
            ## @return a void
            ## 
            def team=(value)
                @team = value
            end
            ## 
            ## Gets the tenantId property value. The ID of the Azure Active Directory tenant.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The ID of the Azure Active Directory tenant.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
