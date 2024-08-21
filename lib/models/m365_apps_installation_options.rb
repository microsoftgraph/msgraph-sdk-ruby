require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class M365AppsInstallationOptions < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appsForMac property
            @apps_for_mac
            ## 
            # The appsForWindows property
            @apps_for_windows
            ## 
            # The updateChannel property
            @update_channel
            ## 
            ## Gets the appsForMac property value. The appsForMac property
            ## @return a apps_installation_options_for_mac
            ## 
            def apps_for_mac
                return @apps_for_mac
            end
            ## 
            ## Sets the appsForMac property value. The appsForMac property
            ## @param value Value to set for the appsForMac property.
            ## @return a void
            ## 
            def apps_for_mac=(value)
                @apps_for_mac = value
            end
            ## 
            ## Gets the appsForWindows property value. The appsForWindows property
            ## @return a apps_installation_options_for_windows
            ## 
            def apps_for_windows
                return @apps_for_windows
            end
            ## 
            ## Sets the appsForWindows property value. The appsForWindows property
            ## @param value Value to set for the appsForWindows property.
            ## @return a void
            ## 
            def apps_for_windows=(value)
                @apps_for_windows = value
            end
            ## 
            ## Instantiates a new M365AppsInstallationOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a m365_apps_installation_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return M365AppsInstallationOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appsForMac" => lambda {|n| @apps_for_mac = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppsInstallationOptionsForMac.create_from_discriminator_value(pn) }) },
                    "appsForWindows" => lambda {|n| @apps_for_windows = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AppsInstallationOptionsForWindows.create_from_discriminator_value(pn) }) },
                    "updateChannel" => lambda {|n| @update_channel = n.get_enum_value(MicrosoftGraph::Models::AppsUpdateChannelType) },
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
                writer.write_object_value("appsForMac", @apps_for_mac)
                writer.write_object_value("appsForWindows", @apps_for_windows)
                writer.write_enum_value("updateChannel", @update_channel)
            end
            ## 
            ## Gets the updateChannel property value. The updateChannel property
            ## @return a apps_update_channel_type
            ## 
            def update_channel
                return @update_channel
            end
            ## 
            ## Sets the updateChannel property value. The updateChannel property
            ## @param value Value to set for the updateChannel property.
            ## @return a void
            ## 
            def update_channel=(value)
                @update_channel = value
            end
        end
    end
end
