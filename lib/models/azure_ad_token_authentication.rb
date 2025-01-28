require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AzureAdTokenAuthentication < MicrosoftGraph::Models::CustomExtensionAuthenticationConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appID of the Microsoft Entra application to use to authenticate an app with a custom extension.
            @resource_id
            ## 
            ## Instantiates a new AzureAdTokenAuthentication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureAdTokenAuthentication"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_ad_token_authentication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureAdTokenAuthentication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the resourceId property value. The appID of the Microsoft Entra application to use to authenticate an app with a custom extension.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The appID of the Microsoft Entra application to use to authenticate an app with a custom extension.
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
                super
                writer.write_string_value("resourceId", @resource_id)
            end
        end
    end
end
