require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class IosVppEBookAssignment < MicrosoftGraph::Models::ManagedEBookAssignment
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        ## Instantiates a new IosVppEBookAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_vpp_e_book_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosVppEBookAssignment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
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
        end
    end
end
