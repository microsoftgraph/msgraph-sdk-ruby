require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnAttributeCollectionStartCustomExtensionHandler < MicrosoftGraph::Models::OnAttributeCollectionStartHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Configuration regarding properties of the custom extension that are can be overwritten per event listener.
            @configuration
            ## 
            # The customExtension property
            @custom_extension
            ## 
            ## Gets the configuration property value. Configuration regarding properties of the custom extension that are can be overwritten per event listener.
            ## @return a custom_extension_overwrite_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. Configuration regarding properties of the custom extension that are can be overwritten per event listener.
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new OnAttributeCollectionStartCustomExtensionHandler and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_attribute_collection_start_custom_extension_handler
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnAttributeCollectionStartCustomExtensionHandler.new
            end
            ## 
            ## Gets the customExtension property value. The customExtension property
            ## @return a on_attribute_collection_start_custom_extension
            ## 
            def custom_extension
                return @custom_extension
            end
            ## 
            ## Sets the customExtension property value. The customExtension property
            ## @param value Value to set for the customExtension property.
            ## @return a void
            ## 
            def custom_extension=(value)
                @custom_extension = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionOverwriteConfiguration.create_from_discriminator_value(pn) }) },
                    "customExtension" => lambda {|n| @custom_extension = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnAttributeCollectionStartCustomExtension.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("configuration", @configuration)
                writer.write_object_value("customExtension", @custom_extension)
            end
        end
    end
end
