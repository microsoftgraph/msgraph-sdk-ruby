require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcAuditResource
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The display name of the modified resource entity.
            @display_name
            ## 
            # The list of modified properties.
            @modified_properties
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier of the modified resource entity.
            @resource_id
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
            ## Instantiates a new CloudPcAuditResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_audit_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcAuditResource.new
            end
            ## 
            ## Gets the displayName property value. The display name of the modified resource entity.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the modified resource entity.
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
                    "modifiedProperties" => lambda {|n| @modified_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcAuditProperty.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the modifiedProperties property value. The list of modified properties.
            ## @return a cloud_pc_audit_property
            ## 
            def modified_properties
                return @modified_properties
            end
            ## 
            ## Sets the modifiedProperties property value. The list of modified properties.
            ## @param value Value to set for the modifiedProperties property.
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the resourceId property value. The unique identifier of the modified resource entity.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The unique identifier of the modified resource entity.
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("modifiedProperties", @modified_properties)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
