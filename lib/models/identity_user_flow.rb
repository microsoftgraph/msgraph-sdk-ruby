require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityUserFlow < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The userFlowType property
            @user_flow_type
            ## 
            # The userFlowTypeVersion property
            @user_flow_type_version
            ## 
            ## Instantiates a new IdentityUserFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_user_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.b2xIdentityUserFlow"
                            return B2xIdentityUserFlow.new
                    end
                end
                return IdentityUserFlow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userFlowType" => lambda {|n| @user_flow_type = n.get_enum_value(MicrosoftGraph::Models::UserFlowType) },
                    "userFlowTypeVersion" => lambda {|n| @user_flow_type_version = n.get_float_value() },
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
                writer.write_enum_value("userFlowType", @user_flow_type)
                writer.write_float_value("userFlowTypeVersion", @user_flow_type_version)
            end
            ## 
            ## Gets the userFlowType property value. The userFlowType property
            ## @return a user_flow_type
            ## 
            def user_flow_type
                return @user_flow_type
            end
            ## 
            ## Sets the userFlowType property value. The userFlowType property
            ## @param value Value to set for the user_flow_type property.
            ## @return a void
            ## 
            def user_flow_type=(value)
                @user_flow_type = value
            end
            ## 
            ## Gets the userFlowTypeVersion property value. The userFlowTypeVersion property
            ## @return a float
            ## 
            def user_flow_type_version
                return @user_flow_type_version
            end
            ## 
            ## Sets the userFlowTypeVersion property value. The userFlowTypeVersion property
            ## @param value Value to set for the user_flow_type_version property.
            ## @return a void
            ## 
            def user_flow_type_version=(value)
                @user_flow_type_version = value
            end
        end
    end
end
