require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CopilotAdminSetting < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The limitedMode property
            @limited_mode
            ## 
            ## Instantiates a new CopilotAdminSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a copilot_admin_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CopilotAdminSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "limitedMode" => lambda {|n| @limited_mode = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CopilotAdminLimitedMode.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the limitedMode property value. The limitedMode property
            ## @return a copilot_admin_limited_mode
            ## 
            def limited_mode
                return @limited_mode
            end
            ## 
            ## Sets the limitedMode property value. The limitedMode property
            ## @param value Value to set for the limitedMode property.
            ## @return a void
            ## 
            def limited_mode=(value)
                @limited_mode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("limitedMode", @limited_mode)
            end
        end
    end
end
