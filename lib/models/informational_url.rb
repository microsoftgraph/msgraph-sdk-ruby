require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InformationalUrl
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # CDN URL to the application's logo, Read-only.
            @logo_url
            ## 
            # Link to the application's marketing page. For example, https://www.contoso.com/app/marketing
            @marketing_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Link to the application's privacy statement. For example, https://www.contoso.com/app/privacy
            @privacy_statement_url
            ## 
            # Link to the application's support page. For example, https://www.contoso.com/app/support
            @support_url
            ## 
            # Link to the application's terms of service statement. For example, https://www.contoso.com/app/termsofservice
            @terms_of_service_url
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
            ## Instantiates a new informationalUrl and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a informational_url
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InformationalUrl.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "logoUrl" => lambda {|n| @logo_url = n.get_string_value() },
                    "marketingUrl" => lambda {|n| @marketing_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "privacyStatementUrl" => lambda {|n| @privacy_statement_url = n.get_string_value() },
                    "supportUrl" => lambda {|n| @support_url = n.get_string_value() },
                    "termsOfServiceUrl" => lambda {|n| @terms_of_service_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the logoUrl property value. CDN URL to the application's logo, Read-only.
            ## @return a string
            ## 
            def logo_url
                return @logo_url
            end
            ## 
            ## Sets the logoUrl property value. CDN URL to the application's logo, Read-only.
            ## @param value Value to set for the logo_url property.
            ## @return a void
            ## 
            def logo_url=(value)
                @logo_url = value
            end
            ## 
            ## Gets the marketingUrl property value. Link to the application's marketing page. For example, https://www.contoso.com/app/marketing
            ## @return a string
            ## 
            def marketing_url
                return @marketing_url
            end
            ## 
            ## Sets the marketingUrl property value. Link to the application's marketing page. For example, https://www.contoso.com/app/marketing
            ## @param value Value to set for the marketing_url property.
            ## @return a void
            ## 
            def marketing_url=(value)
                @marketing_url = value
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
            ## Gets the privacyStatementUrl property value. Link to the application's privacy statement. For example, https://www.contoso.com/app/privacy
            ## @return a string
            ## 
            def privacy_statement_url
                return @privacy_statement_url
            end
            ## 
            ## Sets the privacyStatementUrl property value. Link to the application's privacy statement. For example, https://www.contoso.com/app/privacy
            ## @param value Value to set for the privacy_statement_url property.
            ## @return a void
            ## 
            def privacy_statement_url=(value)
                @privacy_statement_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("logoUrl", @logo_url)
                writer.write_string_value("marketingUrl", @marketing_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("privacyStatementUrl", @privacy_statement_url)
                writer.write_string_value("supportUrl", @support_url)
                writer.write_string_value("termsOfServiceUrl", @terms_of_service_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportUrl property value. Link to the application's support page. For example, https://www.contoso.com/app/support
            ## @return a string
            ## 
            def support_url
                return @support_url
            end
            ## 
            ## Sets the supportUrl property value. Link to the application's support page. For example, https://www.contoso.com/app/support
            ## @param value Value to set for the support_url property.
            ## @return a void
            ## 
            def support_url=(value)
                @support_url = value
            end
            ## 
            ## Gets the termsOfServiceUrl property value. Link to the application's terms of service statement. For example, https://www.contoso.com/app/termsofservice
            ## @return a string
            ## 
            def terms_of_service_url
                return @terms_of_service_url
            end
            ## 
            ## Sets the termsOfServiceUrl property value. Link to the application's terms of service statement. For example, https://www.contoso.com/app/termsofservice
            ## @param value Value to set for the terms_of_service_url property.
            ## @return a void
            ## 
            def terms_of_service_url=(value)
                @terms_of_service_url = value
            end
        end
    end
end
