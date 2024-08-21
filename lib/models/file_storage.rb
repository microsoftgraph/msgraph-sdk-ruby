require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FileStorage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The containers property
            @containers
            ## 
            ## Instantiates a new FileStorage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the containers property value. The containers property
            ## @return a file_storage_container
            ## 
            def containers
                return @containers
            end
            ## 
            ## Sets the containers property value. The containers property
            ## @param value Value to set for the containers property.
            ## @return a void
            ## 
            def containers=(value)
                @containers = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a file_storage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileStorage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "containers" => lambda {|n| @containers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::FileStorageContainer.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("containers", @containers)
            end
        end
    end
end
