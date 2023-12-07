require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PronounsSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isEnabledInOrganization property
            @is_enabled_in_organization
            ## 
            ## Instantiates a new pronounsSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a pronouns_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PronounsSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isEnabledInOrganization" => lambda {|n| @is_enabled_in_organization = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isEnabledInOrganization property value. The isEnabledInOrganization property
            ## @return a boolean
            ## 
            def is_enabled_in_organization
                return @is_enabled_in_organization
            end
            ## 
            ## Sets the isEnabledInOrganization property value. The isEnabledInOrganization property
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
                writer.write_boolean_value("isEnabledInOrganization", @is_enabled_in_organization)
            end
        end
    end
end
