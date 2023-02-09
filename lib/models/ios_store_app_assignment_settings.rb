require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosStoreAppAssignmentSettings < MicrosoftGraph::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The VPN Configuration Id to apply for this app.
            @vpn_configuration_id
            ## 
            ## Instantiates a new IosStoreAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosStoreAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_store_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosStoreAppAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "vpnConfigurationId" => lambda {|n| @vpn_configuration_id = n.get_string_value() },
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
                writer.write_string_value("vpnConfigurationId", @vpn_configuration_id)
            end
            ## 
            ## Gets the vpnConfigurationId property value. The VPN Configuration Id to apply for this app.
            ## @return a string
            ## 
            def vpn_configuration_id
                return @vpn_configuration_id
            end
            ## 
            ## Sets the vpnConfigurationId property value. The VPN Configuration Id to apply for this app.
            ## @param value Value to set for the vpn_configuration_id property.
            ## @return a void
            ## 
            def vpn_configuration_id=(value)
                @vpn_configuration_id = value
            end
        end
    end
end
