require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ExtensionProperty < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the application object on which this extension property is defined. Read-only.
            @app_display_name
            ## 
            # Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. Binary - 256 bytes maximumBooleanDateTime - Must be specified in ISO 8601 format. Will be stored in UTC.Integer - 32-bit value.LargeInteger - 64-bit value.String - 256 characters maximum
            @data_type
            ## 
            # Indicates if this extension property was synced from on-premises active directory using Azure AD Connect. Read-only.
            @is_synced_from_on_premises
            ## 
            # Name of the extension property. Not nullable. Supports $filter (eq).
            @name
            ## 
            # Following values are supported. Not nullable. UserGroupAdministrativeUnitApplicationDeviceOrganization
            @target_objects
            ## 
            ## Gets the appDisplayName property value. Display name of the application object on which this extension property is defined. Read-only.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. Display name of the application object on which this extension property is defined. Read-only.
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Instantiates a new extensionProperty and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.extensionProperty"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a extension_property
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExtensionProperty.new
            end
            ## 
            ## Gets the dataType property value. Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. Binary - 256 bytes maximumBooleanDateTime - Must be specified in ISO 8601 format. Will be stored in UTC.Integer - 32-bit value.LargeInteger - 64-bit value.String - 256 characters maximum
            ## @return a string
            ## 
            def data_type
                return @data_type
            end
            ## 
            ## Sets the dataType property value. Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. Binary - 256 bytes maximumBooleanDateTime - Must be specified in ISO 8601 format. Will be stored in UTC.Integer - 32-bit value.LargeInteger - 64-bit value.String - 256 characters maximum
            ## @param value Value to set for the data_type property.
            ## @return a void
            ## 
            def data_type=(value)
                @data_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "dataType" => lambda {|n| @data_type = n.get_string_value() },
                    "isSyncedFromOnPremises" => lambda {|n| @is_synced_from_on_premises = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "targetObjects" => lambda {|n| @target_objects = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the isSyncedFromOnPremises property value. Indicates if this extension property was synced from on-premises active directory using Azure AD Connect. Read-only.
            ## @return a boolean
            ## 
            def is_synced_from_on_premises
                return @is_synced_from_on_premises
            end
            ## 
            ## Sets the isSyncedFromOnPremises property value. Indicates if this extension property was synced from on-premises active directory using Azure AD Connect. Read-only.
            ## @param value Value to set for the is_synced_from_on_premises property.
            ## @return a void
            ## 
            def is_synced_from_on_premises=(value)
                @is_synced_from_on_premises = value
            end
            ## 
            ## Gets the name property value. Name of the extension property. Not nullable. Supports $filter (eq).
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the extension property. Not nullable. Supports $filter (eq).
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("dataType", @data_type)
                writer.write_boolean_value("isSyncedFromOnPremises", @is_synced_from_on_premises)
                writer.write_string_value("name", @name)
                writer.write_collection_of_primitive_values("targetObjects", @target_objects)
            end
            ## 
            ## Gets the targetObjects property value. Following values are supported. Not nullable. UserGroupAdministrativeUnitApplicationDeviceOrganization
            ## @return a string
            ## 
            def target_objects
                return @target_objects
            end
            ## 
            ## Sets the targetObjects property value. Following values are supported. Not nullable. UserGroupAdministrativeUnitApplicationDeviceOrganization
            ## @param value Value to set for the target_objects property.
            ## @return a void
            ## 
            def target_objects=(value)
                @target_objects = value
            end
        end
    end
end
