require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppleDeviceFeaturesConfigurationBase < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new AppleDeviceFeaturesConfigurationBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appleDeviceFeaturesConfigurationBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a apple_device_features_configuration_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.iosDeviceFeaturesConfiguration"
                            return IosDeviceFeaturesConfiguration.new
                        when "#microsoft.graph.macOSDeviceFeaturesConfiguration"
                            return MacOSDeviceFeaturesConfiguration.new
                    end
                end
                return AppleDeviceFeaturesConfigurationBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
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
            end
        end
    end
end
