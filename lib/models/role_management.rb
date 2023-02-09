require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RoleManagement
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The directory property
            @directory
            ## 
            # Container for roles and assignments for entitlement management resources.
            @entitlement_management
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
            ## Instantiates a new RoleManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a role_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RoleManagement.new
            end
            ## 
            ## Gets the directory property value. The directory property
            ## @return a rbac_application
            ## 
            def directory
                return @directory
            end
            ## 
            ## Sets the directory property value. The directory property
            ## @param value Value to set for the directory property.
            ## @return a void
            ## 
            def directory=(value)
                @directory = value
            end
            ## 
            ## Gets the entitlementManagement property value. Container for roles and assignments for entitlement management resources.
            ## @return a rbac_application
            ## 
            def entitlement_management
                return @entitlement_management
            end
            ## 
            ## Sets the entitlementManagement property value. Container for roles and assignments for entitlement management resources.
            ## @param value Value to set for the entitlement_management property.
            ## @return a void
            ## 
            def entitlement_management=(value)
                @entitlement_management = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "directory" => lambda {|n| @directory = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RbacApplication.create_from_discriminator_value(pn) }) },
                    "entitlementManagement" => lambda {|n| @entitlement_management = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RbacApplication.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("directory", @directory)
                writer.write_object_value("entitlementManagement", @entitlement_management)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
