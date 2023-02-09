require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedRolePermission
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Set of tasks that can be performed on a resource. Required.
            @allowed_resource_actions
            ## 
            # Optional constraints that must be met for the permission to be effective. Not supported for custom roles.
            @condition
            ## 
            # Set of tasks that may not be performed on a resource. Not yet supported.
            @excluded_resource_actions
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowedResourceActions property value. Set of tasks that can be performed on a resource. Required.
            ## @return a string
            ## 
            def allowed_resource_actions
                return @allowed_resource_actions
            end
            ## 
            ## Sets the allowedResourceActions property value. Set of tasks that can be performed on a resource. Required.
            ## @param value Value to set for the allowed_resource_actions property.
            ## @return a void
            ## 
            def allowed_resource_actions=(value)
                @allowed_resource_actions = value
            end
            ## 
            ## Gets the condition property value. Optional constraints that must be met for the permission to be effective. Not supported for custom roles.
            ## @return a string
            ## 
            def condition
                return @condition
            end
            ## 
            ## Sets the condition property value. Optional constraints that must be met for the permission to be effective. Not supported for custom roles.
            ## @param value Value to set for the condition property.
            ## @return a void
            ## 
            def condition=(value)
                @condition = value
            end
            ## 
            ## Instantiates a new unifiedRolePermission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_permission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRolePermission.new
            end
            ## 
            ## Gets the excludedResourceActions property value. Set of tasks that may not be performed on a resource. Not yet supported.
            ## @return a string
            ## 
            def excluded_resource_actions
                return @excluded_resource_actions
            end
            ## 
            ## Sets the excludedResourceActions property value. Set of tasks that may not be performed on a resource. Not yet supported.
            ## @param value Value to set for the excluded_resource_actions property.
            ## @return a void
            ## 
            def excluded_resource_actions=(value)
                @excluded_resource_actions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedResourceActions" => lambda {|n| @allowed_resource_actions = n.get_collection_of_primitive_values(String) },
                    "condition" => lambda {|n| @condition = n.get_string_value() },
                    "excludedResourceActions" => lambda {|n| @excluded_resource_actions = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("allowedResourceActions", @allowed_resource_actions)
                writer.write_string_value("condition", @condition)
                writer.write_collection_of_primitive_values("excludedResourceActions", @excluded_resource_actions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
