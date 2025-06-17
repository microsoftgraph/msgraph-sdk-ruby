require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../solutions'
require_relative '../backup_restore'
require_relative './enable'

module MicrosoftGraph
    module Solutions
        module BackupRestore
            module Enable
                class EnablePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The appOwnerTenantId property
                    @app_owner_tenant_id
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
                    ## Gets the appOwnerTenantId property value. The appOwnerTenantId property
                    ## @return a string
                    ## 
                    def app_owner_tenant_id
                        return @app_owner_tenant_id
                    end
                    ## 
                    ## Sets the appOwnerTenantId property value. The appOwnerTenantId property
                    ## @param value Value to set for the appOwnerTenantId property.
                    ## @return a void
                    ## 
                    def app_owner_tenant_id=(value)
                        @app_owner_tenant_id = value
                    end
                    ## 
                    ## Instantiates a new EnablePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a enable_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return EnablePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "appOwnerTenantId" => lambda {|n| @app_owner_tenant_id = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("appOwnerTenantId", @app_owner_tenant_id)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
