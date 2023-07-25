require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TenantInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The defaultDomainName property
            @default_domain_name
            ## 
            # The displayName property
            @display_name
            ## 
            # The federationBrandName property
            @federation_brand_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tenantId property
            @tenant_id
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new tenantInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a tenant_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TenantInformation.new
            end
            ## 
            ## Gets the defaultDomainName property value. The defaultDomainName property
            ## @return a string
            ## 
            def default_domain_name
                return @default_domain_name
            end
            ## 
            ## Sets the defaultDomainName property value. The defaultDomainName property
            ## @param value Value to set for the defaultDomainName property.
            ## @return a void
            ## 
            def default_domain_name=(value)
                @default_domain_name = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the federationBrandName property value. The federationBrandName property
            ## @return a string
            ## 
            def federation_brand_name
                return @federation_brand_name
            end
            ## 
            ## Sets the federationBrandName property value. The federationBrandName property
            ## @param value Value to set for the federationBrandName property.
            ## @return a void
            ## 
            def federation_brand_name=(value)
                @federation_brand_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultDomainName" => lambda {|n| @default_domain_name = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "federationBrandName" => lambda {|n| @federation_brand_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("defaultDomainName", @default_domain_name)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("federationBrandName", @federation_brand_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
