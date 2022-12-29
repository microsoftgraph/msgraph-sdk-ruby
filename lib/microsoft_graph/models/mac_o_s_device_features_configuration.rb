require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class MacOSDeviceFeaturesConfiguration < MicrosoftGraph::Models::AppleDeviceFeaturesConfigurationBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        ## Instantiates a new MacOSDeviceFeaturesConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.macOSDeviceFeaturesConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_device_features_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSDeviceFeaturesConfiguration.new
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
