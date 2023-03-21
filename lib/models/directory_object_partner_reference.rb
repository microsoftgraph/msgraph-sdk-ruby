require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DirectoryObjectPartnerReference < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of the object returned. Read-only.
            @description
            ## 
            # Name of directory object being returned, like group or application. Read-only.
            @display_name
            ## 
            # The tenant identifier for the partner tenant. Read-only.
            @external_partner_tenant_id
            ## 
            # The type of the referenced object in the partner tenant. Read-only.
            @object_type
            ## 
            ## Instantiates a new DirectoryObjectPartnerReference and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.directoryObjectPartnerReference"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a directory_object_partner_reference
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DirectoryObjectPartnerReference.new
            end
            ## 
            ## Gets the description property value. Description of the object returned. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the object returned. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Name of directory object being returned, like group or application. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of directory object being returned, like group or application. Read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalPartnerTenantId property value. The tenant identifier for the partner tenant. Read-only.
            ## @return a guid
            ## 
            def external_partner_tenant_id
                return @external_partner_tenant_id
            end
            ## 
            ## Sets the externalPartnerTenantId property value. The tenant identifier for the partner tenant. Read-only.
            ## @param value Value to set for the external_partner_tenant_id property.
            ## @return a void
            ## 
            def external_partner_tenant_id=(value)
                @external_partner_tenant_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalPartnerTenantId" => lambda {|n| @external_partner_tenant_id = n.get_guid_value() },
                    "objectType" => lambda {|n| @object_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the objectType property value. The type of the referenced object in the partner tenant. Read-only.
            ## @return a string
            ## 
            def object_type
                return @object_type
            end
            ## 
            ## Sets the objectType property value. The type of the referenced object in the partner tenant. Read-only.
            ## @param value Value to set for the object_type property.
            ## @return a void
            ## 
            def object_type=(value)
                @object_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_guid_value("externalPartnerTenantId", @external_partner_tenant_id)
                writer.write_string_value("objectType", @object_type)
            end
        end
    end
end
