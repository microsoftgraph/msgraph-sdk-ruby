require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ApplicationTemplate < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of categories for the application. Supported values can be: Collaboration, Business Management, Consumer, Content management, CRM, Data services, Developer services, E-commerce, Education, ERP, Finance, Health, Human resources, IT infrastructure, Mail, Management, Marketing, Media, Productivity, Project management, Telecommunications, Tools, Travel, and Web design & hosting.
            @categories
            ## 
            # A description of the application.
            @description
            ## 
            # The name of the application.
            @display_name
            ## 
            # The home page URL of the application.
            @home_page_url
            ## 
            # The URL to get the logo for this application.
            @logo_url
            ## 
            # The name of the publisher for this application.
            @publisher
            ## 
            # The list of provisioning modes supported by this application. The only valid value is sync.
            @supported_provisioning_types
            ## 
            # The list of single sign-on modes supported by this application. The supported values are oidc, password, saml, and notSupported.
            @supported_single_sign_on_modes
            ## 
            ## Gets the categories property value. The list of categories for the application. Supported values can be: Collaboration, Business Management, Consumer, Content management, CRM, Data services, Developer services, E-commerce, Education, ERP, Finance, Health, Human resources, IT infrastructure, Mail, Management, Marketing, Media, Productivity, Project management, Telecommunications, Tools, Travel, and Web design & hosting.
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. The list of categories for the application. Supported values can be: Collaboration, Business Management, Consumer, Content management, CRM, Data services, Developer services, E-commerce, Education, ERP, Finance, Health, Human resources, IT infrastructure, Mail, Management, Marketing, Media, Productivity, Project management, Telecommunications, Tools, Travel, and Web design & hosting.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Instantiates a new applicationTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a application_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApplicationTemplate.new
            end
            ## 
            ## Gets the description property value. A description of the application.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A description of the application.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the application.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the application.
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
                return super.merge({
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "homePageUrl" => lambda {|n| @home_page_url = n.get_string_value() },
                    "logoUrl" => lambda {|n| @logo_url = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "supportedProvisioningTypes" => lambda {|n| @supported_provisioning_types = n.get_collection_of_primitive_values(String) },
                    "supportedSingleSignOnModes" => lambda {|n| @supported_single_sign_on_modes = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the homePageUrl property value. The home page URL of the application.
            ## @return a string
            ## 
            def home_page_url
                return @home_page_url
            end
            ## 
            ## Sets the homePageUrl property value. The home page URL of the application.
            ## @param value Value to set for the home_page_url property.
            ## @return a void
            ## 
            def home_page_url=(value)
                @home_page_url = value
            end
            ## 
            ## Gets the logoUrl property value. The URL to get the logo for this application.
            ## @return a string
            ## 
            def logo_url
                return @logo_url
            end
            ## 
            ## Sets the logoUrl property value. The URL to get the logo for this application.
            ## @param value Value to set for the logo_url property.
            ## @return a void
            ## 
            def logo_url=(value)
                @logo_url = value
            end
            ## 
            ## Gets the publisher property value. The name of the publisher for this application.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The name of the publisher for this application.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("homePageUrl", @home_page_url)
                writer.write_string_value("logoUrl", @logo_url)
                writer.write_string_value("publisher", @publisher)
                writer.write_collection_of_primitive_values("supportedProvisioningTypes", @supported_provisioning_types)
                writer.write_collection_of_primitive_values("supportedSingleSignOnModes", @supported_single_sign_on_modes)
            end
            ## 
            ## Gets the supportedProvisioningTypes property value. The list of provisioning modes supported by this application. The only valid value is sync.
            ## @return a string
            ## 
            def supported_provisioning_types
                return @supported_provisioning_types
            end
            ## 
            ## Sets the supportedProvisioningTypes property value. The list of provisioning modes supported by this application. The only valid value is sync.
            ## @param value Value to set for the supported_provisioning_types property.
            ## @return a void
            ## 
            def supported_provisioning_types=(value)
                @supported_provisioning_types = value
            end
            ## 
            ## Gets the supportedSingleSignOnModes property value. The list of single sign-on modes supported by this application. The supported values are oidc, password, saml, and notSupported.
            ## @return a string
            ## 
            def supported_single_sign_on_modes
                return @supported_single_sign_on_modes
            end
            ## 
            ## Sets the supportedSingleSignOnModes property value. The list of single sign-on modes supported by this application. The supported values are oidc, password, saml, and notSupported.
            ## @param value Value to set for the supported_single_sign_on_modes property.
            ## @return a void
            ## 
            def supported_single_sign_on_modes=(value)
                @supported_single_sign_on_modes = value
            end
        end
    end
end
