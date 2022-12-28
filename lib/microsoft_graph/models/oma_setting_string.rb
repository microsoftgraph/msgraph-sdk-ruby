require 'microsoft_kiota_abstractions'
require_relative './models'
require_relative './oma_setting'

module MicrosoftGraph::Models
    class OmaSettingString < MicrosoftGraph::Models::OmaSetting
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Value.
        @value
        ## 
        ## Instantiates a new OmaSettingString and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.omaSettingString"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a oma_setting_string
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OmaSettingString.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "value" => lambda {|n| @value = n.get_string_value() },
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
            writer.write_string_value("value", @value)
        end
        ## 
        ## Gets the value property value. Value.
        ## @return a string
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. Value.
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end