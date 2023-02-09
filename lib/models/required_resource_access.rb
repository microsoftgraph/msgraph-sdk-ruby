require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RequiredResourceAccess
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The list of OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
            @resource_access
            ## 
            # The unique identifier for the resource that the application requires access to. This should be equal to the appId declared on the target resource application.
            @resource_app_id
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
            ## Instantiates a new requiredResourceAccess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a required_resource_access
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RequiredResourceAccess.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resourceAccess" => lambda {|n| @resource_access = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ResourceAccess.create_from_discriminator_value(pn) }) },
                    "resourceAppId" => lambda {|n| @resource_app_id = n.get_string_value() },
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
            ## Gets the resourceAccess property value. The list of OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
            ## @return a resource_access
            ## 
            def resource_access
                return @resource_access
            end
            ## 
            ## Sets the resourceAccess property value. The list of OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
            ## @param value Value to set for the resource_access property.
            ## @return a void
            ## 
            def resource_access=(value)
                @resource_access = value
            end
            ## 
            ## Gets the resourceAppId property value. The unique identifier for the resource that the application requires access to. This should be equal to the appId declared on the target resource application.
            ## @return a string
            ## 
            def resource_app_id
                return @resource_app_id
            end
            ## 
            ## Sets the resourceAppId property value. The unique identifier for the resource that the application requires access to. This should be equal to the appId declared on the target resource application.
            ## @param value Value to set for the resource_app_id property.
            ## @return a void
            ## 
            def resource_app_id=(value)
                @resource_app_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("resourceAccess", @resource_access)
                writer.write_string_value("resourceAppId", @resource_app_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
