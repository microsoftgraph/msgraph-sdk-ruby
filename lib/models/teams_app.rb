require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsApp < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The details for each version of the app.
            @app_definitions
            ## 
            # The name of the catalog app provided by the app developer in the Microsoft Teams zip app package.
            @display_name
            ## 
            # The method of distribution for the app. Read-only.
            @distribution_method
            ## 
            # The ID of the catalog provided by the app developer in the Microsoft Teams zip app package.
            @external_id
            ## 
            ## Gets the appDefinitions property value. The details for each version of the app.
            ## @return a teams_app_definition
            ## 
            def app_definitions
                return @app_definitions
            end
            ## 
            ## Sets the appDefinitions property value. The details for each version of the app.
            ## @param value Value to set for the app_definitions property.
            ## @return a void
            ## 
            def app_definitions=(value)
                @app_definitions = value
            end
            ## 
            ## Instantiates a new teamsApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teams_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsApp.new
            end
            ## 
            ## Gets the displayName property value. The name of the catalog app provided by the app developer in the Microsoft Teams zip app package.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the catalog app provided by the app developer in the Microsoft Teams zip app package.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the distributionMethod property value. The method of distribution for the app. Read-only.
            ## @return a teams_app_distribution_method
            ## 
            def distribution_method
                return @distribution_method
            end
            ## 
            ## Sets the distributionMethod property value. The method of distribution for the app. Read-only.
            ## @param value Value to set for the distribution_method property.
            ## @return a void
            ## 
            def distribution_method=(value)
                @distribution_method = value
            end
            ## 
            ## Gets the externalId property value. The ID of the catalog provided by the app developer in the Microsoft Teams zip app package.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The ID of the catalog provided by the app developer in the Microsoft Teams zip app package.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDefinitions" => lambda {|n| @app_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsAppDefinition.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "distributionMethod" => lambda {|n| @distribution_method = n.get_enum_value(MicrosoftGraph::Models::TeamsAppDistributionMethod) },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
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
                writer.write_collection_of_object_values("appDefinitions", @app_definitions)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("distributionMethod", @distribution_method)
                writer.write_string_value("externalId", @external_id)
            end
        end
    end
end
