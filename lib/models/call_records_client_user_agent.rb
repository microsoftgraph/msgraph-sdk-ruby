require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRecordsClientUserAgent < MicrosoftGraph::Models::CallRecordsUserAgent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier of the Azure AD application used by this endpoint.
            @azure_a_d_app_id
            ## 
            # Immutable resource identifier of the Azure Communication Service associated with this endpoint based on Communication Services APIs.
            @communication_service_id
            ## 
            # The platform property
            @platform
            ## 
            # The productFamily property
            @product_family
            ## 
            ## Gets the azureADAppId property value. The unique identifier of the Azure AD application used by this endpoint.
            ## @return a string
            ## 
            def azure_a_d_app_id
                return @azure_a_d_app_id
            end
            ## 
            ## Sets the azureADAppId property value. The unique identifier of the Azure AD application used by this endpoint.
            ## @param value Value to set for the azureADAppId property.
            ## @return a void
            ## 
            def azure_a_d_app_id=(value)
                @azure_a_d_app_id = value
            end
            ## 
            ## Gets the communicationServiceId property value. Immutable resource identifier of the Azure Communication Service associated with this endpoint based on Communication Services APIs.
            ## @return a string
            ## 
            def communication_service_id
                return @communication_service_id
            end
            ## 
            ## Sets the communicationServiceId property value. Immutable resource identifier of the Azure Communication Service associated with this endpoint based on Communication Services APIs.
            ## @param value Value to set for the communicationServiceId property.
            ## @return a void
            ## 
            def communication_service_id=(value)
                @communication_service_id = value
            end
            ## 
            ## Instantiates a new callRecordsClientUserAgent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.callRecords.clientUserAgent"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_records_client_user_agent
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordsClientUserAgent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureADAppId" => lambda {|n| @azure_a_d_app_id = n.get_string_value() },
                    "communicationServiceId" => lambda {|n| @communication_service_id = n.get_string_value() },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::CallRecordsClientPlatform) },
                    "productFamily" => lambda {|n| @product_family = n.get_enum_value(MicrosoftGraph::Models::CallRecordsProductFamily) },
                })
            end
            ## 
            ## Gets the platform property value. The platform property
            ## @return a call_records_client_platform
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. The platform property
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the productFamily property value. The productFamily property
            ## @return a call_records_product_family
            ## 
            def product_family
                return @product_family
            end
            ## 
            ## Sets the productFamily property value. The productFamily property
            ## @param value Value to set for the productFamily property.
            ## @return a void
            ## 
            def product_family=(value)
                @product_family = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("azureADAppId", @azure_a_d_app_id) unless @azure_a_d_app_id.nil?
                writer.write_string_value("communicationServiceId", @communication_service_id) unless @communication_service_id.nil?
                writer.write_enum_value("platform", @platform) unless @platform.nil?
                writer.write_enum_value("productFamily", @product_family) unless @product_family.nil?
            end
        end
    end
end
