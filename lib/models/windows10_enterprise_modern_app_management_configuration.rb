require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Windows10EnterpriseModernAppManagementConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to uninstall a fixed list of built-in Windows apps.
            @uninstall_built_in_apps
            ## 
            ## Instantiates a new Windows10EnterpriseModernAppManagementConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_enterprise_modern_app_management_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10EnterpriseModernAppManagementConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "uninstallBuiltInApps" => lambda {|n| @uninstall_built_in_apps = n.get_boolean_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("uninstallBuiltInApps", @uninstall_built_in_apps)
            end
            ## 
            ## Gets the uninstallBuiltInApps property value. Indicates whether or not to uninstall a fixed list of built-in Windows apps.
            ## @return a boolean
            ## 
            def uninstall_built_in_apps
                return @uninstall_built_in_apps
            end
            ## 
            ## Sets the uninstallBuiltInApps property value. Indicates whether or not to uninstall a fixed list of built-in Windows apps.
            ## @param value Value to set for the uninstall_built_in_apps property.
            ## @return a void
            ## 
            def uninstall_built_in_apps=(value)
                @uninstall_built_in_apps = value
            end
        end
    end
end
