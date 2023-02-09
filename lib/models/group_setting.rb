require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class GroupSetting < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of this group of settings, which comes from the associated template.
            @display_name
            ## 
            # Unique identifier for the tenant-level groupSettingTemplates object that's been customized for this group-level settings object. Read-only.
            @template_id
            ## 
            # Collection of name-value pairs corresponding to the name and defaultValue properties in the referenced groupSettingTemplates object.
            @values
            ## 
            ## Instantiates a new groupSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupSetting.new
            end
            ## 
            ## Gets the displayName property value. Display name of this group of settings, which comes from the associated template.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of this group of settings, which comes from the associated template.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
                    "values" => lambda {|n| @values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SettingValue.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("templateId", @template_id)
                writer.write_collection_of_object_values("values", @values)
            end
            ## 
            ## Gets the templateId property value. Unique identifier for the tenant-level groupSettingTemplates object that's been customized for this group-level settings object. Read-only.
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. Unique identifier for the tenant-level groupSettingTemplates object that's been customized for this group-level settings object. Read-only.
            ## @param value Value to set for the template_id property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
            ## 
            ## Gets the values property value. Collection of name-value pairs corresponding to the name and defaultValue properties in the referenced groupSettingTemplates object.
            ## @return a setting_value
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. Collection of name-value pairs corresponding to the name and defaultValue properties in the referenced groupSettingTemplates object.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
