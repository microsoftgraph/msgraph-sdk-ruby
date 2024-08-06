require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AdminMicrosoft365Apps < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A container for tenant-level settings for Microsoft 365 applications.
            @installation_options
            ## 
            ## Instantiates a new AdminMicrosoft365Apps and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a admin_microsoft365_apps
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AdminMicrosoft365Apps.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "installationOptions" => lambda {|n| @installation_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::M365AppsInstallationOptions.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the installationOptions property value. A container for tenant-level settings for Microsoft 365 applications.
            ## @return a m365_apps_installation_options
            ## 
            def installation_options
                return @installation_options
            end
            ## 
            ## Sets the installationOptions property value. A container for tenant-level settings for Microsoft 365 applications.
            ## @param value Value to set for the installationOptions property.
            ## @return a void
            ## 
            def installation_options=(value)
                @installation_options = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("installationOptions", @installation_options)
            end
        end
    end
end
