require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CustomExtensionStageSetting < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The customExtension property
            @custom_extension
            ## 
            # The stage property
            @stage
            ## 
            ## Instantiates a new customExtensionStageSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_extension_stage_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomExtensionStageSetting.new
            end
            ## 
            ## Gets the customExtension property value. The customExtension property
            ## @return a custom_callout_extension
            ## 
            def custom_extension
                return @custom_extension
            end
            ## 
            ## Sets the customExtension property value. The customExtension property
            ## @param value Value to set for the custom_extension property.
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
                    "customExtension" => lambda {|n| @custom_extension = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomCalloutExtension.create_from_discriminator_value(pn) }) },
                    "stage" => lambda {|n| @stage = n.get_enum_value(MicrosoftGraph::Models::AccessPackageCustomExtensionStage) },
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
                writer.write_object_value("customExtension", @custom_extension)
                writer.write_enum_value("stage", @stage)
            end
            ## 
            ## Gets the stage property value. The stage property
            ## @return a access_package_custom_extension_stage
            ## 
            def stage
                return @stage
            end
            ## 
            ## Sets the stage property value. The stage property
            ## @param value Value to set for the stage property.
            ## @return a void
            ## 
            def stage=(value)
                @stage = value
            end
        end
    end
end
