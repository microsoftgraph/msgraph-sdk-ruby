require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InsightsSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. The default value is null. Optional.
            @disabled_for_group
            ## 
            # true if insights of the specified type are enabled for the organization; false if insights of the specified type are disabled for all users without exceptions. The default value is true. Optional.
            @is_enabled_in_organization
            ## 
            ## Instantiates a new InsightsSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a insights_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InsightsSettings.new
            end
            ## 
            ## Gets the disabledForGroup property value. The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. The default value is null. Optional.
            ## @return a string
            ## 
            def disabled_for_group
                return @disabled_for_group
            end
            ## 
            ## Sets the disabledForGroup property value. The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. The default value is null. Optional.
            ## @param value Value to set for the disabledForGroup property.
            ## @return a void
            ## 
            def disabled_for_group=(value)
                @disabled_for_group = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "disabledForGroup" => lambda {|n| @disabled_for_group = n.get_string_value() },
                    "isEnabledInOrganization" => lambda {|n| @is_enabled_in_organization = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isEnabledInOrganization property value. true if insights of the specified type are enabled for the organization; false if insights of the specified type are disabled for all users without exceptions. The default value is true. Optional.
            ## @return a boolean
            ## 
            def is_enabled_in_organization
                return @is_enabled_in_organization
            end
            ## 
            ## Sets the isEnabledInOrganization property value. true if insights of the specified type are enabled for the organization; false if insights of the specified type are disabled for all users without exceptions. The default value is true. Optional.
            ## @param value Value to set for the isEnabledInOrganization property.
            ## @return a void
            ## 
            def is_enabled_in_organization=(value)
                @is_enabled_in_organization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("disabledForGroup", @disabled_for_group)
                writer.write_boolean_value("isEnabledInOrganization", @is_enabled_in_organization)
            end
        end
    end
end
