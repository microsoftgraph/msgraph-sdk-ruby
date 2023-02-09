require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityUserFlowAttribute < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The dataType property
            @data_type
            ## 
            # The description of the user flow attribute that's shown to the user at the time of sign-up.
            @description
            ## 
            # The display name of the user flow attribute.
            @display_name
            ## 
            # The userFlowAttributeType property
            @user_flow_attribute_type
            ## 
            ## Instantiates a new identityUserFlowAttribute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_user_flow_attribute
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.identityBuiltInUserFlowAttribute"
                            return IdentityBuiltInUserFlowAttribute.new
                        when "#microsoft.graph.identityCustomUserFlowAttribute"
                            return IdentityCustomUserFlowAttribute.new
                    end
                end
                return IdentityUserFlowAttribute.new
            end
            ## 
            ## Gets the dataType property value. The dataType property
            ## @return a identity_user_flow_attribute_data_type
            ## 
            def data_type
                return @data_type
            end
            ## 
            ## Sets the dataType property value. The dataType property
            ## @param value Value to set for the data_type property.
            ## @return a void
            ## 
            def data_type=(value)
                @data_type = value
            end
            ## 
            ## Gets the description property value. The description of the user flow attribute that's shown to the user at the time of sign-up.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the user flow attribute that's shown to the user at the time of sign-up.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the user flow attribute.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the user flow attribute.
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
                    "dataType" => lambda {|n| @data_type = n.get_enum_value(MicrosoftGraph::Models::IdentityUserFlowAttributeDataType) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "userFlowAttributeType" => lambda {|n| @user_flow_attribute_type = n.get_enum_value(MicrosoftGraph::Models::IdentityUserFlowAttributeType) },
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
                writer.write_enum_value("dataType", @data_type)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("userFlowAttributeType", @user_flow_attribute_type)
            end
            ## 
            ## Gets the userFlowAttributeType property value. The userFlowAttributeType property
            ## @return a identity_user_flow_attribute_type
            ## 
            def user_flow_attribute_type
                return @user_flow_attribute_type
            end
            ## 
            ## Sets the userFlowAttributeType property value. The userFlowAttributeType property
            ## @param value Value to set for the user_flow_attribute_type property.
            ## @return a void
            ## 
            def user_flow_attribute_type=(value)
                @user_flow_attribute_type = value
            end
        end
    end
end
