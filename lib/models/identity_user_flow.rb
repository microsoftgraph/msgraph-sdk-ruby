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
            ## @param parse_node The parse node to use to read the discriminator value and create the object
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
                    "userFlowTypeVersion" => lambda {|n| @user_flow_type_version = n.get_object_value(lambda {|pn| IdentityUserFlow::IdentityUserFlowUserFlowTypeVersion.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("userFlowTypeVersion", @user_flow_type_version)
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
            ## @param value Value to set for the userFlowType property.
            ## @return a void
            ## 
            def user_flow_type=(value)
                @user_flow_type = value
            end
            ## 
            ## Gets the userFlowTypeVersion property value. The userFlowTypeVersion property
            ## @return a identity_user_flow_user_flow_type_version
            ## 
            def user_flow_type_version
                return @user_flow_type_version
            end
            ## 
            ## Sets the userFlowTypeVersion property value. The userFlowTypeVersion property
            ## @param value Value to set for the userFlowTypeVersion property.
            ## @return a void
            ## 
            def user_flow_type_version=(value)
                @user_flow_type_version = value
            end

            ## 
            # Composed type wrapper for classes float, ReferenceNumeric, string
            class IdentityUserFlowUserFlowTypeVersion
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type float
                @float
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a identity_user_flow_user_flow_type_version
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return IdentityUserFlowUserFlowTypeVersion.new
                end
                ## 
                ## Gets the float property value. Composed type representation for type float
                ## @return a float
                ## 
                def float
                    return @float
                end
                ## 
                ## Sets the float property value. Composed type representation for type float
                ## @param value Value to set for the float property.
                ## @return a void
                ## 
                def float=(value)
                    @float = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "float" => lambda {|n| @float = n.get_float_value() },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_float_value("float", @float)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
