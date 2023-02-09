require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppIdentity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Refers to the Unique GUID representing Application Id in the Azure Active Directory.
            @app_id
            ## 
            # Refers to the Application Name displayed in the Azure Portal.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Refers to the Unique GUID indicating Service Principal Id in Azure Active Directory for the corresponding App.
            @service_principal_id
            ## 
            # Refers to the Service Principal Name is the Application name in the tenant.
            @service_principal_name
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
            ## Gets the appId property value. Refers to the Unique GUID representing Application Id in the Azure Active Directory.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. Refers to the Unique GUID representing Application Id in the Azure Active Directory.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new appIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a app_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppIdentity.new
            end
            ## 
            ## Gets the displayName property value. Refers to the Application Name displayed in the Azure Portal.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Refers to the Application Name displayed in the Azure Portal.
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
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "servicePrincipalId" => lambda {|n| @service_principal_id = n.get_string_value() },
                    "servicePrincipalName" => lambda {|n| @service_principal_name = n.get_string_value() },
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
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("servicePrincipalId", @service_principal_id)
                writer.write_string_value("servicePrincipalName", @service_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePrincipalId property value. Refers to the Unique GUID indicating Service Principal Id in Azure Active Directory for the corresponding App.
            ## @return a string
            ## 
            def service_principal_id
                return @service_principal_id
            end
            ## 
            ## Sets the servicePrincipalId property value. Refers to the Unique GUID indicating Service Principal Id in Azure Active Directory for the corresponding App.
            ## @param value Value to set for the service_principal_id property.
            ## @return a void
            ## 
            def service_principal_id=(value)
                @service_principal_id = value
            end
            ## 
            ## Gets the servicePrincipalName property value. Refers to the Service Principal Name is the Application name in the tenant.
            ## @return a string
            ## 
            def service_principal_name
                return @service_principal_name
            end
            ## 
            ## Sets the servicePrincipalName property value. Refers to the Service Principal Name is the Application name in the tenant.
            ## @param value Value to set for the service_principal_name property.
            ## @return a void
            ## 
            def service_principal_name=(value)
                @service_principal_name = value
            end
        end
    end
end
