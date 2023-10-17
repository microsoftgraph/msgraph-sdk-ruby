require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationJobSubject
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Principals that you would like to provision.
            @links
            ## 
            # The identifier of an object to which a synchronizationJob is to be applied. Can be one of the following: An onPremisesDistinguishedName for synchronization from Active Directory to Azure AD.The user ID for synchronization from Azure AD to a third-party.The Worker ID of the Workday worker for synchronization from Workday to either Active Directory or Azure AD.
            @object_id_escaped
            ## 
            # The type of the object to which a synchronizationJob is to be applied. Can be one of the following: user for synchronizing between Active Directory and Azure AD.User for synchronizing a user between Azure AD and a third-party application. Worker for synchronization a user between Workday and either Active Directory or Azure AD.Group for synchronizing a group between Azure AD and a third-party application.
            @object_type_name
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new synchronizationJobSubject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_job_subject
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationJobSubject.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "links" => lambda {|n| @links = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationLinkedObjects.create_from_discriminator_value(pn) }) },
                    "objectId" => lambda {|n| @object_id_escaped = n.get_string_value() },
                    "objectTypeName" => lambda {|n| @object_type_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the links property value. Principals that you would like to provision.
            ## @return a synchronization_linked_objects
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. Principals that you would like to provision.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
            end
            ## 
            ## Gets the objectId property value. The identifier of an object to which a synchronizationJob is to be applied. Can be one of the following: An onPremisesDistinguishedName for synchronization from Active Directory to Azure AD.The user ID for synchronization from Azure AD to a third-party.The Worker ID of the Workday worker for synchronization from Workday to either Active Directory or Azure AD.
            ## @return a string
            ## 
            def object_id_escaped
                return @object_id_escaped
            end
            ## 
            ## Sets the objectId property value. The identifier of an object to which a synchronizationJob is to be applied. Can be one of the following: An onPremisesDistinguishedName for synchronization from Active Directory to Azure AD.The user ID for synchronization from Azure AD to a third-party.The Worker ID of the Workday worker for synchronization from Workday to either Active Directory or Azure AD.
            ## @param value Value to set for the objectId property.
            ## @return a void
            ## 
            def object_id_escaped=(value)
                @object_id_escaped = value
            end
            ## 
            ## Gets the objectTypeName property value. The type of the object to which a synchronizationJob is to be applied. Can be one of the following: user for synchronizing between Active Directory and Azure AD.User for synchronizing a user between Azure AD and a third-party application. Worker for synchronization a user between Workday and either Active Directory or Azure AD.Group for synchronizing a group between Azure AD and a third-party application.
            ## @return a string
            ## 
            def object_type_name
                return @object_type_name
            end
            ## 
            ## Sets the objectTypeName property value. The type of the object to which a synchronizationJob is to be applied. Can be one of the following: user for synchronizing between Active Directory and Azure AD.User for synchronizing a user between Azure AD and a third-party application. Worker for synchronization a user between Workday and either Active Directory or Azure AD.Group for synchronizing a group between Azure AD and a third-party application.
            ## @param value Value to set for the objectTypeName property.
            ## @return a void
            ## 
            def object_type_name=(value)
                @object_type_name = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("links", @links)
                writer.write_string_value("objectId", @object_id_escaped)
                writer.write_string_value("objectTypeName", @object_type_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
