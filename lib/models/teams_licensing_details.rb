require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamsLicensingDetails < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the user has a valid license to use Microsoft Teams.
            @has_teams_license
            ## 
            ## Instantiates a new TeamsLicensingDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_licensing_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsLicensingDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "hasTeamsLicense" => lambda {|n| @has_teams_license = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the hasTeamsLicense property value. Indicates whether the user has a valid license to use Microsoft Teams.
            ## @return a boolean
            ## 
            def has_teams_license
                return @has_teams_license
            end
            ## 
            ## Sets the hasTeamsLicense property value. Indicates whether the user has a valid license to use Microsoft Teams.
            ## @param value Value to set for the hasTeamsLicense property.
            ## @return a void
            ## 
            def has_teams_license=(value)
                @has_teams_license = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("hasTeamsLicense", @has_teams_license)
            end
        end
    end
end
