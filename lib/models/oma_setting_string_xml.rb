require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OmaSettingStringXml < MicrosoftGraph::Models::OmaSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # File name associated with the Value property (.xml).
            @file_name
            ## 
            # Value. (UTF8 encoded byte array)
            @value
            ## 
            ## Instantiates a new OmaSettingStringXml and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.omaSettingStringXml"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a oma_setting_string_xml
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OmaSettingStringXml.new
            end
            ## 
            ## Gets the fileName property value. File name associated with the Value property (.xml).
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. File name associated with the Value property (.xml).
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
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("value", @value)
            end
            ## 
            ## Gets the value property value. Value. (UTF8 encoded byte array)
            ## @return a base64url
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Value. (UTF8 encoded byte array)
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
