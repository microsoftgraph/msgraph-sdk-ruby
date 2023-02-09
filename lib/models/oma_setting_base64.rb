require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OmaSettingBase64 < MicrosoftGraph::Models::OmaSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # File name associated with the Value property (.cer
            @file_name
            ## 
            # Value. (Base64 encoded string)
            @value
            ## 
            ## Instantiates a new OmaSettingBase64 and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.omaSettingBase64"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a oma_setting_base64
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OmaSettingBase64.new
            end
            ## 
            ## Gets the fileName property value. File name associated with the Value property (.cer
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. File name associated with the Value property (.cer
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
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
                writer.write_string_value("fileName", @file_name)
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the value property value. Value. (Base64 encoded string)
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Value. (Base64 encoded string)
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
