require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SchedulingGroup < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name for the schedulingGroup. Required.
            @display_name
            ## 
            # Indicates whether the schedulingGroup can be used when creating new entities or updating existing ones. Required.
            @is_active
            ## 
            # The list of user IDs that are a member of the schedulingGroup. Required.
            @user_ids
            ## 
            ## Instantiates a new SchedulingGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.schedulingGroup"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a scheduling_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SchedulingGroup.new
            end
            ## 
            ## Gets the displayName property value. The display name for the schedulingGroup. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the schedulingGroup. Required.
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
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                    "userIds" => lambda {|n| @user_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the isActive property value. Indicates whether the schedulingGroup can be used when creating new entities or updating existing ones. Required.
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. Indicates whether the schedulingGroup can be used when creating new entities or updating existing ones. Required.
            ## @param value Value to set for the is_active property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
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
                writer.write_collection_of_primitive_values("userIds", @user_ids)
            end
            ## 
            ## Gets the userIds property value. The list of user IDs that are a member of the schedulingGroup. Required.
            ## @return a string
            ## 
            def user_ids
                return @user_ids
            end
            ## 
            ## Sets the userIds property value. The list of user IDs that are a member of the schedulingGroup. Required.
            ## @param value Value to set for the user_ids property.
            ## @return a void
            ## 
            def user_ids=(value)
                @user_ids = value
            end
        end
    end
end
