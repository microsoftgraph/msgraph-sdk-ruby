require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsAppAuthorization
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The registration ID of the Microsoft Entra app ID associated with the teamsApp.
            @client_app_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Set of permissions required by the teamsApp.
            @required_permission_set
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
            ## Gets the clientAppId property value. The registration ID of the Microsoft Entra app ID associated with the teamsApp.
            ## @return a string
            ## 
            def client_app_id
                return @client_app_id
            end
            ## 
            ## Sets the clientAppId property value. The registration ID of the Microsoft Entra app ID associated with the teamsApp.
            ## @param value Value to set for the clientAppId property.
            ## @return a void
            ## 
            def client_app_id=(value)
                @client_app_id = value
            end
            ## 
            ## Instantiates a new TeamsAppAuthorization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_authorization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppAuthorization.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "clientAppId" => lambda {|n| @client_app_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requiredPermissionSet" => lambda {|n| @required_permission_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsAppPermissionSet.create_from_discriminator_value(pn) }) },
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
            ## Gets the requiredPermissionSet property value. Set of permissions required by the teamsApp.
            ## @return a teams_app_permission_set
            ## 
            def required_permission_set
                return @required_permission_set
            end
            ## 
            ## Sets the requiredPermissionSet property value. Set of permissions required by the teamsApp.
            ## @param value Value to set for the requiredPermissionSet property.
            ## @return a void
            ## 
            def required_permission_set=(value)
                @required_permission_set = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("clientAppId", @client_app_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("requiredPermissionSet", @required_permission_set)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
