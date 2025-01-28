require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcUserRoleScopeTagInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Scope tag display name.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Scope tag identity.
            @role_scope_tag_id
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new CloudPcUserRoleScopeTagInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_user_role_scope_tag_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcUserRoleScopeTagInfo.new
            end
            ## 
            ## Gets the displayName property value. Scope tag display name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Scope tag display name.
            ## @param value Value to set for the displayName property.
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
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "roleScopeTagId" => lambda {|n| @role_scope_tag_id = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the roleScopeTagId property value. Scope tag identity.
            ## @return a string
            ## 
            def role_scope_tag_id
                return @role_scope_tag_id
            end
            ## 
            ## Sets the roleScopeTagId property value. Scope tag identity.
            ## @param value Value to set for the roleScopeTagId property.
            ## @return a void
            ## 
            def role_scope_tag_id=(value)
                @role_scope_tag_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("roleScopeTagId", @role_scope_tag_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
