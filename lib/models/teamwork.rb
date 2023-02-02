require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class Teamwork < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The workforceIntegrations property
        @workforce_integrations
        ## 
        ## Instantiates a new Teamwork and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Teamwork.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "workforceIntegrations" => lambda {|n| @workforce_integrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkforceIntegration.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("workforceIntegrations", @workforce_integrations)
        end
        ## 
        ## Gets the workforceIntegrations property value. The workforceIntegrations property
        ## @return a workforce_integration
        ## 
        def workforce_integrations
            return @workforce_integrations
        end
        ## 
        ## Sets the workforceIntegrations property value. The workforceIntegrations property
        ## @param value Value to set for the workforce_integrations property.
        ## @return a void
        ## 
        def workforce_integrations=(value)
            @workforce_integrations = value
        end
    end
end
