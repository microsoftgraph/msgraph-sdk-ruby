require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TargetResource
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the visible name defined for the resource. Typically specified when the resource is created.
            @display_name
            ## 
            # When type is set to Group, this indicates the group type. Possible values are: unifiedGroups, azureAD, and unknownFutureValue
            @group_type
            ## 
            # Indicates the unique ID of the resource.
            @id
            ## 
            # Indicates name, old value and new value of each attribute that changed. Property values depend on the operation type.
            @modified_properties
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Describes the resource type.  Example values include Application, Group, ServicePrincipal, and User.
            @type
            ## 
            # When type is set to User, this includes the user name that initiated the action; null for other types.
            @user_principal_name
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
            ## Instantiates a new targetResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a target_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TargetResource.new
            end
            ## 
            ## Gets the displayName property value. Indicates the visible name defined for the resource. Typically specified when the resource is created.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Indicates the visible name defined for the resource. Typically specified when the resource is created.
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
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "groupType" => lambda {|n| @group_type = n.get_enum_value(MicrosoftGraph::Models::GroupType) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "modifiedProperties" => lambda {|n| @modified_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ModifiedProperty.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the groupType property value. When type is set to Group, this indicates the group type. Possible values are: unifiedGroups, azureAD, and unknownFutureValue
            ## @return a group_type
            ## 
            def group_type
                return @group_type
            end
            ## 
            ## Sets the groupType property value. When type is set to Group, this indicates the group type. Possible values are: unifiedGroups, azureAD, and unknownFutureValue
            ## @param value Value to set for the group_type property.
            ## @return a void
            ## 
            def group_type=(value)
                @group_type = value
            end
            ## 
            ## Gets the id property value. Indicates the unique ID of the resource.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Indicates the unique ID of the resource.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the modifiedProperties property value. Indicates name, old value and new value of each attribute that changed. Property values depend on the operation type.
            ## @return a modified_property
            ## 
            def modified_properties
                return @modified_properties
            end
            ## 
            ## Sets the modifiedProperties property value. Indicates name, old value and new value of each attribute that changed. Property values depend on the operation type.
            ## @param value Value to set for the modified_properties property.
            ## @return a void
            ## 
            def modified_properties=(value)
                @modified_properties = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("groupType", @group_type)
                writer.write_string_value("id", @id)
                writer.write_collection_of_object_values("modifiedProperties", @modified_properties)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("type", @type)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. Describes the resource type.  Example values include Application, Group, ServicePrincipal, and User.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Describes the resource type.  Example values include Application, Group, ServicePrincipal, and User.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the userPrincipalName property value. When type is set to User, this includes the user name that initiated the action; null for other types.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. When type is set to User, this includes the user name that initiated the action; null for other types.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
