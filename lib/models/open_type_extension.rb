require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OpenTypeExtension < MicrosoftGraph::Models::Extension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A unique text identifier for an open type data extension. Optional.
            @extension_name
            ## 
            ## Instantiates a new OpenTypeExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.openTypeExtension"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a open_type_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenTypeExtension.new
            end
            ## 
            ## Gets the extensionName property value. A unique text identifier for an open type data extension. Optional.
            ## @return a string
            ## 
            def extension_name
                return @extension_name
            end
            ## 
            ## Sets the extensionName property value. A unique text identifier for an open type data extension. Optional.
            ## @param value Value to set for the extension_name property.
            ## @return a void
            ## 
            def extension_name=(value)
                @extension_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "extensionName" => lambda {|n| @extension_name = n.get_string_value() },
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
                writer.write_string_value("extensionName", @extension_name)
            end
        end
    end
end
